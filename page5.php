<?php
header('Content-type:text/html;charset=utf8');
// class HttpRequest{    
//     private static $isShow = false;    
//     // public function __set($attr, $value){        
//     //     $this->$attr = $value;    
//     // }    
//     public static function send($url,$data=null){        
//         $curl = curl_init();            
//         // 设置请求的url地址        
//         curl_setopt($curl, CURLOPT_URL, $url);        
//         // 直接跳过安全证书的验证        
//         curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);        
//         curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);        
//         // 根据$data判断是post还是get方式                    
//         if (!empty($data)) {            
//             // 如果$data非空，则为post方式            
//             curl_setopt($curl, CURLOPT_POST, true);            
//             curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
//       }        
//         // 反之为get方式        
//         if (!self::$isShow) {            
//             // 不直接显示数据，而是以返回值的形式            
//             curl_setopt($curl, CURLOPT_RETURNTRANSFER, 0);        
//         }        
//         $res = curl_exec($curl);        
//         return $res;        
//         curl_close($curl);    
//     }
// }
// // 调用封装的类，请求知乎php话题下的数据
// $res = HttpRequest::send('http://www.acourse.net/course?c=3&t=3&f=2&ps=-1&pb=-1&o=time-desc');
// // 根据样式设置正则匹配模式，筛选所需数据
// $reg = '/<a[^>]*><span[^>]*>(.+?)<\/span><\/a>/';
// preg_match_all($reg, $res, $match);
// var_dump($match);


// function tttt($var){
//     return $var;
// }

// $a1=array("a","b",2,3,4);
// print_r(array_filter($a1,"tttt"));
echo strrev(md5('haoruiadmin123456'));

?>