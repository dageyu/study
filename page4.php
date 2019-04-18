<?php
header('Content-type:text/html;charset=utf8');
$serialized_object='O:1:"a":1:{s:5:"value";s:3:"100";}';

ini_set('unserialize_callback_func','mycallback');

function mycallback($classname) {
    echo 1;
}

function func2() 
{
    echo 2;
}

spl_autoload_register('func2');
unserialize($serialized_object);

?>