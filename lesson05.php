<pre>
<?php

abstract class A
{
    abstract function f1(int $i);
    static protected $st1 = 19;
    function f2()
    {
        echo "Non abstract" . PHP_EOL;
    }
}

class B extends A
{
    function f1(int $i)
    {
        echo $i ** 4, PHP_EOL;
        self::$st1 = 18;
    }
    function showSt()
    {
        echo self::$st1;
        echo static::$st1;
    }
}

class C extends A
{
    function f1(int $j)
    {
        echo "[$j]", PHP_EOL;
        //self::$st1 = 20;
    }
}

class D
{
    function test(A $obj)
    {
        return $obj->f1(6);
    }
}

$b = new B();
$b->f1(5);

$c = new C();
$c->f1(5);
$c->f2();

//unset($c);
//echo B::$st1;
//$b->showSt();

$d = new D();
$d->test($b);
$d->test($c);

?>
</pre>
