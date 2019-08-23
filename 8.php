<?php
$str = 'insert into study_save_errors(sort,title,content) values';
$str1 = '';
for($i = 3000;$i <= 3012;$i++){
    $str1 .= "(".$i.",".$i.",'&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),";
}
echo $str.$str1;

?>

