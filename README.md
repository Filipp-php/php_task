Тестовое задание

-Для запуска скрипта необходимо запустить сервер командой make docker-start;

-Далее открыть localhost:8080, зайти в phpMyAdmin(cервер: mysql, пользователь: dev, пароль: dev) 
 и выполнить импорт файла test.sql(в папке Database) в базу test;
 
-Зайти на localhost:8000;

-Выход с сервера: make docker-stop.

Окружение для работы взято с https://github.com/nanoninja/docker-nginx-php-mysql
