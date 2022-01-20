<?php

namespace App\Source;
use App\Source\Exceptions\ExConnToDb;

class Parser{

    private static function toDatabase($data){ // Внесение данных в базу
        //mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);

        $mysqli = new \mysqli(Constants::DB_HOST,
            Constants::DB_USER, Constants::DB_PASSWD, Constants::DB_NAME);
        if(!$mysqli->connect_errno) {
            for ($i = 0; $i < count($data['number']); $i++) {
                $query = "INSERT INTO `procedures` (`number`, `ooc`, `link`, `email`) VALUES (" . (int)$data['number'][$i] . ", " . (int)$data['OOC'][$i] . ", '" . $data['link'][$i] . "', '" . $data['info']['emails'][$data['number'][$i]] . "')";
                $mysqli->query($query);
                foreach ($data['info'][$data['number'][$i]] as $doc) {
                    $query = "INSERT INTO `documents` (`pr_num`, `doc_name`, `doc_link`) VALUES (" . (int)$data['number'][$i] . ", '".$doc[0]."', '".$doc[1]."')";
                    $mysqli->query($query);
                }
            }
        }
        else{
            throw new ExConnToDb('Не удалось подключиться к базе данных');
        }
    }

    public static function sendRequest($url) : array // Получение данных с сайта
    {
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
        try {
            self::toDatabase($result);
            echo "<div class='container'> Данные записаны в бд </div>";
        }catch(ExConnToDb $e){
            $mess = $e->getMessage();
            echo $mess;
        }
        return $result ?? [];
    }

    private static function getPageInfo($number) : array // Получение данных о процедуре
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

}
