<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</head>

<body>
<br>
<?php

$documentRoot = $_SERVER['DOCUMENT_ROOT'];
require_once $documentRoot . '/app/vendor/autoload.php';

use App\Source\Constants;
use App\Source\Parser;


$url = "https://etp.eltox.ru/registry/procedure?id=&procedure=&oos_id=&company=&inn=&type=1&price_from=&price_to=&published_from=&published_to=&offer_from=&offer_to=&status=";
$data = Parser::sendRequest($url);
echo "<br>";
?>
    <div class="container">

        <?php
        for ($i = 0; $i < count($data['number']); $i++) {
            ?>
        <div class ="row">
            <div class="card w-75 col-md-3">
                  <div class="card-body">
                      <h5 class="card-title">№ <?php echo $data['number'][$i]; ?></h5>
                      <p class="card-text">№ OOC <?php echo $data['OOC'][$i]; ?></p>
                      <p class="card-text">
                          Ссылка: <a href = '<?php echo $data['link'][$i]; ?>'> <?php echo $data['link'][$i]; ?> </a>
                      </p>
                      <p class="card-text">Email: <?php echo $data['info']['emails'][$data['number'][$i]]; ?></p>
                      <ul class="list-group"> Документы:
                      <?php
                      foreach ($data['info'][$data['number'][$i]] as $doc) {
                          ?>
                          <li class="list-group-item">
                              <p>
                                  <?php echo $doc[0]." - "; ?>
                                  <a href = '<?php echo $doc[1]; ?>'> <?php echo $doc[0]." - ".$doc[1]; ?> </a>
                              </p>
                          </li>
                          <?php
                        }
                      ?>
                      </ul>
                  </div>
            </div>
        </div>
            <br>
        <?php } ?>

    </div>
</body>
</html>