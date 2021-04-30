<?php

/*
 * Homework 11.
 * Разработать адаптер по модификации данных из JSON в XML
 */

$json1 = '{
    "prop1": 11,
    "prop2": "vovan",
    "prop3": [
        12,
        13,
        17
    ],
    "prop4": [
        "variable 1",
        "variable 4",
        {
            "var1": "variable 2",
            "var2": "variable 2"
        },
        "variable 3"
    ]
}';

$json2 = '
[
        "variable 1",
        "variable 4",
        {
            "var1": "variable 2",
            "var2": "variable 2"
        },
        "variable 3"
    ]
';

header("Content-type: text/xml");
require_once "DataAdapter.php";
use Adapters\DataAdapter;

echo DataAdapter::jsonAsXML($json1);
//echo DataAdapter::JSONasXML($json2);
