<?php

namespace Facade;

class Facade
{
    private string $api_url = "";

    public function __construct($api_url = "http://facade/api/")
    {
        $this->api_url = $api_url;
    }

    private function apiRequest($algo, $data)
    {
        $url = $this->api_url . "?algo=" . $algo . "&data=" . $data;
        $response = file_get_contents($url) ?? [];
        return json_decode($response);
    }

    public function md5($data): string
    {
        return $this->apiRequest("md5", $data)->result;
    }

    public function sha1($data): string
    {
        return $this->apiRequest("sha1", $data)->result;
    }

    public function get($algo, $data)
    {
        return $this->apiRequest($algo, $data)->result;
    }

    public function arrayGet(array $params)
    {
        [$algo, $data] = [...$params];
        return $this->apiRequest($algo, $data)->result;
    }
}
