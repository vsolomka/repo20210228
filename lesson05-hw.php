<?php

# 1. Создать абстрактный класс "животные"
abstract class Animal
{
    abstract function getNutritionType():string;
}

# 2. Создать абстрактный класс "Транспортные средства"
abstract class Vehicle
{
    abstract function getMode();
}

# 3. Создать наследников от животных - хищники, травоядные
# 4. Создать наследников от транспортных средств - лодки, легковые авто, грузовики
# 5. Создать реализации для всех наследников первого уровня

class Predator extends Animal
{
    function getNutritionType(): string
    {
        return "Predator";
    }
}

class Herbivorous extends Animal
{
    function getNutritionType(): string
    {
        return "Herbivorous";
    }
}

class Boat extends Vehicle
{
    function getMode()
    {
        return "sailing";
    }
}

class Car extends Vehicle
{
    function getMode()
    {
        return "driving";
    }
}

class Lorry extends Vehicle
{
    function getMode()
    {
        return "carrying loads";
    }
}

$animal1 = new Predator();
$animal2 = new Herbivorous();
echo hString::writeln_html("I am " . $animal1->getNutritionType());
echo hString::writeln_html("I am " . $animal2->getNutritionType());

$vehicles = [
    new Boat(),
    new Car(),
    new Lorry(),
    new Car(),
];

foreach ($vehicles as $vehicle) {
    echo hString::writeln_html(get_class($vehicle) . " is " . $vehicle->getMode());
}

# 6. Создать хелпер работающий с массивами
class hArray {
    static function print_prepare(array $arr):array
    {
        $output = [];
        foreach ($arr as $value) {
            switch (gettype($value)) {
                case "integer":case "double":
                    $cell = $value;
                    break;
                case "boolean":
                    $cell = $value? "true": "false";
                    break;
                case "string":
                    $cell = '"' . $value . '"';
                    break;
                default:
                    if (is_callable($value)) {
                        $cell = "[callable]";
                    } else {
                        $cell = "[" . gettype($value) . "]";
                    }
            }
            $output[] = $cell;
        }
        return $output;
    }

    static function print_row(array $arr):string
    {
        $output = "[" . implode(", ", self::print_prepare($arr)) . "]";
        return $output;
    }

    static function print_col(array $arr):string
    {
        $output = "[" . PHP_EOL . "    "
            . implode(
                "," . PHP_EOL . "    ",
                self::print_prepare($arr)
            )
            . PHP_EOL . "]";
        return $output;
    }

}

$test_array = [
    17,
    "Line",
    new Car(),
    function($x) {
        return $x * 5;
    },
    17.4567,
    false,
    [101, 102, 103],
];

echo hArray::print_row($test_array) . PHP_EOL;
echo "<pre>";
echo hArray::print_col($test_array) . PHP_EOL;
echo "</pre>";

# 7. Создать хелпер работающий со строками
#

class hString {
    static function writeln_html(string $str):string
    {
        return $str . "<br/>" . PHP_EOL;
    }
}





