<?php

/*

Создать 4 класса реализующий паттерн поведение.
При использовании фрейма ларавел можно реализовать репозитории для 4-х подобных моделей
у которых один общий родитель в котором находится общая реализация бизнеслогики
а в каждом репозитории переменная часть поведения. Код реализовать используя знания в области написания чистого кода.

Задание можно реализовать и в нативном коде

*/

require_once "Phone.php";
require_once "Landline.php";
require_once "Mobile.php";
require_once "Smart.php";
use Phones\Phone;
use Phones\Landline;
use Phones\Mobile;
use Phones\Smart;

$phones = [
    new Phone("0001"),
    new Landline("0002"),
    new Mobile("0003"),
    new Smart("0004"),
];


foreach ($phones as $phone) {
    // Making a call - base function
    $call = $phone->makeCall("001" . rand(1, 9));
    echo PHP_EOL, "Making a call via [" . get_class($phone) . "].", PHP_EOL;
    echo $call->info(), PHP_EOL;
    $call->start();
    sleep(rand(1, 5));
    $call->stop();
    echo "The call was finished. ";
    echo "Duration: " . $call->duration . " seconds.", PHP_EOL;

    if (method_exists($phone, "takePhoto")) {
        $phone->takePhoto();
    }

    if (method_exists($phone, "viewWebPage")) {
        $phone->viewWebPage("http://somesite.org");
    }
}
