<?php

$algo = $_GET["algo"];
$data = $_GET["data"];

switch ($algo) {
    case "md5":
        $result = md5($data);
        break;
    case "sha256":
        $result = hash("sha256", $data);
        break;
    case "sha1":
        $result = sha1($data);
        break;
    default:
        $result = "";
}

echo json_encode([
    "result" => $result,
]);
