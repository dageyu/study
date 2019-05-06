<?php

/**
 * 发送邮件,找回密码:
 * @param   string  $content    邮件内容
 * @param   string  $toemail    接受邮件地址
 * @param   string  $subject    邮件标题
 * @return  错误信息或1发送成功
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
 * 生成静态页面：
 * @param   string  $title      标题
 * @param   string  $content    内容
 * @param   string  $tpl        模板名称(default index)
 * @param   string  $type       模块名称
 * @param   string  $tbname     表名
 * @param   string  $id         主键值
 * @return  integer $res        1成功，0失败
 */
function webHtml($title, $content, $tpl = 'index', $type, $tbname, $id){
    include("../public/smarty3/test/setup.php");
    $smarty = new SmartyBook;
    mkdirs("../web_html/$type/$tbname");    //创建目录
    $htmlfile = "../web_html/$type/$tbname/$id.html";   //声明要生成的页面位置及名称
    $fopen = fopen($htmlfile,"w");  //打开文件并赋予写入权限
    $smarty->clearAllCache();   //清除页面中缓存
    $tmpfile = "../public/smarty3/test/templates/index.tpl";  //提取模板
    $smarty->assign("title",$title);
    $smarty->assign("content",$content);
    $contents = $smarty->fetch($tmpfile);   //获取输出的内容
    if( fwrite($fopen,$contents) > 0 ){
        $res = 1;
    }
    else{
        $res = 0;
    }
    return $res;
}

/**
 * 判断文件夹是否存在，不存在则创建：
 * @param   string  $dir    目录名(路径) 
 * @param   integer $mode   
 * @return    
 */
function mkdirs($dir, $mode = 0777){
    if (is_dir($dir) || @mkdir($dir, $mode)) return TRUE;
    if (!mkdirs(dirname($dir), $mode)) return FALSE;
    return @mkdir($dir, $mode);
} 

/**
 * 数字和字母的随机组合：
 * @param   integer $len    长度
 * @param   string  $chars  资源(default null)
 * @return  string  $str    组合字符串           
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
 * @param   string  $dir    目录
 * @return  boolean true    
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

/**
 * 实现中文字串截取无乱码的方法
 * @param   string  $string 要操作的字符串
 * @param   number  $start  开始位置
 * @param   integer $length 截取的长度
 * @return  string  返回中文字符串
 */
function getSubstr($string, $start, $length){
    if (mb_strlen($string, 'utf-8') > $length) {
        $str = mb_substr($string, $start, $length, 'utf-8');
        return $str . '...';
    } else {
        return $string;
    }
}

/**
 * 添加数据
 */
function tbfields($tbname){
    $arrs = array(
        //26
        'php_functions'         => array('tbname' => 'php_functions' , 'title' => 'name' , 'ztitle' => 'zn_name' , 'content' => 'content'),
        'php_errors'            => array('tbname' => 'php_errors' , 'title' => 'title' , 'content' => 'content'),
        'php_uses'              => array('tbname' => 'php_uses' , 'title' => 'title' , 'content' => 'content'),
        'php_operators'         => array('tbname' => 'php_operators' , 'title' => 'name' , 'ztitle' => 'zn_name' , 'content' => 'content'),
        'php_questions'         => array('tbname' => 'php_questions' , 'title' => 'name' , 'content' => 'content'),
        'php_extends'           => array('tbname' => 'php_extends' , 'title' => 'name' , 'content' => 'content'),
        'php_others'            => array('tbname' => 'php_others' , 'title' => 'name' , 'content' => 'content'),
        'php_wamp'              => array('tbname' => 'php_wamp' , 'title' => 'title' , 'ztitle' => 'zn_name' , 'content' => 'content'),
        'php_phpstudy'          => array('tbname' => 'php_phpstudy' , 'title' => 'title' , 'ztitle' => 'zn_name' , 'content' => 'content'),
        'php_lamp'              => array('tbname' => 'php_lamp' , 'title' => 'title' , 'ztitle' => 'zn_name' , 'content' => 'content'),
        'php_env_others'        => array('tbname' => 'php_env_others' , 'title' => 'title' , 'content' => 'content'),
        'php_frame_type'        => array('tbname' => 'php_frame_type' , 'title' => 'name' , 'content' => 'content'),
        'php_frame_functions'   => array('tbname' => 'php_frame_functions' , 'title' => 'name' , 'ztitle' => 'zn_name' , 'content' => 'content' , 'linktb' => 'php_frame_type' , 'onfield' => 'pft_id' , 'linkfield' => 'php_frame_type.name as type_name'),
        'php_frame_errors'      => array('tbname' => 'php_frame_errors' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'php_frame_type' , 'onfield' => 'pft_id' , 'linkfield' => 'php_frame_type.name as type_name'),
        'php_frame_questions'   => array('tbname' => 'php_frame_questions' , 'title' => 'name' , 'content' => 'content' , 'linktb' => 'php_frame_type' , 'onfield' => 'pft_id' , 'linkfield' => 'php_frame_type.name as type_name'),
        'php_frame_extends'     => array('tbname' => 'php_frame_extends' , 'title' => 'name' , 'content' => 'content' , 'linktb' => 'php_frame_type' , 'onfield' => 'pft_id' , 'linkfield' => 'php_frame_type.name as type_name'),
        'php_frame_others'      => array('tbname' => 'php_frame_others' , 'title' => 'name' , 'content' => 'content' , 'linktb' => 'php_frame_type' , 'onfield' => 'pft_id' , 'linkfield' => 'php_frame_type.name as type_name'),
        'php_frame_uses'        => array('tbname' => 'php_frame_uses' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'php_frame_type' , 'onfield' => 'pft_id' , 'linkfield' => 'php_frame_type.name as type_name'),
        'php_develop_type'      => array('tbname' => 'php_develop_type' , 'title' => 'name' , 'content' => 'content'),
        'php_develop_plug'      => array('tbname' => 'php_develop_plug' , 'title' => 'title' , 'ztitle' => 'zn_name' , 'content' => 'content' , 'linktb' => 'php_develop_type' , 'onfield' => 'pdt_id' , 'linkfield' => 'php_develop_type.name as type_name'),
        'php_develop_questions' => array('tbname' => 'php_develop_questions' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'php_develop_type' , 'onfield' => 'pdt_id' , 'linkfield' => 'php_develop_type.name as type_name'),
        'php_develop_theory'    => array('tbname' => 'php_develop_theory' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'php_develop_type' , 'onfield' => 'pdt_id' , 'linkfield' => 'php_develop_type.name as type_name'),
        'php_develop_menus'     => array('tbname' => 'php_develop_menus' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'php_develop_type' , 'onfield' => 'pdt_id' , 'linkfield' => 'php_develop_type.name as type_name'),
        'php_develop_configs'   => array('tbname' => 'php_develop_configs' , 'title' => 'title' , 'ztitle' => 'zn_name' , 'content' => 'content' , 'linktb' => 'php_develop_type' , 'onfield' => 'pdt_id' , 'linkfield' => 'php_develop_type.name as type_name'),
        'php_develop_errors'    => array('tbname' => 'php_develop_errors' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'php_develop_type' , 'onfield' => 'pdt_id' , 'linkfield' => 'php_develop_type.name as type_name'),
        'php_develop_others'    => array('tbname' => 'php_develop_others' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'php_develop_type' , 'onfield' => 'pdt_id' , 'linkfield' => 'php_develop_type.name as type_name'),
        //12
        'save_type'             => array('tbname' => 'save_type' , 'title' => 'name' , 'content' => 'content'),
        'save_functions'        => array('tbname' => 'save_functions' , 'title' => 'name' , 'ztitle' => 'zn_name' , 'content' => 'content' , 'linktb' => 'save_type' , 'onfield' => 'st_id' , 'linkfield' => 'save_type.name as type_name'),
        'save_actions'          => array('tbname' => 'save_actions' , 'title' => 'name' , 'content' => 'content' , 'linktb' => 'save_type', 'onfield' => 'st_id' , 'linkfield' => 'save_type.name as type_name'),
        'save_errors'           => array('tbname' => 'save_errors' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'save_type', 'onfield' => 'st_id' , 'linkfield' => 'save_type.name as type_name'),
        'save_operators'        => array('tbname' => 'save_operators' , 'title' => 'name' , 'ztitle' => 'zn_name' , 'content' => 'content' , 'linktb' => 'save_type', 'onfield' => 'st_id' , 'linkfield' => 'save_type.name as type_name'),
        'save_questions'        => array('tbname' => 'save_questions' , 'title' => 'name' , 'content' => 'content' , 'linktb' => 'save_type', 'onfield' => 'st_id' , 'linkfield' => 'save_type.name as type_name'),
        'save_extends'          => array('tbname' => 'save_extends' , 'title' => 'name' , 'content' => 'content' , 'linktb' => 'save_type', 'onfield' => 'st_id' , 'linkfield' => 'save_type.name as type_name'),
        'save_others'           => array('tbname' => 'save_others' , 'title' => 'name' , 'content' => 'content' , 'linktb' => 'save_type', 'onfield' => 'st_id' , 'linkfield' => 'save_type.name as type_name'),
        'save_orders'           => array('tbname' => 'save_orders' , 'title' => 'name' , 'content' => 'content' , 'linktb' => 'save_type', 'onfield' => 'st_id' , 'linkfield' => 'save_type.name as type_name'),
        'save_specials'         => array('tbname' => 'save_specials' , 'title' => 'name' , 'content' => 'content' , 'linktb' => 'save_type', 'onfield' => 'st_id' , 'linkfield' => 'save_type.name as type_name'),
        'save_specials_act'     => array('tbname' => 'save_specials_act' , 'title' => 'name' , 'content' => 'content' , 'linktb' => 'save_type', 'onfield' => 'st_id' , 'linkfield' => 'save_type.name as type_name'),
        'save_uses'             => array('tbname' => 'save_uses' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'save_type', 'onfield' => 'st_id' , 'linkfield' => 'save_type.name as type_name'),
        //
        'js_nouns'              => array('tbname' => 'js_nouns' , 'title' => 'name' , 'ztitle' => 'zn_name' , 'content' => 'content'),
        'js_operators'          => array('tbname' => 'js_operators' , 'title' => 'name' , 'ztitle' => 'zn_name' , 'content' => 'content'),
        'js_actions'            => array('tbname' => 'js_actions' , 'title' => 'name' , 'content' => 'content'),
        'js_questions'          => array('tbname' => 'js_questions' , 'title' => 'name' , 'content' => 'content'),
        'js_errors'             => array('tbname' => 'js_errors' , 'title' => 'title' , 'content' => 'content'),
        'js_others'             => array('tbname' => 'js_errors' , 'title' => 'title' , 'content' => 'content'),
        'js_extends'            => array('tbname' => 'js_extends' , 'title' => 'name' , 'content' => 'content'),
        'js_specials'           => array('tbname' => 'js_specials' , 'title' => 'name' , 'content' => 'content'),
        'js_frame_type'         => array('tbname' => 'js_frame_type' , 'title' => 'name' , 'content' => 'content'),
        'js_frame_event'        => array('tbname' => 'js_frame_event' , 'title' => 'name' , 'ztitle' => 'zn_name' , 'content' => 'content' , 'linktb' => 'js_frame_type' , 'onfield' => 'jft_id' , 'linkfield' => 'js_frame_type.name as type_name'),
        'js_frame_questions'    => array('tbname' => 'js_frame_questions' , 'title' => 'name' , 'content' => 'content' , 'linktb' => 'js_frame_type' , 'onfield' => 'jft_id' , 'linkfield' => 'js_frame_type.name as type_name'),
        'js_frame_errors'       => array('tbname' => 'js_frame_errors' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'js_frame_type' , 'onfield' => 'jft_id' , 'linkfield' => 'js_frame_type.name as type_name'),
        'js_frame_others'       => array('tbname' => 'js_frame_others' , 'title' => 'name' , 'content' => 'content' , 'linktb' => 'js_frame_type' , 'onfield' => 'jft_id' , 'linkfield' => 'js_frame_type.name as type_name'),
        'js_frame_specials'     => array('tbname' => 'js_frame_specials' , 'title' => 'name' , 'content' => 'content' , 'linktb' => 'js_frame_type' , 'onfield' => 'jft_id' , 'linkfield' => 'js_frame_type.name as type_name'),
        'js_plug_type'          => array('tbname' => 'js_plug_type' , 'title' => 'name' , 'content' => 'content'),
        'js_plug_act'           => array('tbname' => 'js_plug_act' , 'title' => 'name' , 'content' => 'content' , 'linktb' => 'js_plug_type' , 'onfield' => 'jpt_id' , 'linkfield' => 'js_plug_type.name as type_name'),
        'js_plug_others'        => array('tbname' => 'js_plug_others' , 'title' => 'name' , 'content' => 'content' , 'linktb' => 'js_plug_type', 'onfield' => 'jpt_id' , 'linkfield' => 'js_plug_type.name as type_name'),
        'js_frame_functions'    => array('tbname' => 'js_frame_functions' , 'title' => 'name' , 'ztitle' => 'zn_name' , 'content' => 'content' , 'linktb' => 'js_frame_type' , 'onfield' => 'jft_id' , 'linkfield' => 'js_frame_type.name as type_name'),
        //
        'htmlf_tags'            => array('tbname' => 'htmlf_tags' , 'title' => 'name' , 'ztitle' => 'zn_name' , 'content' => 'content'),
        'htmlf_attrs'           => array('tbname' => 'htmlf_attrs' , 'title' => 'name' , 'ztitle' => 'zn_name' , 'content' => 'content'),
        'htmlf_questions'       => array('tbname' => 'htmlf_questions' , 'title' => 'title' , 'content' => 'content'),
        'htmlf_specials'        => array('tbname' => 'htmlf_specials' , 'title' => 'title' , 'content' => 'content'),
        'htmlf_errors'          => array('tbname' => 'htmlf_errors' , 'title' => 'title' , 'content' => 'content'),
        'htmlf_others'          => array('tbname' => 'htmlf_others' , 'title' => 'title' , 'content' => 'content'),
        'htmlf_plug_type'       => array('tbname' => 'htmlf_plug_type' , 'title' => 'name' , 'content' => 'content'),
        'htmlf_plug_act'        => array('tbname' => 'htmlf_plug_act' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'htmlf_plug_type', 'onfield' => 'hpt_id' , 'linkfield' => 'htmlf_plug_type.name as type_name'),
        'htmlf_plug_questions'  => array('tbname' => 'htmlf_plug_questions' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'htmlf_plug_type', 'onfield' => 'hpt_id' , 'linkfield' => 'htmlf_plug_type.name as type_name'),
        'htmlf_plug_specials'   => array('tbname' => 'htmlf_plug_specials' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'htmlf_plug_type', 'onfield' => 'hpt_id' , 'linkfield' => 'htmlf_plug_type.name as type_name'),
        'htmlf_plug_errors'     => array('tbname' => 'htmlf_plug_errors' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'htmlf_plug_type', 'onfield' => 'hpt_id' , 'linkfield' => 'htmlf_plug_type.name as type_name'),
        'htmlf_plug_others'     => array('tbname' => 'htmlf_plug_others' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'htmlf_plug_type', 'onfield' => 'hpt_id' , 'linkfield' => 'htmlf_plug_type.name as type_name'),
        'htmlf_plug_theory'     => array('tbname' => 'htmlf_plug_theory' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'htmlf_plug_type', 'onfield' => 'hpt_id' , 'linkfield' => 'htmlf_plug_type.name as type_name'),
        //
        'csst_type'             => array('tbname' => 'csst_type' , 'title' => 'name' , 'content' => 'content'),
        'csst_act'              => array('tbname' => 'csst_act' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'csst_type', 'onfield' => 'ct_id' , 'linkfield' => 'csst_type.name as type_name'),
        'csst_questions'        => array('tbname' => 'csst_questions' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'csst_type', 'onfield' => 'ct_id' , 'linkfield' => 'csst_type.name as type_name'),
        'csst_specials'         => array('tbname' => 'csst_specials' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'csst_type', 'onfield' => 'ct_id' , 'linkfield' => 'csst_type.name as type_name'),
        'csst_errors'           => array('tbname' => 'csst_errors' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'csst_type', 'onfield' => 'ct_id' , 'linkfield' => 'csst_type.name as type_name'),
        'csst_others'           => array('tbname' => 'csst_others' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'csst_type', 'onfield' => 'ct_id' , 'linkfield' => 'csst_type.name as type_name'),
        'csst_plug_type'        => array('tbname' => 'csst_plug_type' , 'title' => 'name' , 'content' => 'content'),
        'csst_plug_act'         => array('tbname' => 'csst_plug_act' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'csst_plug_type', 'onfield' => 'cpt_id' , 'linkfield' => 'csst_plug_type.name as type_name'),
        'csst_plug_questions'   => array('tbname' => 'csst_plug_questions' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'csst_plug_type', 'onfield' => 'cpt_id' , 'linkfield' => 'csst_plug_type.name as type_name'),
        'csst_plug_specials'    => array('tbname' => 'csst_plug_specials' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'csst_plug_type', 'onfield' => 'cpt_id' , 'linkfield' => 'csst_plug_type.name as type_name'),
        'csst_plug_errors'      => array('tbname' => 'csst_plug_errors' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'csst_plug_type', 'onfield' => 'cpt_id' , 'linkfield' => 'csst_plug_type.name as type_name'),
        'csst_plug_others'      => array('tbname' => 'csst_plug_others' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'csst_plug_type', 'onfield' => 'cpt_id' , 'linkfield' => 'csst_plug_type.name as type_name'),
        //
        'software_type'         => array('tbname' => 'software_type' , 'title' => 'name' , 'content' => 'content'),
        'software_act'          => array('tbname' => 'software_act' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'software_type', 'onfield' => 'st_id' , 'linkfield' => 'software_type.name as type_name'),
        'software_extends'      => array('tbname' => 'software_extends' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'software_type', 'onfield' => 'st_id' , 'linkfield' => 'software_type.name as type_name'),
        'software_specials'     => array('tbname' => 'software_specials' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'software_type', 'onfield' => 'st_id' , 'linkfield' => 'software_type.name as type_name'),
        'software_errors'       => array('tbname' => 'software_errors' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'software_type', 'onfield' => 'st_id' , 'linkfield' => 'software_type.name as type_name'),
        'software_others'       => array('tbname' => 'software_others' , 'title' => 'title' , 'content' => 'content'),
        //
        'system_type'           => array('tbname' => 'system_type' , 'title' => 'name' , 'content' => 'content'),
        'system_nouns'          => array('tbname' => 'system_nouns' , 'title' => 'name' , 'ztitle' => 'zn_name' , 'content' => 'content' , 'linktb' => 'system_type', 'onfield' => 'syt_id' , 'linkfield' => 'system_type.name as type_name'),
        'system_operators'      => array('tbname' => 'system_operators' , 'title' => 'name' , 'ztitle' => 'zn_name' , 'content' => 'content' , 'linktb' => 'system_type', 'onfield' => 'syt_id' , 'linkfield' => 'system_type.name as type_name'),
        'system_orders'         => array('tbname' => 'system_orders' , 'title' => 'name' , 'content' => 'content' , 'linktb' => 'system_type', 'onfield' => 'syt_id' , 'linkfield' => 'system_type.name as type_name'),
        'system_errors'         => array('tbname' => 'system_errors' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'system_type', 'onfield' => 'syt_id' , 'linkfield' => 'system_type.name as type_name'),
        'system_questions'      => array('tbname' => 'system_questions' , 'title' => 'name' , 'content' => 'content' , 'linktb' => 'system_type', 'onfield' => 'syt_id' , 'linkfield' => 'system_type.name as type_name'),
        'system_extends'        => array('tbname' => 'system_extends' , 'title' => 'name' , 'content' => 'content' , 'linktb' => 'system_type', 'onfield' => 'syt_id' , 'linkfield' => 'system_type.name as type_name'),
        'system_others'         => array('tbname' => 'system_others' , 'title' => 'name' , 'content' => 'content' , 'linktb' => 'system_type', 'onfield' => 'syt_id' , 'linkfield' => 'system_type.name as type_name'),
        'system_specials'       => array('tbname' => 'system_specials' , 'title' => 'name' , 'content' => 'content' , 'linktb' => 'system_type', 'onfield' => 'syt_id' , 'linkfield' => 'system_type.name as type_name'),
        'system_specials_act'   => array('tbname' => 'system_specials_act' , 'title' => 'name' , 'content' => 'content' , 'linktb' => 'system_type', 'onfield' => 'syt_id' , 'linkfield' => 'system_type.name as type_name'),
        //
        'plug_type'             => array('tbname' => 'plug_type' , 'title' => 'name' , 'content' => 'content'),
        'plug_act'              => array('tbname' => 'plug_act' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'plug_type', 'onfield' => 'pt_id' , 'linkfield' => 'plug_type.name as type_name'),
        'plug_errors'           => array('tbname' => 'plug_errors' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'plug_type', 'onfield' => 'pt_id' , 'linkfield' => 'plug_type.name as type_name'),
        'plug_questions'        => array('tbname' => 'plug_questions' , 'title' => 'name' , 'content' => 'content' , 'linktb' => 'plug_type', 'onfield' => 'pt_id' , 'linkfield' => 'plug_type.name as type_name'),
        'plug_extends'          => array('tbname' => 'plug_extends' , 'title' => 'name' , 'content' => 'content' , 'linktb' => 'plug_type', 'onfield' => 'pt_id' , 'linkfield' => 'plug_type.name as type_name'),
        'plug_others'           => array('tbname' => 'plug_others' , 'title' => 'name' , 'content' => 'content' , 'linktb' => 'plug_type', 'onfield' => 'pt_id' , 'linkfield' => 'plug_type.name as type_name'),
        'plug_specials_act'     => array('tbname' => 'plug_specials_act' , 'title' => 'name' , 'content' => 'content' , 'linktb' => 'plug_type', 'onfield' => 'pt_id' , 'linkfield' => 'plug_type.name as type_name'),
        //
        'others_type'           => array('tbname' => 'others_type' , 'title' => 'name' , 'content' => 'content'),
        'others_questions'      => array('tbname' => 'others_questions' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'others_type', 'onfield' => 'ot_id' , 'linkfield' => 'others_type.name as type_name'),
        'others_uses'           => array('tbname' => 'others_uses' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'others_type', 'onfield' => 'ot_id' , 'linkfield' => 'others_type.name as type_name'),
        //
        'book_type'             => array('tbname' => 'book_type' , 'title' => 'name' , 'content' => 'content'),
        'book_questions'        => array('tbname' => 'book_questions' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'book_type', 'onfield' => 'book_id' , 'linkfield' => 'book_type.name as type_name'),
        'book_knows'            => array('tbname' => 'book_knows' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'book_type', 'onfield' => 'book_id' , 'linkfield' => 'book_type.name as type_name'),
        'objects'               => array('tbname' => 'objects' , 'title' => 'title' , 'content' => 'content'),
        'php_iis'               => array('tbname' => 'php_iis' , 'title' => 'title' , 'ztitle' => 'zn_name' , 'content' => 'content'),
        'cjh_tags'              => array('tbname' => 'cjh_tags' , 'title' => 'name' , 'ztitle' => 'zn_name' , 'content' => 'content'),
        'cjh_attrs'             => array('tbname' => 'cjh_attrs' , 'title' => 'name' , 'ztitle' => 'zn_name' , 'content' => 'content'),
        'cjh_questions'         => array('tbname' => 'cjh_questions' , 'title' => 'title' , 'content' => 'content'),
        'cjh_specials'          => array('tbname' => 'cjh_specials' , 'title' => 'title' , 'content' => 'content'),
        'cjh_errors'            => array('tbname' => 'cjh_errors' , 'title' => 'title' , 'content' => 'content'),
        'cjh_others'            => array('tbname' => 'cjh_others' , 'title' => 'title' , 'content' => 'content'),
        'cjh_plug_type'         => array('tbname' => 'cjh_plug_type' , 'title' => 'name' , 'content' => 'content'),
        'cjh_plug_act'          => array('tbname' => 'cjh_plug_act' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'cjh_plug_type', 'onfield' => 'hpt_id' , 'linkfield' => 'cjh_plug_type.name as type_name'),
        'cjh_plug_questions'    => array('tbname' => 'cjh_plug_questions' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'cjh_plug_type', 'onfield' => 'hpt_id' , 'linkfield' => 'cjh_plug_type.name as type_name'),
        'cjh_plug_specials'     => array('tbname' => 'cjh_plug_specials' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'cjh_plug_type', 'onfield' => 'hpt_id' , 'linkfield' => 'cjh_plug_type.name as type_name'),
        'cjh_plug_errors'       => array('tbname' => 'cjh_plug_errors' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'cjh_plug_type', 'onfield' => 'hpt_id' , 'linkfield' => 'cjh_plug_type.name as type_name'),
        'cjh_plug_others'       => array('tbname' => 'cjh_plug_others' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'cjh_plug_type', 'onfield' => 'hpt_id' , 'linkfield' => 'cjh_plug_type.name as type_name'),
        'cjh_plug_theory'       => array('tbname' => 'cjh_plug_theory' , 'title' => 'title' , 'content' => 'content' , 'linktb' => 'cjh_plug_type', 'onfield' => 'hpt_id' , 'linkfield' => 'cjh_plug_type.name as type_name'),
    
        'live_knowledge'        => array('tbname' => 'live_knowledge' , 'title' => 'title' , 'content' => 'content'),
        'live_questipns'        => array('tbname' => 'live_questipns' , 'title' => 'title' , 'content' => 'content'),
    );
    return $arrs[$tbname];
}

