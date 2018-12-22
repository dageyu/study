<?php

/**
 * 发送邮件：找回密码
 */
function sendEmail($content, $toemail, $subject){
    $mail = new \phpmailer\PHPMailer();
    $mail->isSMTP();
    $mail->CharSet = "utf8";
    $mail->Host = "smtp.163.com";
    $mail->SMTPAuth = true;
    $mail->Username = "cuiyu1478@163.com";
    $mail->Password = "dageyu116";
    $mail->SMTPSecure = "ssl";
    $mail->Port = 465;
    $mail->setFrom("cuiyu1478@163.com","dageyu");
    $mail->addAddress($toemail,'admin');
    $mail->addReplyTo("","Reply");
    $mail->Subject = $subject;
    $mail->Body = $content;
    if(!$mail->send()){
        return $mail->ErrorInfo;
    }else{
        return 1;
    }
}

/**
 * 数字和字母的随机组合：
 */
function getRandomString($len, $chars=null){
    if (is_null($chars)){
        $chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    }  
    for ($i = 0, $str = '', $lc = strlen($chars)-1; $i < $len; $i++){
        $str .= $chars[mt_rand(0, $lc)];  
    }
    return $str;
}

/**
 * 格式化字节大小
 * @param  number $size      字节数
 * @param  string $delimiter 数字和单位分隔符
 * @return string            格式化后的带单位的大小
 */
function format_bytes($size, $delimiter = '') {
	$units = array('B', 'KB', 'MB', 'GB', 'TB', 'PB');
	for ($i = 0; $size >= 1024 && $i < 5; $i++) $size /= 1024;
	return round($size, 2) . $delimiter . $units[$i];
}

/**
 * 清理缓存:清除缓存的所有文件
 */
function deldir($dir) {     
    $dh = @opendir($dir);
    while ($file = @readdir($dh)) {
        if($file !="." && $file !="..") {
            $fullpath = $dir."/".$file;
            if(!is_dir($fullpath)) {
                unlink($fullpath);
            } else {
                deldir($fullpath);
            }
        }
    }
    @closedir($dh);
    return true;
}

