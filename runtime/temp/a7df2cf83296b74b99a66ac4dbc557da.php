<?php /*a:7:{s:59:"D:\wamp64\www\study\application\admin\view\power\index.html";i:1546683087;s:52:"D:\wamp64\www\study\application\admin\view\main.html";i:1546537642;s:54:"D:\wamp64\www\study\application\admin\view\header.html";i:1543394138;s:55:"D:\wamp64\www\study\application\admin\view\lefttop.html";i:1543394313;s:52:"D:\wamp64\www\study\application\admin\view\left.html";i:1546518218;s:53:"D:\wamp64\www\study\application\admin\view\right.html";i:1544523435;s:54:"D:\wamp64\www\study\application\admin\view\footer.html";i:1543372984;}*/ ?>
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
			<i class="icon-desktop"></i>
			<span class="menu-text"> 菜单管理 </span>
		</a>
	</li>
	<li class="" name="active" id="nav0">
		<a href="javascript:jumpModule('Index','index',0,0)">
			<i class="icon-dashboard"></i>
			<span class="menu-text"> 控制平台 </span>
		</a>
	</li>
	<li class="active" name="active" id="nav00">
		<a href="javascript:jumpModule('Power','index',0,0)">
			<i class="icon-dashboard"></i>
			<span class="menu-text"> 权限管理 </span>
		</a>
	</li>
	<li class="" name="active" id="nav1">
		<a href="javascript:jumpModule('Admin','list',1,0)" >
			<i class="icon-user"></i>
			<span class="menu-text"> 用户管理 </span>
		</a>							
	</li>
	<li class="" name="active" id="nav2">
		<a href="javascript:jumpModule('Password','change',2,0)" >
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
		<li class="active">权限管理</li>
	</ul>

						<!-- bodyheader end -->
					</div>
					
	<div class="page-content">
		<div class="page-header">
			<h1>
				权限管理
				<small>
					<i class="icon-double-angle-right"></i>
					权限列表
				</small>
			</h1>
		</div>
		<div class="row">
			<div class="col-xs-12">
				<div class="table-header">
					权限列表
				</div>
				<div class="table-responsive">
					<div id="sample-table-2_wrapper" class="dataTables_wrapper">
						<div class="row">
							<div class="col-sm-6" style="width:100%">
								<div style="display:inline">
									管理员名称:
									<select style="width:20%;padding:4px 0px;height:32px;">
										<option value="">请选择管理员</option>
										<?php if(is_array($lists) || $lists instanceof \think\Collection || $lists instanceof \think\Paginator): $i = 0; $__LIST__ = $lists;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$list): $mod = ($i % 2 );++$i;?>
										<option value="<?php echo htmlentities($list['admin_id']); ?>"><?php echo htmlentities($list['admin_name']); ?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo htmlentities($list['admin_nickname']); ?></option>
										<?php endforeach; endif; else: echo "" ;endif; ?>
									</select>
								</div>
								<div style="display:inline;margin-left:2%;">
									权限等级:
									<select style="width:13%;padding:4px 0px;height:32px;" onchange="show_box(this)">
										<option value="">请选择权限等级</option>
										<option value="1">普通管理员</option>
										<option value="2">专职管理员</option>
									</select>
								</div>
							</div>													
						</div>
						<div style="display:none;" id="putong">
							<div style="margin-left:5%;margin-right:5%;margin-top:5px;">
								<?php if(is_array($ro_lists) || $ro_lists instanceof \think\Collection || $ro_lists instanceof \think\Paginator): $i = 0; $__LIST__ = $ro_lists;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$ro_list): $mod = ($i % 2 );++$i;?>
								<div style="display:inline-block;width:24%;line-height:33px;">
									<label>
										<input name="form-field-radio" type="radio" class="ace" value="<?php echo htmlentities($ro_list['fm_id']); ?>"><span class="lbl"><?php echo htmlentities($ro_list['fm_name']); ?>(<?php echo htmlentities($ro_list['role_name']); ?>)</span>
									</label>
								</div>
								<?php endforeach; endif; else: echo "" ;endif; ?>
							</div>
							<div class="col-md-offset-3 col-md-9" style="margin-left:4%;margin-top:15px;">
								<button class="btn btn-info" type="button" id="button" name="button">
									<i class="icon-ok bigger-110"></i>
									提交
								</button>
							</div>
						</div>
						<div style="display:block;" id="zhuanzhi">
							<div style="margin-left:2%;margin-top:5px;">
								<?php if(is_array($fm_lists) || $fm_lists instanceof \think\Collection || $fm_lists instanceof \think\Paginator): $i = 0; $__LIST__ = $fm_lists;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$fm_list): $mod = ($i % 2 );++$i;?>
								<div style="display:inline-block;width:100%;line-height:25px;">
									<label>
										<input name="form-field-checkbox" type="checkbox" class="ace ace-checkbox-2" value="<?php echo htmlentities($fm_list['fm_id']); ?>" id="fm_name<?php echo htmlentities($fm_list['fm_id']); ?>" name="fm_name" onclick="changeChild(this,'fm_name',<?php echo htmlentities($fm_list['is_parent']); ?>)"><span class="lbl" style="font-weight:600"><?php echo htmlentities($fm_list['fm_name']); ?></span>
									</label>
									<div style="width:100%;margin-left:15px;">
										<?php if($fm_list['is_parent'] == '1'): if(is_array($sm_lists) || $sm_lists instanceof \think\Collection || $sm_lists instanceof \think\Paginator): $i = 0; $__LIST__ = $sm_lists;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$sm_list): $mod = ($i % 2 );++$i;if($sm_list['fm_id'] == $fm_list['fm_id']): ?>
													<label>
														<input name="form-field-checkbox" type="checkbox" class="ace ace-checkbox-2" value="<?php echo htmlentities($sm_list['sm_id']); ?>" id="sm_name<?php echo htmlentities($sm_list['sm_id']); ?>" name="sm_name"><span class="lbl" style="margin-right: 5px;"><?php echo htmlentities($sm_list['sm_name']); ?></span>
													</label>
												<?php endif; ?>
											<?php endforeach; endif; else: echo "" ;endif; ?>
										<?php endif; ?>
									</div>
								</div>
								<?php endforeach; endif; else: echo "" ;endif; ?>
							</div>
							<div class="col-md-offset-3 col-md-9" style="margin-left:1%;margin-top:15px;">
								<button class="btn btn-info" type="button" id="buttons" name="buttons">
									<i class="icon-ok bigger-110"></i>
									提交
								</button>
							</div>
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
				setInterval(jumplogin, 1000);
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
					}
				}
				else{
					if(tbname == 'admin'){
						$('#'+statefield+id).html('<span style="color:#8089a0"  onclick="updateObjState('+id+',\''+idfield+'\',0,\''+statefield+'\',\''+tbname+'\',\''+ismain+'\',\''+appendfield+'\',\''+appendval+'\')" >禁止</span>');
					} else if(tbname == 'first_module' || tbname == 'second_module' || tbname == 'three_module'){
						$('#'+statefield+id).html('<span style="color:#8089a0" onclick="updateObjState('+id+',\''+idfield+'\',0,\''+statefield+'\',\''+tbname+'\',\''+ismain+'\',\''+appendfield+'\',\''+appendval+'\')">否</span>');
					} else if(tbname == 'role'){
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
*       oldval      原值
*		field       原值表字段
*		tbname		表名称
*       idfield     主键字段
*		idval       主键值
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
					return
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
					return
				}
			},
			error:function(){
				layer.msg('系统未知错误',{time:600,icon:3});
				return false;
			}
		})
	}
}
</script>
		
	</body>
</html>

