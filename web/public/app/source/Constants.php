<?php

namespace App\Source;
/*
 * Класс Constants
 *
 * Данный класс содержит основные константы для работы,
 * в частности содержит константы для подкючения к базе данных
 *
 */
class Constants
{
    public const DB_HOST = 'mysql';
    public const DB_USER = 'dev';
    public const DB_PASSWD = 'dev';
    public const DB_NAME = 'test';
    public const DB_DSN = 'mysql:dbname=' . self::DB_NAME . ';host=' . self::DB_HOST;
}