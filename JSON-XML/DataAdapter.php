<?php

namespace Adapters;

class DataAdapter
{
    public const XML_ROOT_NODE = 'root';
    public const XML_DEFAULT_NODE_NAME = 'node';

    public static function jsonAsXML($json)
    {
        $xml = new \SimpleXMLElement('<' . self::XML_ROOT_NODE . '/>');
        self::insertNodeXML($xml, 0, json_decode($json));
        return $xml->asXML();
    }

    private static function insertNodeXML(&$parent, $key, $element)
    {
        if (in_array(gettype($element), ["array", "object"])) {
            $node = $parent->addChild(self::xmlNodeName($key), "");
            if (gettype($element) === "object") {
                $properties = get_object_vars($element);
                foreach ($properties as $key => $value) {
                    if (!in_array(gettype($value), ["array", "object"])) {
                        $node->addAttribute($key, $value);
                    } else {
                        self::insertNodeXML($node, $key, $value);
                    }
                }
            } elseif (gettype($element) === "array") {
                foreach ($element as $key => $value) {
                    self::insertNodeXML($node, $key, $value);
                }
            }
        } else {
            $parent->addChild(self::xmlNodeName($key), $element);
        }
    }

    private static function xmlNodeName($key)
    {
        return (gettype($key) === 'integer') ? self::XML_DEFAULT_NODE_NAME : $key;
    }
}
