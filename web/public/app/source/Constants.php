<?php

namespace App\Source;

class Constants
{
    public const DB_HOST = 'mysql';
    public const DB_USER = 'dev';
    public const DB_PASSWD = 'dev';
    public const DB_NAME = 'test';
    public const DB_DSN = 'mysql:dbname=' . self::DB_NAME . ';host=' . self::DB_HOST;

}