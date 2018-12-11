<?php /*a:7:{s:59:"D:\wamp64\www\study\application\admin\view\admin\index.html";i:1544522370;s:52:"D:\wamp64\www\study\application\admin\view\main.html";i:1544520019;s:54:"D:\wamp64\www\study\application\admin\view\header.html";i:1543394138;s:55:"D:\wamp64\www\study\application\admin\view\lefttop.html";i:1543394313;s:52:"D:\wamp64\www\study\application\admin\view\left.html";i:1543399647;s:53:"D:\wamp64\www\study\application\admin\view\right.html";i:1543395263;s:54:"D:\wamp64\www\study\application\admin\view\footer.html";i:1543372984;}*/ ?>
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
				<div class="table-header">
					后台管理员列表
				</div>
				<div class="table-responsive">
					<div id="sample-table-2_wrapper" class="dataTables_wrapper">
						<div class="row">
							<div class="col-sm-6" style="width:100%">
								<div style="display:inline">
									<a href="<?php echo url('admin/admin/add'); ?>"><i class="icon-plus" style="margin-right: 0.5%"></i>添加用户</a>
								</div>											
							</div>													
						</div>
						<table class="table table-striped table-bordered table-hover" style="padding: 1px 1px">
							<thead>
								<tr style="height:45px">
									<th style="width:5%;text-align: center">排序</th>																									
									<th style="width:11%;padding:8px 3px">用户名</th>
									<th style="width:13%;padding:8px 3px">昵称</th>	
									<th class="hidden-480" style="width:9%;padding:8px 3px">头像</th>														
									<th class="hidden-480" style="width:7%;padding:8px 3px">状态</th>
									<th style="width:21%;padding:8px 3px">电子邮箱</th>													
									<th style="width:18%;padding:8px 3px">
										<i class="icon-time bigger-110 hidden-480"></i>
										上次登录时间
									</th>															
									<th class="hidden-480" style="width:18%;padding:8px 3px">上次登录ip</th>
								</tr>
							</thead>
							<tbody>
								<?php if(is_array($lists) || $lists instanceof \think\Collection || $lists instanceof \think\Paginator): $i = 0; $__LIST__ = $lists;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$list): $mod = ($i % 2 );++$i;?>
								<tr style="height:40px">
									<td class="center" style="vertical-align:middle;padding:4px"><?php echo htmlentities($i); ?></td>																											
									<td style="vertical-align:middle;padding:4px">
										<a href="#" style="color:#393939"><?php echo htmlentities($list['admin_name']); ?></a>
									</td>
									<td style="vertical-align:middle;padding:4px" id="admin_nickname<?php echo htmlentities($list['admin_id']); ?>">
										<input type="text"  value="<?php echo htmlentities($list['admin_nickname']); ?>" onblur="updateObj(this,'<?php echo htmlentities($list['admin_nickname']); ?>','admin','admin_nickname',<?php echo htmlentities($list['admin_id']); ?>,'admin_id')" style="color:black;width:95px;height:30px;border:none; background:transparent;padding: 0px"/>
									</td>
									<td style="vertical-align:middle;padding:4px">
											<?php echo htmlentities($list['admin_image']); ?>
									</td>
									<td style="vertical-align:middle;padding:4px" id="admin_state<?php echo htmlentities($list['admin_id']); ?>">
										<?php if($list['admin_state'] == '1'): ?>
											<span style="color:rgb(10, 184, 48)" <?php if(($list['admin_vip'] == 0)): ?>onclick="updateObjState(<?php echo htmlentities($list['admin_id']); ?>,'admin_id',<?php echo htmlentities($list['admin_state']); ?>,'admin_state','admin')"<?php endif; ?>>正常</span>
										<?php else: ?>
											<span style="color:#8089a0" <?php if(($list['admin_vip'] == 0)): ?>onclick="updateObjState(<?php echo htmlentities($list['admin_id']); ?>,'admin_id',<?php echo htmlentities($list['admin_state']); ?>,'admin_state','admin')"<?php endif; ?>>禁止</span>
										<?php endif; ?>
									</td>
									<td class="hidden-480" style="vertical-align:middle;padding:4px"><?php echo htmlentities($list['admin_email']); ?></td>
									<td class="hidden-480" style="vertical-align:middle;padding:4px"><?php echo htmlentities(date("Y-m-d H:i:s",!is_numeric($list['admin_time'])? strtotime($list['admin_time']) : $list['admin_time'])); ?></td>
									<td style="vertical-align:middle;padding:4px"><?php echo htmlentities($list['admin_ip']); ?></td>															
								</tr>
								<?php endforeach; endif; else: echo "" ;endif; ?>
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
		url: "<?php echo url('index/Check/checkAdd'); ?>",
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
/**
* 公共函数:update
* updateObj    失去光标时，修改对象，验证是否重复，是否为空
* @param
*       obj      	当前对象
*       oldval      原值
*		tbname		相关表名称
*		field       表字段
*		id       	主键值
*		idfield     主键字段
*/
function updateObj(obj,oldval,tbname,field,id,idfield){
	var newval = $.trim($(obj).val());
	if(!newval || newval == oldval && oldval){
		$(obj).val(oldval);
		return false;
	}
	else{
		$.ajax({
			url: "<?php echo url('admin/Check/checkUpdate'); ?>",
			data: {'content':newval,'field':field,'tbname':tbname,'id':id,'idfield':idfield},
			datatype: 'json',
			type: 'POST',
			async: false,
			success:function(res){
				if(res.status == 1){
					layer.msg(res.msg,{time:600,icon:1});
					if(tbname == 'admin'){
						$('#'+field+id).html('<input type="text"  value="'+newval+'" onblur="updateObj(this,\''+newval+'\',\''+tbname+'\',\''+field+'\','+id+',\''+idfield+'\')" style="color:black;width:95px;height:30px;border:none; background:transparent;padding: 0px"/>');
					}
					return
				}
				else{
					layer.msg(res.msg,{time:600,icon:2});
					if(tbname == 'admin'){
						$('#'+field+id).html('<input type="text"  value="'+oldval+'" onblur="updateObj(this,\''+oldval+'\',\''+tbname+'\',\''+field+'\','+id+',\''+idfield+'\')" style="color:black;width:95px;height:30px;border:none; background:transparent;padding: 0px"/>');
					}
					return
				}
			},
			error:function(){
				layer.msg('系统未知错误');
				return false;
			}
		})
	}
}
//修改状态(用户管理)
function updateObjState(id,idfield,stateval,statefield,tbname){
	$.ajax({
		url: "<?php echo url('admin/Check/updateObjState'); ?>",
		data: {'id':id,'idfield':idfield,'stateval':stateval,'statefield':statefield,'tbname':tbname},
		datatype: 'json',
		type: 'POST',
		async: false,
		success:function(res){
			if(res.status == 1){
				layer.msg(res.msg,{time:600,icon:1});
				if(stateval == 0){
					$('#'+statefield+id).html('<span style="color:rgb(10, 184, 48)" onclick="updateObjState('+id+',\''+idfield+'\',1,\''+statefield+'\',\''+tbname+'\')" >正常</span>');
				}
				else{
					$('#'+statefield+id).html('<span style="color:#8089a0"  onclick="updateObjState('+id+',\''+idfield+'\',0,\''+statefield+'\',\''+tbname+'\')" >禁止</span>');
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
</script>

	</body>
</html>

