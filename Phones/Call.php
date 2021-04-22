<?php

namespace Phones;

class Call
{
    public string $caller = "";
    public string $receiver = "";
    public int $startTime = 0;
    public int $duration = 0;

    public function __construct(string $from, string $to)
    {
        $this->caller = $from;
        $this->receiver = $to;
    }

    public function start()
    {
        $this->startTime = strtotime("now");
    }

    public function stop()
    {
        $this->duration = ($this->startTime === 0) ? 0 : strtotime("now") - $this->startTime;
        $this->startTime = 0;
    }

    public function info()
    {
        return "Call [" . $this->caller . "] --> [" . $this->receiver . "]";
    }
}