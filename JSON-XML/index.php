<?php

/*
 * Homework 11.
 * Разработать адаптер по модификации данных из JSON в XML
 */

header("Content-type: text/xml");
require_once "DataAdapter.php";
use Adapters\DataAdapter;

echo DataAdapter::JSONasXML(file_get_contents('composer.json'));
file_put_contents('composer.xml', DataAdapter::JSONasXML(file_get_contents('composer.json')));
