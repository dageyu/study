<?php
$a = '11112222';
echo str_replace('2','1',$a);
echo '<br/>';
echo str_replace(array('m','i'),'n',"my name is jim!");
echo '<br/>';
echo @str_replace('m',array('n','z'),"my name is jim!n");
echo '<br/>';
echo @str_replace(array('m'),array('n','z'),"my name is jim!n");
echo '<br/>';
$arr = array("blue","red","green","yellow");
print_r(str_replace("red","pink",$arr));
echo '<br/>';
print_r(str_replace(array("red"),"pink",$arr));
echo '<br/>';
print_r(@str_replace("red",array("pink"),$arr));
echo '<br/>';
print_r(str_replace(array("red"),array("pink"),$arr));
?>