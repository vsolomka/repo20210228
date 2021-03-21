<?php

echo "[ Lesson 6 ]" . "<br/>";

interface Animal
{
    public function getType():string;
    public function getColor():string;
    public function getNutrition():string;
}

interface Area
{
    public function getArea():string;
}

class Crocodile implements Animal, Area
{
    protected $type = "predator";
    protected $color = "grey";
    protected $nutrition = "meat";
    protected $area = "Africa";

    public function getType():string
    {
        return $this->type;
    }

    public function getColor():string
    {
        return $this->color;
    }

    public function getNutrition():string
    {
        return $this->nutrition;
    }

    public function getArea():string
    {
        return $this->area;
    }
}

class Deer implements Animal, Area
{
    protected $type = "herbivorous";
    protected $color = "white";
    protected $nutrition = "grass";
    protected $area = "Asia";

    public function getType():string
    {
        return $this->type;
    }

    public function getColor():string
    {
        return $this->color;
    }

    public function getNutrition():string
    {
        return $this->nutrition;
    }

    public function getArea():string
    {
        return $this->area;
    }

}

$animal1 = new Crocodile();
$animal2 = new Deer();

echo $animal1->getType() . " lives in " . $animal1->getArea() . "<br/>";
echo $animal2->getType() . " lives in " . $animal2->getArea() . "<br/>";

trait Test
{
    public function sum(int $a, int $b):int
    {
        return $a + $b;
    }

    public function percent(int $a, int $b):int
    {
        return round($a / $b) * 100;
    }
}

class Math
{
    use Test;

    public function __get($name)
    {
        return $this->data[$name];
    } 

    public function __call($name, $arguments)
    {
        var_export([$name, $arguments]);
    }
}

$math = new Math();
echo $math->sum(1, 3) . "<br/>";

$math->test = 10;
var_export($math->test);
// $math->test(17);