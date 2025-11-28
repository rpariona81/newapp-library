<?php
require 'vendor/autoload.php';
/*use Dotenv\Dotenv;
$dotenv = Dotenv::create(__DIR__);
$dotenv->load();
//https://github.com/craftcms/craft/blob/v3/bootstrap.php
// Load dotenv?*/
if (class_exists(Dotenv\Dotenv::class)) {
    // By default, this will allow .env file values to override environment variables
    // with matching names. Use `createUnsafeImmutable` to disable this.
    Dotenv\Dotenv::createUnsafeMutable(__DIR__)->safeLoad();
}else{
    //https://github.com/agungjk/phpdotenv-for-codeigniter
    $dotenv = new Dotenv\Dotenv(__DIR__);
	$dotenv->load();
}
