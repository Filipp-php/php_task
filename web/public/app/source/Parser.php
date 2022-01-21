<?php
namespace App\Source;
use App\Source\Exceptions\ExInDb;
/*
 * Класс Parser
 *
 * Данный класс парсит данные со страницы https://etp.eltox.ru/registry/procedure
 * с фильтром: Тип процедуры – Запрос цен (котировок), а также парсит детальную информацию
 * о процедуре и записывает необходимую информацию в бд
 *
 */
class Parser{
    /*
     * Функция, которая парсит страницу сайта с нужным фильтром
     *
     * Данная функция получает данные с сайта о процедурах и с помощью
     * регулярных выражений извлекает нужную информацию
     *
     * @return array $result
     */
    public static function sendRequest() : array
    {
        $url = "https://etp.eltox.ru/registry/procedure?id=&procedure=&oos_id=&company=&inn=&type=1&price_from=&price_to=&published_from=&published_to=&offer_from=&offer_to=&status=";
        $content = file_get_contents($url);
        preg_match_all('/<a href="\/procedure\/read\/(\d+)">/s', $content, $result['number']);
        preg_match_all('/№ ООС: (\d+)<\/span>/s', $content, $result['OOC']);
        $result['number'] = $result['number'][1];
        $result['link'] = [];
        foreach ($result['number'] as $num) {
            $result['link'][] = "https://etp.eltox.ru/procedure/read/".$num;
        }
        $result['OOC'] = $result['OOC'][1];
        $result['info'] = self::getPageInfo($result['number']);
        if(isset($result)) {
            try {
                self::toDatabase($result);
                echo "<div class='container'> Данные записаны в бд </div>";
            } catch (ExInDb $e) {
                $mess = $e->getMessage();
                echo $mess;
                return [];
            }
        }
        else echo "<div class='container'> Массив с данными оказался пустым </div>";
        return $result ?? [];
    }

    /*
     * Функция, которая парсит страницу процедуры
     *
     * Данная функция получает данные о процедуре и с помощью
     * регулярных выражений излекает email и документацию
     * к процедуре
     *
     * @return array $information
     */
    private static function getPageInfo($number) : array
    {
        foreach ($number as $item) {
            $content = file_get_contents("https://etp.eltox.ru/procedure/read/" . $item);
            preg_match_all('/list\(\[(.*?)\]\)/s', $content, $information[$item]);
            preg_match_all('/<th>Почта<\/th>(.*?)<td>(.*?)<\/td>/s', $content, $information['emails'][$item]);
            $information['emails'][$item] = $information['emails'][$item][2][0];
            $docs = (array)json_decode("[".$information[$item][1][0]."]");
            $information[$item] = [];
            foreach ($docs as $doc) {
                $doc = (array)$doc;
                $information[$item][] = [$doc['name'], "https://storage.eltox.ru/".$doc['path']."/".$doc['name']];
            }
        }
        return $information ?? [];
    }

    /*
     * Функция для записи информации в бд
     *
     * @param array $data
     */
    private static function toDatabase($data){
        //mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
        $mysqli = new \mysqli(Constants::DB_HOST,
            Constants::DB_USER, Constants::DB_PASSWD, Constants::DB_NAME);
        if(!$mysqli->connect_errno) {
            for ($i = 0; $i < count($data['number']); $i++) {
                $query = "INSERT INTO `procedures` (`number`, `ooc`, `link`, `email`) 
                          VALUES (" . (int)$data['number'][$i] . ", " . (int)$data['OOC'][$i] . ", '" . $data['link'][$i] . "', '" . $data['info']['emails'][$data['number'][$i]] . "')
                          ON DUPLICATE KEY UPDATE number = number";
                $errno = $mysqli->query($query);
                if(!$errno) throw new ExInDb('При попытке добавления данных в таблицу procedures произошла ошибка. <br> Детали: '. $mysqli->error);
                foreach ($data['info'][$data['number'][$i]] as $doc) {
                    $query = "INSERT INTO `documents` (`pr_num`, `doc_name`, `doc_link`) VALUES (" . (int)$data['number'][$i] . ", '" . $doc[0] . "', '" . $doc[1] . "') ON DUPLICATE KEY UPDATE pr_num = pr_num";
                    $errno = $mysqli->query($query);
                    if(!$errno) throw new ExInDb('При попытке добавления данных в таблицу documents произошла ошибка. <br> Детали: '. $mysqli->error);
                }
            }
        }
        else{
            throw new ExInDb('Не удалось подключиться к базе данных');
        }
    }
}
