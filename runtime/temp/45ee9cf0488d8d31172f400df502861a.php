<?php /*a:6:{s:59:"D:\wamp64\www\study\application\admin\view\index\index.html";i:1547024943;s:52:"D:\wamp64\www\study\application\admin\view\main.html";i:1548052101;s:54:"D:\wamp64\www\study\application\admin\view\header.html";i:1546943078;s:55:"D:\wamp64\www\study\application\admin\view\lefttop.html";i:1546943105;s:52:"D:\wamp64\www\study\application\admin\view\left.html";i:1547472649;s:53:"D:\wamp64\www\study\application\admin\view\right.html";i:1547710419;}*/ ?>
﻿<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8" />
		<title>编程语言学习总结系统</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link href="/study/public/static/admin/css/bootstrap.min.css" rel="stylesheet" />
		<link rel="stylesheet" href="/study/public/static/admin/css/font-awesome.min.css" />
		<link rel="stylesheet" href="/study/public/static/admin/css/ace.min.css" />
		<link rel="stylesheet" href="/study/public/static/admin/css/ace-rtl.min.css" />
		<link rel="stylesheet" href="/study/public/static/admin/css/ace-skins.min.css" />
		<link rel="stylesheet" href="/study/public/static/plug/fontawesome/css/all.min.css" />
		<script src="/study/public/static/admin/js/ace-extra.min.js"></script>
		<script src="/study/public/static/admin/js/jquery-2.0.3.min.js"></script>
		<script src="/study/public/static/plug/layer/layer.js" ></script>
		
<style>
.layui-elem-quote {
    margin-bottom: 10px;
    padding: 15px;
    line-height: 22px;
    border-left: 5px solid #009688;
    border-radius: 0 2px 2px 0;
    background-color: #f2f2f2;
    background-size: 100%;
}
.layui-table {
    width: 100%;
    background-color: #fff;
    color: #666;
    margin: 10px 0;

}
table {
    border-collapse: collapse;
    border-spacing: 0;
}
.layui-table td, .layui-table th {
    position: relative;
    padding: 9px 15px;
    min-height: 20px;
    line-height: 20px;
    font-size: 14px;
    border-width: 1px;
    border-style: solid;
    border-color: #e6e6e6;
}
</style>

		<style>
			.nav-list > li > a > [class*="fa-"]:first-child {
				display: inline-block;
				vertical-align: middle;
				min-width: 30px;
				text-align: center;
				font-size: 18px;
				margin-right: 2px;
				line-height: 36px;
			}
			.nav-list > li .submenu > li a > [class*="fa-"]:first-child {
				display: none;
				font-size: 12px;
				width: 18px;
				height: auto;
				line-height: 12px;
				text-align: center;
				position: absolute;
				left: 10px;
				top: 11px;
				z-index: 1;
				background-color: #FFF;
			}
			.nav-list > li > .submenu li.open > a > [class*="fa-"]:first-child {
				display: inline-block;
			}
			.nav-list > li > .submenu li.active > a > [class*="fa-"]:first-child {
				display: inline-block;
			}
			.nav-list > li > .submenu li > .submenu > li > a > [class*="fa-"]:first-child{
				display: inline-block;
				width: 18px;
				height: auto;
				line-height: 12px;
				text-align: center;
				font-size: 14px;
				position: static;
				background-color: transparent;
				margin-right: 1px;
			}
		</style>
	</head>
	<body>
		<!-- header start -->
		﻿<div class="navbar navbar-default" id="navbar" style="margin-top:-19px">
	<script type="text/javascript">
		try{ace.settings.check('navbar' , 'fixed')}catch(e){}
	</script>
	<div class="navbar-container" id="navbar-container">
		<div class="navbar-header pull-left">
			<a href="#" class="navbar-brand">
				<small>
					<i class="icon-leaf"></i>
					编程语言学习总结系统
				</small>
			</a>
		</div>
	</div>
</div>
		<!-- header end -->
		<div class="main-container" id="main-container">
			<script type="text/javascript">
				try{ace.settings.check('main-container' , 'fixed')}catch(e){}
			</script>
			<div class="main-container-inner">
				<div class="sidebar" id="sidebar">
					<!-- lefttop start -->
					﻿<script type="text/javascript">
	try{ace.settings.check('sidebar' , 'fixed')}catch(e){}
</script>
<div class="sidebar-shortcuts" id="sidebar-shortcuts" style="margin-top:-19px">
	<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
		<button class="btn btn-success">
			<i class="icon-signal"></i>
		</button>
		<button class="btn btn-info">
			<i class="icon-pencil"></i>
		</button>
		<button class="btn btn-warning">
			<i class="icon-group"></i>
		</button>
		<button class="btn btn-danger">
			<i class="icon-cogs"></i>
		</button>
	</div>
	<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
		<span class="btn btn-success"></span>
		<span class="btn btn-info"></span>
		<span class="btn btn-warning"></span>
		<span class="btn btn-danger"></span>
	</div>
</div><!-- #sidebar-shortcuts -->
					<!-- lefttop end -->
					<!-- left start -->
					﻿<ul class="nav nav-list" style="margin-top:-19px">
	<li class="active" name="active" id="fm0">
		<a href="javascript:jumpModule('Menu','index','fm0',1,0,0)">
			<i class="icon-desktop"></i>
			<span class="menu-text"> 菜单管理 </span>
		</a>
	</li>
	<?php if(is_array($fm_lists) || $fm_lists instanceof \think\Collection || $fm_lists instanceof \think\Paginator): $i = 0; $__LIST__ = $fm_lists;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$fm_list): $mod = ($i % 2 );++$i;?>
	<li class="" name="active" id="fm<?php echo htmlentities($fm_list['fm_id']); ?>">
		<?php if($fm_list['is_parent'] == '1'): ?>
		<a class="dropdown-toggle" href="javascript:jumpModule('','','fm<?php echo htmlentities($fm_list['fm_id']); ?>',1,1,0)">
		<?php else: ?>
		<a href="javascript:jumpModule('<?php echo htmlentities($fm_list['fm_controller']); ?>','<?php echo htmlentities($fm_list['fm_method']); ?>','fm<?php echo htmlentities($fm_list['fm_id']); ?>',1,0,0)">
		<?php endif; ?>
			<i class="<?php echo htmlentities($fm_list['fm_icon']); ?>"></i>
			<span class="menu-text"> <?php echo htmlentities($fm_list['fm_name']); ?> </span>
			<?php if($fm_list['is_parent'] == '1'): ?>
			<b class="arrow icon-angle-down"></b>
			<?php endif; ?>
		</a>
		<?php if($fm_list['is_parent'] == '1'): ?>
			<ul class="submenu">
				<?php if(is_array($sm_lists) || $sm_lists instanceof \think\Collection || $sm_lists instanceof \think\Paginator): $i = 0; $__LIST__ = $sm_lists;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$sm_list): $mod = ($i % 2 );++$i;if($sm_list['fm_id'] == $fm_list['fm_id']): ?>
				<li class="" name="" id="sm<?php echo htmlentities($sm_list['sm_id']); ?>">
					<?php if($sm_list['is_parents'] == '1'): ?>
					<a href="javascript:jumpModule('','','sm<?php echo htmlentities($sm_list['sm_id']); ?>',2,1,0)" class="dropdown-toggle">
					<?php else: ?>
					<a href="javascript:jumpModule('<?php echo htmlentities($sm_list['sm_controller']); ?>','<?php echo htmlentities($sm_list['sm_method']); ?>','sm<?php echo htmlentities($sm_list['sm_id']); ?>',2,0,'<?php echo htmlentities($sm_list['tbname']); ?>')" >
					<?php endif; ?>
						<i class="<?php echo htmlentities($sm_list['sm_icon']); ?>"></i>
						<?php echo htmlentities($sm_list['sm_name']); if($sm_list['is_parents'] == '1'): ?>
						<b class="arrow icon-angle-down"></b>
						<?php endif; ?>
					</a>
					<?php if($sm_list['is_parents'] == '1'): ?>
						<ul class="submenu">
							<?php if(is_array($tm_lists) || $tm_lists instanceof \think\Collection || $tm_lists instanceof \think\Paginator): $i = 0; $__LIST__ = $tm_lists;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$tm_list): $mod = ($i % 2 );++$i;if($tm_list['sm_id'] == $sm_list['sm_id']): ?>
							<li class="" name="" id="tm<?php echo htmlentities($tm_list['tm_id']); ?>">
								<a href="javascript:jumpModule('<?php echo htmlentities($tm_list['tm_controller']); ?>','<?php echo htmlentities($tm_list['tm_method']); ?>','tm<?php echo htmlentities($tm_list['tm_id']); ?>',3,0,'<?php echo htmlentities($tm_list['tbname']); ?>')">
									<i class="<?php echo htmlentities($tm_list['tm_icon']); ?>"></i>
									<?php echo htmlentities($tm_list['tm_name']); ?>
								</a>
							</li>
							<?php endif; ?>
							<?php endforeach; endif; else: echo "" ;endif; ?>
						</ul>
					<?php endif; ?>
				</li>
				<?php endif; ?>
				<?php endforeach; endif; else: echo "" ;endif; ?>
			</ul>
		<?php endif; ?>
	</li>
	<?php endforeach; endif; else: echo "" ;endif; ?>
	<li class="" name="active">
		<a href="javascript:cleanCache()">
			<i class="icon-circle-blank"></i>
			<span class="menu-text"> 清理缓存 </span>
		</a>
	</li>
	<li class="" name="active">
		<a href="javascript:logout()">
			<i class="icon-off"></i>
			<span class="menu-text"> 退出平台 </span>
		</a>
	</li>
</ul>
<div class="sidebar-collapse" id="sidebar-collapse">
	<i class="icon-double-angle-left" data-icon1="icon-double-angle-left" data-icon2="icon-double-angle-right"></i>
</div>
<script type="text/javascript">
	try{ace.settings.check('sidebar' , 'collapsed')}catch(e){}
</script>
					<!-- left end -->
				</div>
				<div class="main-content">
					<div class="breadcrumbs" id="breadcrumbs">
						<script type="text/javascript">
							try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
						</script>
						<!-- bodyheader start -->
						
<ul class="breadcrumb">
    <li>
        <i class="icon-home home-icon"></i>
        <a href="#">首页</a>
    </li>
    <li class="active">控制台</li>
</ul>

						<!-- bodyheader end -->
					</div>
					
<div class="page-content">
    <div class="page-header">
        <h1>
            控制台
            <small>
                <i class="icon-double-angle-right"></i>
                    欢迎界面
            </small>
        </h1>
    </div>
    <div class="row">
        <div class="col-xs-12">
            <div class="alert alert-block alert-success">
                <button type="button" class="close" data-dismiss="alert">
                    <i class="icon-remove"></i>
                </button>
                <i class="icon-ok green"></i>
                欢迎使用
                <strong class="green">
                    编程语言学习总结系统
                    <small id="nowTime"></small>
                </strong>
            </div>
            <div class="row">
                <div class="sysNotice col" style="padding:0px 12px 0px 12px">
                    <span class="layui-elem-quote" style="font-size:16px">系统基本参数</span>
                    <div style="height: 10px;"></div>
                    <table class="layui-table">
                        <tbody>
                            <tr>
                                <td style="width:20%">服务器环境:</td>
                                <td class="" colspan="3"><?php echo htmlentities($sys_info['web_server']); ?></td>
                            </tr>
                            <tr>
                                <td>服务器操作系统:</td>
                                <td class="" style="width:35%"><?php echo htmlentities($sys_info['os']); ?></td>
                                <td style="width:18%">服务器域名/IP:</td>
                                <td class=""><?php echo htmlentities($sys_info['domain']); ?> [ <?php echo htmlentities($sys_info['ip']); ?> ]</td>
                            </tr>
                            <tr>
                                <td>PHP 版本:</td>
                                <td class=""><?php echo htmlentities($sys_info['phpv']); ?></td>
                                <td>Mysql 版本:</td>
                                <td class=""><?php echo htmlentities($sys_info['mysql_version']); ?></td>
                            </tr>
                            <tr>
                                <td>程序开发:</td>
                                <td class=""><a href="https://github.com/dageyu/study" target="_blank" style="color:blueviolet">个人git学习网站</a></td>
                                <td>版权所有:</td>
                                <td class="">盗版必究</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

				</div>
				﻿<div class="ace-settings-container" id="ace-settings-container">
	<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
		<i class="icon-cog bigger-150"></i>
	</div>
	<div class="ace-settings-box" id="ace-settings-box">
		<div>
			<div class="pull-left">
				<select id="skin-colorpicker" class="hide">
					<option data-skin="default" value="#438EB9">#438EB9</option>
					<option data-skin="skin-1" value="#222A2D">#222A2D</option>
					<option data-skin="skin-2" value="#C6487E">#C6487E</option>
					<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
				</select>
			</div>
			<span>&nbsp; 选择皮肤</span>
		</div>
		<div>
			<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-navbar" />
			<label class="lbl" for="ace-settings-navbar"> 固定导航条</label>
		</div>
		<div>
			<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-sidebar" />
			<label class="lbl" for="ace-settings-sidebar"> 固定滑动条</label>
		</div>
		<div>
			<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-breadcrumbs" />
			<label class="lbl" for="ace-settings-breadcrumbs">固定面包屑</label>
		</div>
		<div>
			<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-rtl" />
			<label class="lbl" for="ace-settings-rtl">切换到左边</label>
		</div>
		<div>
			<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-add-container" />
			<label class="lbl" for="ace-settings-add-container">
				切换窄屏
				<b></b>
			</label>
		</div>
	</div>
</div>
			
			</div>
			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="icon-double-angle-up icon-only bigger-110"></i>
			</a>
		</div>
		<script type="text/javascript">
			window.jQuery || document.write("<script src='/study/public/static/admin/js/jquery-2.0.3.min.js'>"+"<"+"/script>");
		</script>
		<script type="text/javascript">
			if("ontouchend" in document) document.write("<script src='/study/public/static/admin/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="/study/public/static/admin/js/bootstrap.min.js"></script>
		<script src="/study/public/static/admin/js/typeahead-bs2.min.js"></script>
		<script src="/study/public/static/admin/js/ace-elements.min.js"></script>
		<script src="/study/public/static/admin/js/ace.min.js"></script>
		<input type="text" value="<?php echo htmlentities($navid); ?>" id="navcss" hidden="hidden" />
		<input type="text" value="<?php echo htmlentities($level); ?>" id="level" hidden="hidden"/>
		<input type="text" value="<?php echo htmlentities($misparent); ?>" id="misparent" hidden="hidden"/>
<script>
navList();
function navList(){
	var navid = $('#navcss').val();
	var level = parseInt($('#level').val());
	var misparent = parseInt($('#misparent').val());
	var obj = $('#'+navid);
	if(level == 1 && misparent == 0){
		obj.addClass("active").siblings().removeClass("active");
	}
	else if(level == 2 && misparent == 0){
		obj.addClass("active").siblings().removeClass("active");
		obj.parent().attr('style','display:block;');
		obj.parent().parent().addClass("open").siblings().removeClass("active").removeClass("open");
	}
	else if(level == 3 && misparent == 0){
		obj.addClass("active").siblings().removeClass("active");
		obj.parent().attr('style','display:block;');
		obj.parent().parent().addClass("open").siblings().removeClass("active").removeClass("open");
		obj.parent().parent().parent().attr('style','display:block;');
		obj.parent().parent().parent().parent().addClass("open").siblings().removeClass("active").removeClass("open");

	}
}
//跳转模块
function jumpModule(controller,method,navid,level,misparent,tbname){
	if(misparent == 1 && level == 1){
		$('#'+navid).addClass("active").siblings().removeClass("active");
	}
	else if(misparent == 1 && level == 2){
		$('#'+navid).addClass("open").siblings().removeClass("open");
		$('#'+navid).parent().attr('style','display:block;').siblings().removeAttr("style");
		$('#'+navid).parent().parent().addClass("open").siblings().removeClass("open");
	}
	else{
		var toUrl = "<?php echo url('admin/"+controller+"/"+method+"',array('navid' => 'fm0' , 'level' => 'levels' , 'misparent' => 'misparents' , 'tbname' => 'table')); ?>";
		toUrl = toUrl.replace('fm0',navid).replace('levels',level).replace('misparents',misparent).replace('table',tbname);
		jumpRes(toUrl);
	}
}
function jumpRes(toUrl){
	location.href = toUrl;
}
/**
* 公共函数:add
* checkObj    失去光标时，验证对象是否为空，是否符合正则表达式，是否比较相等
* @param
*       obj      	当前对象
*       ischeck     验证规则0否1是
*       type        类型0无类型1：126或163邮箱 2：密码5-16位数字、字母或两者组合  3：英文，数字，汉字长度
*       compareobj  比较对象相等
*		isrepeat	验证是否重复0否1是
*		tbname		相关表名称
*		field       表字段
*       linkfield   关联字段 ''没有 否则有
*		linkval     关联值   0否 其他是
*/
function checkObj(obj,ischeck,type,compareobj,isrepeat,tbname,field,linkfield,linkval){
	var objval = $.trim($(obj).val());
	if(!objval){
		layer.msg('内容不能为空！',{time:600});
		return false;
	}
	else if(ischeck == 1){
		if(type == 1){
			if(!(/^[a-zA-Z0-9]{1,22}@(163|126)\.com$/.test(objval))){
				layer.msg('邮箱的格式不正确，请重新输入！');
				$(obj).val('');
				return false;
			}
			else if(!!compareobj){
				compareObj(obj,compareobj);
			}
			else if(isrepeat == 1){
				repeatObj(obj,objval,field,tbname);
			}
		}
		else if(type == 2){
			if(!(/^[a-zA-Z0-9]{5,16}$/.test(objval))){
				layer.msg('密码为5-16位数字、字母或两者组合');
				$(obj).val('');
				return false;
			}
			else if(!!compareobj){
				compareObj(obj,compareobj);
			}
			else if(isrepeat == 1){
				repeatObj(obj,objval,field,tbname);
			}
		}
		else if(type == 3){
			if(len(objval) > 60){
				layer.msg('字符长度不能超过60');
				$(obj).val('');
				return false;
			}
			else if(isrepeat == 1){
				repeatObj(obj,objval,field,tbname);
			}
		}
	}
	else if(isrepeat == 1){
		if(linkfield == ''){
			repeatObj(obj,objval,field,tbname);
		} else {
			repeatObjLink(obj,objval,field,tbname,linkfield,linkval);
		}
	}
}
//内容对比
function compareObj(obj,compareobj){
	if($.trim($(obj).val()) != $.trim($('#'+compareobj).val())){
		layer.msg('两次输入的内容不一致',{time:600});
		$(obj).val('');
		return false;
	}
}
//验证是否重复
function repeatObj(obj,objval,field,tbname){
	$.ajax({
		url: "<?php echo url('admin/Check/checkAdd'); ?>",
		data: {'content':objval,'field':field,'tbname':tbname},
		datatype: 'json',
		type: 'POST',
		async: false,
		success:function(res){
			if(res.status == 1){
				layer.msg(res.msg,{time:600,icon:1});
				return
			}
			else{
				layer.msg(res.msg,{time:600,icon:2});
				$(obj).val('');
				return
			}
		},
		error:function(){
			layer.msg('系统未知错误');
			return false;
		}
	})
}
function repeatObjLink(obj,objval,field,tbname,linkfield,linkval){
	$.ajax({
		url: "<?php echo url('admin/Check/checkAddLink'); ?>",
		data: {'content':objval,'field':field,'tbname':tbname,'linkfield':linkfield,'linkval':linkval},
		datatype: 'json',
		type: 'POST',
		async: false,
		success:function(res){
			if(res.status == 1){
				layer.msg(res.msg,{time:600,icon:1});
				return
			}
			else{
				layer.msg(res.msg,{time:600,icon:2});
				$(obj).val('');
				return
			}
		},
		error:function(){
			layer.msg('系统未知错误');
			return false;
		}
	})
}
//字符长度
function len(s) {
	var l = 0;
	var a = s.split("");
	for (var i = 0; i < a.length ; i++ ) {
		if (a[i].charCodeAt(0) < 299) {
			l++;
		} else {
			l += 3;
		}
	}
	return l;
}
/**
 *清除缓存：
 */
function cleanCache(){
	$.ajax({
		url: "<?php echo url('admin/Clean/cleanCache'); ?>",
		data: {},
		datatype: 'json',
		type: 'POST',
		async: false,
		success:function(res){
			if(res.status == 1){
				layer.msg(res.msg,{time:600,icon:1});
			}
			else{
				layer.msg(res.msg,{time:600,icon:2});
			}
			return 
		},
		error:function(){
			layer.msg('系统未知错误',{time:600,icon:3});
			return false;
		}
	})
}
/**
 * 退出平台:
 */
function logout(){
	$.ajax({
		url: "<?php echo url('admin/Logout/logout'); ?>",
		data: {},
		datatype: 'json',
		type: 'POST',
		async: false,
		success:function(res){
			if(res.status == 1){
				layer.msg(res.msg,{time:600,icon:1});
				setTimeout(jumplogin, 1000);
				return
			}
			else{
				layer.msg(res.msg,{time:600,icon:2});
				return
			}
		},
		error:function(){
			layer.msg('系统未知错误',{time:600,icon:3});
			return false;
		}
	})
}
//跳转网页
function jumplogin(){
	location.href = "<?php echo url('admin/Login/index'); ?>";
}
/**
* 公共函数:修改对象
* updateObj    失去光标时，修改对象，验证是否重复，是否为空
* @param
*       obj      	当前对象
*       oldval      原值
*		tbname		相关表名称
*		field       表字段
*		id       	主键值
*		idfield     主键字段
*		isrepeat    是否验证重复 0否 1是
*/
function updateObj(obj,oldval,tbname,field,id,idfield,isrepeat){
	var newval = $.trim($(obj).val());
	if(!newval || newval == oldval && oldval){
		$(obj).val(oldval);
		return false;
	}
	else{
		$.ajax({
			url: "<?php echo url('admin/Check/checkUpdate'); ?>",
			data: {'content':newval,'field':field,'tbname':tbname,'id':id,'idfield':idfield,'isrepeat':isrepeat},
			datatype: 'json',
			type: 'POST',
			async: false,
			success:function(res){
				if(res.status == 1){
					layer.msg(res.msg,{time:600,icon:1});
					if(tbname == 'admin'){
						$('#'+field+id).html('<input type="text"  value="'+newval+'" onblur="updateObj(this,\''+newval+'\',\''+tbname+'\',\''+field+'\','+id+',\''+idfield+'\',\''+isrepeat+'\')" style="color:black;width:95px;height:30px;border:none; background:transparent;padding: 0px"/>');
					} else if((tbname == 'first_module' && field == 'fm_icon') || (tbname == 'second_module' && field == 'sm_icon') || (tbname == 'three_module' && field == 'tm_icon')){
						$('#'+field+id).html('<i class="'+newval+'"></i><input type="text" value="'+newval+'" onblur="updateObj(this,\''+newval+'\',\''+tbname+'\',\''+field+'\','+id+',\''+idfield+'\',\''+isrepeat+'\')" style="color:#393939;width:77%;border:none; background:transparent;padding: 0px;font-size: 13px;height: 30px;"/>');
					} else if(tbname == 'first_module' || tbname == 'three_module' || tbname == 'second_module' ){
						$('#'+field+id).html('<input type="text" value="'+newval+'" onblur="updateObj(this,\''+newval+'\',\''+tbname+'\',\''+field+'\','+id+',\''+idfield+'\',\''+isrepeat+'\')" style="color:#393939;width:100%;border:none; background:transparent;padding: 0px;font-size: 13px;height: 30px;"/>');
					} else if(tbname == 'role'){
						$('#'+field+id).html('<input type="text" value="'+newval+'" onblur="updateObj(this,\''+newval+'\',\''+tbname+'\',\''+field+'\','+id+',\''+idfield+'\',\''+isrepeat+'\')" style="color:#393939;width:100%;border:none; background:transparent;padding: 0px;font-size: 13px;height: 30px;"/>');
					} else {
						$('#'+field+id).html('<input type="text" value="'+newval+'" onblur="updateObj(this,\''+newval+'\',\''+tbname+'\',\''+field+'\','+id+',\''+idfield+'\',\''+isrepeat+'\')" style="color:#393939;width:100%;border:none; background:transparent;padding: 0px;font-size: 13px;height: 30px;"/>');
					}
				}
				else{
					layer.msg(res.msg,{time:600,icon:2});
					if(tbname == 'admin'){
						$('#'+field+id).html('<input type="text"  value="'+oldval+'" onblur="updateObj(this,\''+oldval+'\',\''+tbname+'\',\''+field+'\','+id+',\''+idfield+'\',\''+isrepeat+'\')" style="color:black;width:95px;height:30px;border:none; background:transparent;padding: 0px"/>');
					} else if((tbname == 'first_module' && field == 'fm_icon') || (tbname == 'second_module' && field == 'sm_icon') || (tbname == 'three_module' && field == 'tm_icon')){
						$('#'+field+id).html('<i class="'+oldval+'"></i><input type="text" value="'+oldval+'" onblur="updateObj(this,\''+oldval+'\',\''+tbname+'\',\''+field+'\','+id+',\''+idfield+'\',\''+isrepeat+'\')" style="color:#393939;width:77%;border:none; background:transparent;padding: 0px;font-size: 13px;height: 30px;"/>');
					} else if(tbname == 'first_module' || tbname == 'three_module' || tbname == 'second_module'){
						$('#'+field+id).html('<input type="text" value="'+oldval+'" onblur="updateObj(this,\''+oldval+'\',\''+tbname+'\',\''+field+'\','+id+',\''+idfield+'\',\''+isrepeat+'\')" style="color:#393939;width:100%;border:none; background:transparent;padding: 0px;font-size: 13px;height: 30px;"/>');
					} else if(tbname == 'role'){
						$('#'+field+id).html('<input type="text" value="'+oldval+'" onblur="updateObj(this,\''+oldval+'\',\''+tbname+'\',\''+field+'\','+id+',\''+idfield+'\',\''+isrepeat+'\')" style="color:#393939;width:100%;border:none; background:transparent;padding: 0px;font-size: 13px;height: 30px;"/>');
					} else {
						$('#'+field+id).html('<input type="text" value="'+oldval+'" onblur="updateObj(this,\''+oldval+'\',\''+tbname+'\',\''+field+'\','+id+',\''+idfield+'\',\''+isrepeat+'\')" style="color:#393939;width:100%;border:none; background:transparent;padding: 0px;font-size: 13px;height: 30px;"/>');
					} 
				}
				return
			},
			error:function(){
				layer.msg('系统未知错误');
				return false;
			}
		})
	}
}
/**
* 公共函数:修改状态(用户管理)
* updateObjState    点击修改状态值
* @param
*		id       	主键值
*		idfield     主键字段
*		stateval    状态值
*       statefield  状态相关字段
*		tbname		相关表名称
*		ismain		是否主要(只有显示与不显示才是主要，其他为不主要) 0否 1是
*		appendfield	附加字段
*		appendval	附加值
*/
function updateObjState(id,idfield,stateval,statefield,tbname,ismain,appendfield,appendval){
	$.ajax({
		url: "<?php echo url('admin/Check/updateObjState'); ?>",
		data: {'id':id,'idfield':idfield,'stateval':stateval,'statefield':statefield,'tbname':tbname,'ismain':ismain,'appendfield':appendfield,'appendval':appendval},
		datatype: 'json',
		type: 'POST',
		async: false,
		success:function(res){
			if(res.status == 1){
				layer.msg(res.msg,{time:600,icon:1});
				if(stateval == 0){
					if(tbname == 'admin'){
						$('#'+statefield+id).html('<span style="color:rgb(10, 184, 48)" onclick="updateObjState('+id+',\''+idfield+'\',1,\''+statefield+'\',\''+tbname+'\',\''+ismain+'\',\''+appendfield+'\',\''+appendval+'\')" >正常</span>');
					} else if(tbname == 'first_module' || tbname == 'second_module' || tbname == 'three_module'){
						$('#'+statefield+id).html('<span style="color:rgb(10, 184, 48)" onclick="updateObjState('+id+',\''+idfield+'\',1,\''+statefield+'\',\''+tbname+'\',\''+ismain+'\',\''+appendfield+'\',\''+appendval+'\')" >是</span>');
					} else if(tbname == 'role'){
						$('#'+statefield+id).html('<span style="color:rgb(10, 184, 48)" onclick="updateObjState('+id+',\''+idfield+'\',1,\''+statefield+'\',\''+tbname+'\',\''+ismain+'\',\''+appendfield+'\',\''+appendval+'\')" >是</span>');
					} else{
						$('#'+statefield+id).html('<span style="color:rgb(10, 184, 48)" onclick="updateObjState('+id+',\''+idfield+'\',1,\''+statefield+'\',\''+tbname+'\',\''+ismain+'\',\''+appendfield+'\',\''+appendval+'\')" >是</span>');
					}
				}
				else{
					if(tbname == 'admin'){
						$('#'+statefield+id).html('<span style="color:#8089a0"  onclick="updateObjState('+id+',\''+idfield+'\',0,\''+statefield+'\',\''+tbname+'\',\''+ismain+'\',\''+appendfield+'\',\''+appendval+'\')" >禁止</span>');
					} else if(tbname == 'first_module' || tbname == 'second_module' || tbname == 'three_module'){
						$('#'+statefield+id).html('<span style="color:#8089a0" onclick="updateObjState('+id+',\''+idfield+'\',0,\''+statefield+'\',\''+tbname+'\',\''+ismain+'\',\''+appendfield+'\',\''+appendval+'\')">否</span>');
					} else if(tbname == 'role'){
						$('#'+statefield+id).html('<span style="color:#8089a0" onclick="updateObjState('+id+',\''+idfield+'\',0,\''+statefield+'\',\''+tbname+'\',\''+ismain+'\',\''+appendfield+'\',\''+appendval+'\')">否</span>');
					} else{
						$('#'+statefield+id).html('<span style="color:#8089a0" onclick="updateObjState('+id+',\''+idfield+'\',0,\''+statefield+'\',\''+tbname+'\',\''+ismain+'\',\''+appendfield+'\',\''+appendval+'\')">否</span>');
					}
				}
				return
			}
			else{
				layer.msg(res.msg,{time:600,icon:2});
				return
			}
		},
		error:function(){
			layer.msg('系统未知错误');
			return false;
		}
	})
}
/**
 * 删除数据:(软删除)
 * @param
 *		id       	主键值
 *		idfield     主键字段
 *		tbname		相关表名称
 */
function deleteObjOne(id,idfield,tbname){
	$.ajax({
		url: "<?php echo url('admin/Check/deleteObjOne'); ?>",
		data: {'id':id,'idfield':idfield,'tbname':tbname},
		datatype: 'json',
		type: 'POST',
		async: false,
		success:function(res){
			if(res.status == 1){
				layer.msg(res.msg,{time:600,icon:1});
				$('#'+tbname+id).remove();
				return
			}
			else{
				layer.msg(res.msg,{time:600,icon:2});
				return
			}
		},
		error:function(){
			layer.msg('系统未知错误',{time:600,icon:3});
			return false;
		}
	})
}
/**
* 公共函数:
* checkObjSelected    改变选项，改变值
* @param
*       obj      	当前对象
*       oldval      原值id
*       oldtext     原文本值
*		field       主表原值表字段
*		tbname		主表名称
*       idfield     主表主键字段
*		idval       主表主键值
*		linktb		相关表名称
*		fieldval    选项主键值
*		fieldname   选项名称
*/
function checkObjSelected(obj,oldval,oldtext,field,tbname,idfield,idval,linktb,fieldval,fieldname){
	var newval = $(obj).val();
	if(newval == oldval){
		return;
	} else {
		$.ajax({
			url: "<?php echo url('admin/Check/checkUpdateSelected'); ?>",
			data: {'newval':newval,'field':field,'tbname':tbname,'idfield':idfield,'idval':idval,'linktb':linktb,'fieldval':fieldval,'fieldname':fieldname},
			datatype: 'json',
			type: 'POST',
			async: false,
			success:function(data){
				if(data.res.status == 1){
					var str1 = '<select class="form-control" style="width:90%;padding:4px 0px;border:none;color:#393939;background:transparent;" onchange="checkObjSelected(this,'+newval+',\''+data.res.name[fieldname]+'\',\''+field+'\',\''+tbname+'\',\''+idfield+'\','+idval+',\''+linktb+'\',\''+fieldval+'\',\''+fieldname+'\')">';
					var str2 = '<option value="'+newval+'" selected="selected">'+data.res.name[fieldname]+'</option>';
					var str3 = '';
					for(i = 0;i < data.lists.length;i++){
						str3 = str3 + '<option value="'+data.lists[i][fieldval]+'">'+data.lists[i][fieldname]+'</option>';
					}
					var str4 = '</select>';
					$('#'+field+idval).html(str1+str2+str3+str4);
					layer.msg(data.res.msg,{time:600,icon:1});
					return;
				}
				else{
					var str1 = '<select class="form-control" style="width:90%;padding:4px 0px;border:none;color:#393939;background:transparent;" onchange="checkObjSelected(this,'+oldval+',\''+oldtext+'\',\''+field+'\',\''+tbname+'\',\''+idfield+'\','+idval+',\''+linktb+'\',\''+fieldval+'\',\''+fieldname+'\')">';
					var str2 = '<option value="'+oldval+'" selected="selected">'+oldtext+'</option>';
					var str3 = '';
					for(i = 0;i < data.lists.length;i++){
						str3 = str3 + '<option value="'+data.lists[i][fieldval]+'">'+data.lists[i][fieldname]+'</option>';
					}
					var str4 = '</select>';
					$('#'+field+idval).html(str1+str2+str3+str4);
					layer.msg(data.res.msg,{time:600,icon:2});
					return;
				}
			},
			error:function(){
				layer.msg('系统未知错误',{time:600,icon:3});
				return false;
			}
		})
	}
}
/**
* 公共函数:
* checkObjTrue    检测当前对象是否正确
* @param
*       obj      	当前对象
*       objfield    当前对象字段
*       referval    参照目标
*		referfield  参照目标字段
*		tbname		表名称
*		rule        验证规则
*/
function checkObjTrue(obj,objfield,referval,referfield,tbname,rule){
	var objval = $.trim($(obj).val());
	if(!objval){
		layer.msg('内容不能为空！',{time:600});
		return false;
	} else {
		$.ajax({
			url: "<?php echo url('admin/Check/checkObjTrue'); ?>",
			data: {'content':objval,'field':objfield,'referval':referval,'referfield':referfield,'tbname':tbname,'rule':rule},
			datatype: 'json',
			type: 'POST',
			async: false,
			success:function(res){
				if(res.status == 1){
					layer.msg(res.msg,{time:600,icon:1});
					return;
				}
				else{
					layer.msg(res.msg,{time:600,icon:2});
					$(obj).val('');
					return;
				}
			},
			error:function(){
				layer.msg('系统未知错误');
				return false;
			}
		})
	}
}
/**
* 公共函数:
* checkObjNew    检测当前对象新值
* @param
*       obj      	当前对象
*       isregular   是否验证正则0否1是
*       express     表达式 password:密码
*		iscompare   是否比较相等0否1是
*		comobj      比较对象
*       comrule     比较规则0不准一致  1必须一致
*       isrepeat    是否验证重复0否1是
*       tbname      表名
*       field       字段
*		rule        验证规则
*/
function checkObjNew(obj,isregular,express,iscompare,comobj,comrule,isrepeat,tbname,field,rule){
	//先写新密码
	var objval = $.trim($(obj).val());
	if(isregular == 1){
		if(express == 'password'){
			if(!(/^[a-zA-Z0-9]{5,16}$/.test(objval))){
				layer.msg('规则：5-16位数字、字母或两者组合');
				$(obj).val('');
				return;
			} else if(iscompare == 1 && comrule == 0){
				if(objval == $.trim($('#'+comobj).val())){
					layer.msg('新内容与原内容不能一致',{time:600});
					$(obj).val('');
					return;
				} else {
					return;
				}
			} else if(iscompare == 1 && comrule == 1){
				if(objval != $.trim($('#'+comobj).val())){
					layer.msg('两次输入的内容必须一致',{time:600});
					$(obj).val('');
					return;
				} else {
					return;
				}
			}
		}
	}
}
/**
* 公共函数:修改对象(修改页面)
* updateCheckObj    失去光标时，修改对象，验证是否重复，是否为空
* @param
*       obj      	当前对象
*       oldval      原值
*		tbname		相关表名称
*		field       表字段
*		id       	主键值
*		idfield     主键字段
*/
function updateCheckObj(obj,oldval,tbname,field,id,idfield){
	var newval = $.trim($(obj).val());
	if(!newval || newval == oldval){
		$(obj).val(oldval);
		return;
	}
	else{
		$.ajax({
			url: "<?php echo url('admin/Check/updateCheckObj'); ?>",
			data: {'content':newval,'field':field,'tbname':tbname,'id':id,'idfield':idfield},
			datatype: 'json',
			type: 'POST',
			async: false,
			success:function(res){
				if(res.status == 1){
					layer.msg(res.msg,{time:600,icon:1});
				} else {
					layer.msg(res.msg,{time:600,icon:2});
					$(obj).val(oldval);
				}
				return;
			},
			error:function(){
				layer.msg('系统未知错误');
				return;
			}
		})
	}
}
/**
* 公共函数:修改对象(修改页面)
* deleteObjMore    删除多个
* @param
*		tbname		相关表名称
*/
function deleteObjMore(tbname){
	var a = [];
	$('input[name*='+tbname+']').each(function(i,o){
		if($(o).is(':checked')){
			a.push($(o).val());
		}
	});
	if(a.length == 0){
		layer.msg('请选中要删除的记录！', {icon: 2});
		return;
	}else{
		$.ajax({
			type :'POST',
			url : "<?php echo url('admin/Check/deleteObjMore'); ?>",
			datatype : 'json',
			data : {'ids':a,'tbname':tbname},
			success : function(res){
				if(res.status == 1){
					layer.msg(res.msg, {icon: 1,time:800});
					for(i =0; i<a.length;i++){
						$('#'+tbname+a[i]).remove();
					}
				}else{
					layer.msg(data.info, {icon: 2});
				}
				return;
			},
			error:function(){
				layer.msg('系统未知错误');
				return false;
			}
		})
	}
}
</script>
		
<script type="text/javascript">
    //获取系统时间
    var newDate = '';
    getLangDate();
    //值小于10时，在前面补0
    function dateFilter(date){
        if(date < 10){return "0"+date;}
        return date;
    }
    function getLangDate(){
        var dateObj = new Date(); //表示当前系统时间的Date对象
        var year = dateObj.getFullYear(); //当前系统时间的完整年份值
        var month = dateObj.getMonth()+1; //当前系统时间的月份值
        var date = dateObj.getDate(); //当前系统时间的月份中的日
        var day = dateObj.getDay(); //当前系统时间中的星期值
        var weeks = ["星期日","星期一","星期二","星期三","星期四","星期五","星期六"];
        var week = weeks[day]; //根据星期值，从数组中获取对应的星期字符串
        var hour = dateObj.getHours(); //当前系统时间的小时值
        var minute = dateObj.getMinutes(); //当前系统时间的分钟值
        var second = dateObj.getSeconds(); //当前系统时间的秒钟值
        var timeValue = "" +((hour >= 12) ? (hour >= 18) ? "晚上" : "下午" : "上午" ); //当前时间属于上午、晚上还是下午
        newDate = dateFilter(year)+"年"+dateFilter(month)+"月"+dateFilter(date)+"日 "+" "+dateFilter(hour)+":"+dateFilter(minute)+":"+dateFilter(second);
        document.getElementById("nowTime").innerHTML = timeValue+"好！ 当前时间为： "+newDate+"　"+week;
        setTimeout("getLangDate()",1000);
    }
</script>

	</body>
</html>
