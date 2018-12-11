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
