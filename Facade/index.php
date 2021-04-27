<pre>
<?php

require_once "Facade.php";
use Facade\Facade;

$facade = new Facade();

echo $facade->md5("hillel"), PHP_EOL;
echo $facade->get("md5", "hillel"), PHP_EOL;
echo $facade->arrayget(["md5", "hillel"]), PHP_EOL;

echo $facade->sha1("hillel"), PHP_EOL;

echo $facade->get("sha256", "hillel"), PHP_EOL;
echo $facade->arrayget(["sha256", "hillel"]), PHP_EOL;

echo $facade->get("myalgo", "hillel"), PHP_EOL;

?>
</pre>