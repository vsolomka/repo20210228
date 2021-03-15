<?php

/*
 * 1) создать функцию - фабрику вызова функций пользователя через безымянную функцию
 */

function myFactory(callable $func):callable
{
    return function (...$arg) use ($func) {
        $func(...$arg);
    };
}

$my_dump = myFactory("var_dump");
$my_dump((string) 4); // string(1) "4"

/*
 * 2) создать функцию обеспечивающую запись в csv файл
 */

function writeFileCSV($filename, array $data)
{
    $file = fopen($filename, "w");
    foreach ($data as $line) {
        fputcsv($file, is_array($line) ? $line : [$line]);
    }
    fclose($file);
}

$data = [
    7,
    44,
    [
        true,
        "te,xt",
        17.5,
        [
            101,
            102
        ]
    ]
];
writeFileCSV("test.txt", $data);

/*
 * 3) создать функцию обеспечивающую чтение из csv файла
 */

function readFileCSV($filename): array
{
    return array_map(
        function ($line) {
            return str_getcsv($line);
        },
        file($filename)
    );
}

$arr = readFileCSV("test.txt");
print_r($arr);
