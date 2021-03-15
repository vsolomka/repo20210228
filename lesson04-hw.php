<?php

/*
 * 1) создать функцию - фабрику вызова функций пользователя через безымянную функцию
 */

function fabricPower(float $power):callable
{
    return function ($base) use ($power):float {
        return pow($base, $power);
    };
}

$square = fabricPower(2);
$cube = fabricPower(3);

echo $square(4); // 16
echo $cube(10.2); // 1061.208

/*
 * 2) создать функцию обеспечивающую запись в csv файл
 */

function writeFileCSV($filename, array $data)
{
    $file = fopen($filename, "w");
    foreach ($data as $line) {
        fputcsv($file, is_array($line)? $line: [$line]);
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

function readFileCSV($filename):array
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