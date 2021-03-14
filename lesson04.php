<?php

$f4 = function($i = 10, $j) {
    echo $i, $j;
};

//$f4(5, 7);

$a = 12;

$f5 = function(...$p) use ($a) {
    foreach ($p as $v) {
        echo "[" . $v . "]";
    }
    echo $a;
};

$a = 13;
//$f5(1, 7, 14);

function testStatic($b) {
    static $var = 0;
    $var++;
    echo $var + $b, ",";
}

testStatic(4);
testStatic(4);
testStatic(4);
