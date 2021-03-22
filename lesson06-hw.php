<?php

/*
 * Lesson 6: Traits and Interfaces
 * Home Task

Создать интерфейсы и реализации к ним

    тип кузова
    колесная формула
    тип двигателя
    тип коробки передач

(можно использовать код предыдущего урока)

Создать трейт производящий расчет мощности в зависимости от объема двигателя и типа двигателя

 */

interface IBody
{
    public function getBody(): string;
}

interface IAxleConfiguration
{
    public function getAxleConfiguration(): string;
}

interface IEngine
{
    public function getEngineType(): string;
    public function getEngineVolume(): string;
}

interface ITransmission
{
    public function getTransmission(): string;
}

trait TPower
{
    function calcPowerOutput()
    {
        $koefficients = [
            "piston" => 1,
            "wankel" => 1.5,
            "v8" => 3,
        ];

        return ($koefficients[$this->getEngineType()] ?? 1) * $this->getEngineVolume();
    }
}

class Vehicle implements IBody, IAxleConfiguration, IEngine, ITransmission
{
    use TPower;

    protected string $body = "car";
    protected string $axle = "4x4";
    protected string $engineType = "v8";
    protected int $engineVolume = 1;
    protected string $transmission = "manual";

    public function getBody():string
    {
        return $this->body;
    }
    public function getAxleConfiguration(): string
    {
        return $this->axle;
    }

    public function getEngineType(): string
    {
        return $this->engineType;
    }

    public function getEngineVolume(): string
    {
        return $this->engineVolume;
    }

    public function getTransmission(): string
    {
        return $this->transmission;
    }
}

class Car extends Vehicle
{
    protected string $body = "car";
    protected string $axle = "4x4";
    protected string $engineType = "v8";
    protected int $engineVolume = 2200;
    protected string $transmission = "automatic";
}

class Truck extends Vehicle
{
    protected string $body = "truck";
    protected string $axle = "4x4";
    protected string $engineType = "wankel";
    protected int $engineVolume = 15000;
    protected string $transmission = "manual";
}

$niva = new Car();
$maz = new Truck();

foreach ([$niva, $maz] as $vehicle) {
    echo "<p>" . PHP_EOL;
    echo "Body type: " . $vehicle->getBody() . "<br/>" . PHP_EOL;
    echo "Engine type: " . $vehicle->getEngineType() . "<br/>" . PHP_EOL;
    echo "Engine Volume: " . $vehicle->getEngineVolume() . "<br/>" . PHP_EOL;
    echo "Power output: " . $vehicle->calcPowerOutput() . "<br/>" . PHP_EOL;
    echo "</p>" . PHP_EOL;
}