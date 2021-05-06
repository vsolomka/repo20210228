<?php

namespace Adapters;

class DataAdapter
{
    public const XML_ROOT_NODE = '<root/>';
    private const PRIMITIVE_TYPES = ['string', 'number', 'boolean', 'null'];

    public static function jsonAsXML($json)
    {
        $xml = new \SimpleXMLElement(self::XML_ROOT_NODE);
        self::insertNodeXML($xml, 0, json_decode($json));
        return $xml->asXML();
    }

    private static function insertNodeXML(&$parent, $key, $element)
    {
        if (in_array(gettype($element), self::PRIMITIVE_TYPES)) {
            $parent->addChild(self::xmlNodeName($key), $element);
        }

        if (is_array($element)) {
            foreach ($element as $value) {
                self::insertNodeXML($parent, self::xmlNodeName($key), $value);
            }
        }

        if (is_object($element)) {
            if (!is_numeric($key)) {
                $xml = $parent->addChild(self::xmlNodeName($key), null);
            } else {
                $xml = $parent;
            }
            foreach (get_object_vars($element) as $property_key => $property_value) {
                self::insertNodeXML($xml, self::xmlNodeName($property_key), $property_value);
            }
        }
    }

    private static function xmlNodeName($key)
    {
        return preg_replace('/[\W]+/', '_', $key);
    }
}
