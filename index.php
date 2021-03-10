<?php

/*
 * 1. Получить сумму всех вторых элементов массива произвольного размера и вложенности.
 */

$array0 = [
    14,
    "9" => [
        "false",
        "true",
        [
            201,
            "202" => 202,
        ]
    ],
    400,
    [
        501,
        "502",
    ]
];

function getSumOf2nds($input)
{
    $index = 0;
    $sum = 0;

    foreach ($input as $value) {
        if (is_array($value)) {
            $sum += getSumOf2nds($value);
        } elseif ($index === 1) {
            $sum += intval($value);
        }
        $index++;
    }

    return $sum;
}

echo "Сумма вторых элементов: ";
echo getSumOf2nds($array0); // 704

/*
 * 2. Определить количество символов входящих в произвольную строку,
 * т.е у строки 'afrae' a=2, e=1, f=1, r=1
 * */

function getCharCounters($input)
{
    $output = [];

    if (mb_strlen($input) < strlen($input)) {
        $chars = mb_str_split($input);
    } else {
        $chars = str_split($input);
    }

    foreach ($chars as $key => $char) {
        $output[$char]++;
    }

    return $output;
}

echo PHP_EOL;
print_r(getCharCounters("afrae"));
echo PHP_EOL;
print_r(getCharCounters("юfraю"));