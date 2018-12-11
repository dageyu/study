<?php /*a:7:{s:57:"D:\wamp64\www\study\application\admin\view\admin\add.html";i:1544523222;s:52:"D:\wamp64\www\study\application\admin\view\main.html";i:1544523244;s:54:"D:\wamp64\www\study\application\admin\view\header.html";i:1543394138;s:55:"D:\wamp64\www\study\application\admin\view\lefttop.html";i:1543394313;s:52:"D:\wamp64\www\study\application\admin\view\left.html";i:1543399647;s:53:"D:\wamp64\www\study\application\admin\view\right.html";i:1544523268;s:54:"D:\wamp64\www\study\application\admin\view\footer.html";i:1543372984;}*/ ?>
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
		<script src="/study/public/static/admin/js/ace-extra.min.js"></script>
		<script src="/study/public/static/admin/js/jquery-2.0.3.min.js"></script>
		<script src="/study/public/static/plug/layer/layer.js" ></script>
		
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
	<li class="" name="active">
		<a href="javascript:jumpModule('Menu','index',0,0)">
			<i class="icon-list"></i>
			<span class="menu-text"> 菜单管理 </span>
		</a>
	</li>
	<li class="active" name="active" id="nav0">
		<a href="javascript:jumpModule('Index','index',0,0)">
			<i class="icon-dashboard"></i>
			<span class="menu-text"> 控制平台 </span>
		</a>
	</li>
	<li class="" name="active" id="nav1">
		<a href="javascript:jumpModule('Admin','list',1,0)" >
			<i class="icon-user"></i>
			<span class="menu-text"> 用户管理 </span>
		</a>							
	</li>
	<li class="" name="active" id="nav2">
		<a href="javascript:jumpModule('Password','changePassword',2,0)" >
			<i class="icon-edit"></i>
			<span class="menu-text"> 修改密码 </span>
		</a>							
	</li>
	<li class="" name="active" id="nav3">
		<a href="javascript:jumpModule('User','index',3,0)" >
			<i class="icon-group"></i>
			<span class="menu-text"> 会员管理 </span>
		</a>							
	</li>
	<li class="" name="active" id="nav5">
		<a href="javascript:jumpModule('Banner','bannerLists',5,0)" >
			<i class="icon-picture"></i>
			<span class="menu-text"> 轮播管理 </span>
		</a>							
	</li>
	<li class="" name="active" id="nav4">
		<a href="" class="dropdown-toggle">
			<i class="icon-list"></i>
			<span class="menu-text"> 商品管理 </span>
			<b class="arrow icon-angle-down"></b>
		</a>
		<ul class="submenu">								
			<li class="" name="activechild" id="nav4child1">
				<a href="javascript:jumpModule('Shop','goodsLists',4,1)" class="dropdown-toggle">
					<i class="icon-double-angle-right"></i>
					商品列表
				</a>
			</li>
			<li class="" name="activechild" id="nav4child2">
				<a href="javascript:jumpModule('Shop','seckillLists',4,2)" class="dropdown-toggle">
					<i class="icon-double-angle-right"></i>
					秒杀列表
				</a>
			</li>
			<li class="" name="activechild" id="nav4child3">
				<a href="javascript:jumpModule('Shop','goodsOrdersLists',4,3)" class="dropdown-toggle">
					<i class="icon-double-angle-right"></i>
					订单列表
				</a>
			</li>
		</ul>
	</li>
	<li class="" name="active" id="nav6">
		<a href="" class="dropdown-toggle">
			<i class="icon-fighter-jet"></i>
			<span class="menu-text"> 线路管理 </span>
			<b class="arrow icon-angle-down"></b>
		</a>
		<ul class="submenu">								
			<li class="" name="activechild" id="nav6child1">
				<a href="javascript:jumpModule('Road','areaLists',6,1)" class="dropdown-toggle">
					<i class="icon-double-angle-right"></i>
					区域列表
				</a>
			</li>
			<li class="" name="activechild" id="nav6child2">
				<a href="javascript:jumpModule('Road','tagLists',6,2)" class="dropdown-toggle">
					<i class="icon-double-angle-right"></i>
					标签列表
				</a>
			</li>
		</ul>
	</li>

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
		<li class="active">用户管理</li>
	</ul>

						<!-- bodyheader end -->
					</div>
					
	<div class="page-content">
		<div class="page-header">
			<h1>
				用户管理
				<small>
					<i class="icon-double-angle-right"></i>
					添加用户
				</small>
			</h1>
		</div>
		<div class="row">
			<div class="col-xs-12">					
				<div class="row">
					<div class="col-xs-12">
						<div class="table-header">
							添加新的用户
						</div>				
						<div class="col-xs-12">
							<form class="form-horizontal" style="margin-top: 20px" id="myform" name="myform">
								<div class="space-4"></div>
								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" style="width:8%"> 电子邮箱 </label>
									<div class="col-sm-9">
										<input type="email" id="admin_email" name="admin_email" placeholder="请输入126或163电子邮箱" maxlength="30" required class="col-xs-10 col-sm-5" onblur="checkObj(this,1,1,'',1,'admin','admin_email')"/><span style="color:red">*</span>
									</div>
								</div>
								<div class="space-4"></div>
								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" style="width:8%"> 用户名 </label>
									<div class="col-sm-9">
										<input type="text" id="admin_name" name="admin_name" placeholder="请输入用户名" maxlength="30" required class="col-xs-10 col-sm-5" onblur="checkObj(this,0,0,'',1,'admin','admin_name')"/><span style="color:red">*</span>
									</div>
								</div>
								<div class="space-4"></div>
								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" style="width:8%"> 设置密码 </label>		
									<div class="col-sm-9">
										<input type="password" id="admin_password" name="admin_password" maxlength="16" required placeholder="5-16位数字、字母或两者组合" class="col-xs-10 col-sm-5" onblur="checkObj(this,1,2,'',0,'','')"/><span style="color:red">*</span>
									</div>
								</div>
								<div class="space-4"></div>
								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" style="width:8%"> 确认密码 </label>		
									<div class="col-sm-9">
										<input type="password" id="admin_checkpassword" name="admin_checkpassword" required placeholder="必须和设置密码一致" maxlength="16" class="col-xs-10 col-sm-5" onblur="checkObj(this,1,2,'admin_password',0,'','')"/><span style="color:red;display:inline">*</span>
									</div>
								</div>
								<div class="space-4"></div>
								<div class="form-group">
									<label class="col-sm-3 control-label no-padding-right" style="width:8%"> 口令 </label>
									<div class="col-sm-9">
										<input type="text" id="admin_secret" name="admin_secret" placeholder="请输入口令" class="col-xs-10 col-sm-5" onblur="checkObj(this,1,3,'',1,'admin','admin_secret')"/><span style="color:gray;margin-left: 2%">注：授权人允许你注册时输入的口令,可以为空！</span>
									</div>
								</div>
								<div class="space-4"></div>									
								<div class="col-md-offset-3 col-md-9" style="margin-left:7%">
									<button class="btn btn-info" type="button" id="button" name="button">
										<i class="icon-ok bigger-110"></i>
										提交
									</button>
								</div>									
							</form>
						</div>					
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
			﻿<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
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
<script>
/**
* 公共函数:add
* checkObj    失去光标时，验证对象是否为空，是否符合正则表达式，是否比较相等
* @param
*       obj      	当前对象
*       ischeck     验证0否1是
*       type        类型0无类型1：126或163邮箱 2：密码5-16位数字、字母或两者组合  3：英文，数字，汉字长度
*       compareobj  比较对象相等
*		isrepeat	验证是否重复0否1是
*		tbname		相关表名称
*		field       表字段
*/
function checkObj(obj,ischeck,type,compareobj,isrepeat,tbname,field){
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
		repeatObj(obj,objval,field,tbname);
	}
}
function compareObj(obj,compareobj){
	if($.trim($(obj).val()) != $.trim($('#'+compareobj).val())){
		layer.msg('两次输入的内容不一致',{time:600});
		$(obj).val('');
		return false;
	}
}
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

</script>
		
<script>
	$("#button").click(function (){
		var admin_name     			= $.trim($('#admin_name').val());
		var admin_email     		= $.trim($('#admin_email').val());
		var admin_password     		= $.trim($('#admin_password').val());
		var admin_checkpassword     = $.trim($('#admin_checkpassword').val());
		var admin_secret     		= $.trim($('#admin_secret').val());		
		if(!admin_name || !admin_email || !admin_password || !admin_checkpassword){
			layer.msg('内容不能为空',{time:600});
			return false;
		}
		else{
			$.ajax({
				url: "<?php echo url('admin/admin/add'); ?>",
				data: $("#myform").serializeArray(),
				datatype: 'json',
				type: 'POST',
				async: false,
				success:function(res){
					if(res.status == 1){
						layer.msg(res.msg,{icon:1});
						return
					}
					else{
						layer.msg(res.msg,{icon:2});
						return
					}
				},
				error:function(){
					layer.msg('系统未知错误');
					return false;
				}
			})
		}
	});
</script>

	</body>
</html>
