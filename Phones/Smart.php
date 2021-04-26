<?php

namespace Phones;

class Smart extends Phone
{
    public function takePhoto()
    {
        echo "Making photo 3000x2000...", PHP_EOL;
    }

    public function viewWebPage(string $url)
    {
        echo "Loading web-page [$url]...", PHP_EOL;
    }
}
