<?php

namespace Phones;

require_once "Call.php";
use Phones\Call;

class Phone
{
    public string $number = "";

    public function __construct(string $number)
    {
        $this->number = $number;
    }

    public function makeCall(string $receiver): Call
    {
        return new Call($this->number, $receiver);
    }

    public function receiveCall(string $caller): Call
    {
        return new Call($caller, $this->number);
    }
}
