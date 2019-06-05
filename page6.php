<?php
header('Content-type:text/html;charset=utf8');
// phpinfo();
$a = array(1,2,3,4);
$b = implode(',',$a);
echo $b;
?>