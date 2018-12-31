<?php /*a:7:{s:58:"D:\wamp64\www\study\application\admin\view\menu\index.html";i:1546050399;s:52:"D:\wamp64\www\study\application\admin\view\main.html";i:1546050461;s:54:"D:\wamp64\www\study\application\admin\view\header.html";i:1543394138;s:55:"D:\wamp64\www\study\application\admin\view\lefttop.html";i:1543394313;s:52:"D:\wamp64\www\study\application\admin\view\left.html";i:1545043230;s:53:"D:\wamp64\www\study\application\admin\view\right.html";i:1544523435;s:54:"D:\wamp64\www\study\application\admin\view\footer.html";i:1543372984;}*/ ?>
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
			<span class="menu-text"> 数据管理 </span>
		</a>
	</li>
	<li class="" name="active">
		<a href="javascript:logout()">
			<i class="icon-off"></i>
			<span class="menu-text"> 退出平台 </span>
		</a>
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
		<li class="active">菜单管理</li>
	</ul>

						<!-- bodyheader end -->
					</div>
					
	<div class="page-content">
		<div class="page-header">
			<h1>
				菜单管理
				<small>
					<i class="icon-double-angle-right"></i>
					菜单列表
				</small>
			</h1>
		</div>
		<div class="row">
			<div class="col-xs-12">
				<div class="table-header">
					菜单列表
				</div>
				<div class="table-responsive">
					<div id="sample-table-2_wrapper" class="dataTables_wrapper">
						<div class="row">
							<div class="col-sm-6" style="width:100%">
								<div style="display:inline">
									<a href="<?php echo url('admin/menu/add',['is_parent'=>0,'tbname'=>'first_module','field'=>'fm_name','parent_id'=>0,'parent_field'=>'']); ?>"><i class="icon-plus" style="margin-right: 0.5%"></i>添加一级模块</a>
								</div>											
							</div>													
						</div>
						<table class="table table-striped table-bordered table-hover" style="padding: 1px 1px">
							<thead>
								<tr style="height:45px">
									<th style="width:6%;text-align: center">排序</th>
									<th style="width:20%;padding:8px 3px;text-align: center">前置标签</th>																									
									<th style="width:8%;padding:8px 3px;text-align: center">一级模块</th>
									<th style="width:10%;padding:8px 3px;text-align: center">二级模块</th>
									<th style="width:8%;padding:8px 3px;text-align: center">三级模块</th>
									<th style="width:9%;padding:8px 3px;text-align: center">控制器</th>	
									<th class="hidden-480" style="width:9%;padding:8px 3px;text-align: center">方法名称</th>														
									<th class="hidden-480" style="width:4%;padding:8px 3px;text-align: center">显示</th>
									<th class="hidden-480" style="width:4%;padding:8px 3px;text-align: center">父类</th>
									<th style="width:16%;padding:8px 3px;text-align: center">
										<i class="icon-time bigger-110 hidden-480"></i>
										更新时间
									</th>	
									<th style="padding:8px 3px;text-align: center">操作</th>														
								</tr>
							</thead>
							<tbody>
								<?php if(is_array($fm_lists) || $fm_lists instanceof \think\Collection || $fm_lists instanceof \think\Paginator): $fkey = 0; $__LIST__ = $fm_lists;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$fm_list): $mod = ($fkey % 2 );++$fkey;?>
								<tr style="height:40px" id="first_module<?php echo htmlentities($fm_list['fm_id']); ?>">
									<td class="center" style="vertical-align:middle;padding:4px"><?php echo htmlentities($fkey); ?></td>
									<td style="vertical-align:middle;padding:4px;" id="fm_icon<?php echo htmlentities($fm_list['fm_id']); ?>">
										<i class="<?php echo htmlentities($fm_list['fm_icon']); ?>"></i>
										<input type="text" value="<?php echo htmlentities($fm_list['fm_icon']); ?>" onblur="updateObj(this,'<?php echo htmlentities($fm_list['fm_icon']); ?>','first_module','fm_icon','<?php echo htmlentities($fm_list['fm_id']); ?>','fm_id',1)" style="color:#393939;width:145px;border:none; background:transparent;padding: 0px;font-size: 13px;height: 30px;"/>
									</td>																											
									<td style="vertical-align:middle;padding:4px;" id="fm_name<?php echo htmlentities($fm_list['fm_id']); ?>">
										<input type="text" value="<?php echo htmlentities($fm_list['fm_name']); ?>" onblur="updateObj(this,'<?php echo htmlentities($fm_list['fm_name']); ?>','first_module','fm_name','<?php echo htmlentities($fm_list['fm_id']); ?>','fm_id',1)" style="color:#393939;width:60px;border:none; background:transparent;padding: 0px;font-size: 13px;height: 30px;"/>
									</td>
									<td style="vertical-align:middle;padding:4px">
									</td>
									<td style="vertical-align:middle;padding:4px">
									</td>
									<td style="vertical-align:middle;padding:4px" id="fm_controller<?php echo htmlentities($fm_list['fm_id']); ?>">
										<input type="text" value="<?php echo htmlentities($fm_list['fm_controller']); ?>" onblur="updateObj(this,'<?php echo htmlentities($fm_list['fm_controller']); ?>','first_module','fm_controller','<?php echo htmlentities($fm_list['fm_id']); ?>','fm_id',1)" style="color:#393939;width:70px;border:none; background:transparent;padding: 0px;font-size: 13px;height: 30px;"/>
									</td>
									<td style="vertical-align:middle;padding:4px" id="fm_method<?php echo htmlentities($fm_list['fm_id']); ?>">
										<input type="text" value="<?php echo htmlentities($fm_list['fm_method']); ?>" onblur="updateObj(this,'<?php echo htmlentities($fm_list['fm_method']); ?>','first_module','fm_method','<?php echo htmlentities($fm_list['fm_id']); ?>','fm_id',0)" style="color:#393939;width:70px;border:none; background:transparent;padding: 0px;font-size: 13px;height: 30px;"/>
									</td>
									<td style="vertical-align:middle;padding:4px;text-align: center;" id="fm_state<?php echo htmlentities($fm_list['fm_id']); ?>">
										<?php if($fm_list['fm_state'] == '1'): ?>
											<span style="color:rgb(10, 184, 48);" onclick="updateObjState(<?php echo htmlentities($fm_list['fm_id']); ?>,'fm_id',<?php echo htmlentities($fm_list['fm_state']); ?>,'fm_state','first_module',1,'fm_addtime','<?php echo htmlentities((isset($fm_list['fm_addtime']) && ($fm_list['fm_addtime'] !== '')?$fm_list['fm_addtime']:0)); ?>')">是</span>
										<?php else: ?>
											<span style="color:#8089a0;" onclick="updateObjState(<?php echo htmlentities($fm_list['fm_id']); ?>,'fm_id',<?php echo htmlentities($fm_list['fm_state']); ?>,'fm_state','first_module',1,'fm_addtime','<?php echo htmlentities((isset($fm_list['fm_addtime']) && ($fm_list['fm_addtime'] !== '')?$fm_list['fm_addtime']:0)); ?>')">否</span>
										<?php endif; ?>
									</td>
									<td style="vertical-align:middle;padding:4px;text-align: center;" id="is_parent<?php echo htmlentities($fm_list['fm_id']); ?>">
										<?php if($fm_list['is_parent'] == '1'): ?>
											<span style="color:rgb(10, 184, 48);" onclick="updateObjState(<?php echo htmlentities($fm_list['fm_id']); ?>,'fm_id',<?php echo htmlentities($fm_list['is_parent']); ?>,'is_parent','first_module',0,'','')">是</span>
										<?php else: ?>
											<span style="color:#8089a0;" onclick="updateObjState(<?php echo htmlentities($fm_list['fm_id']); ?>,'fm_id',<?php echo htmlentities($fm_list['is_parent']); ?>,'is_parent','first_module',0,'','')">否</span>
										<?php endif; ?>
									</td>
									<td class="hidden-480" style="vertical-align:middle;padding:4px;text-align: center;" id="fm_addtime<?php echo htmlentities($fm_list['fm_id']); ?>">
										<?php echo htmlentities(date("Y-m-d H:i:s",!is_numeric($fm_list['fm_addtime'])? strtotime($fm_list['fm_addtime']) : $fm_list['fm_addtime'])); ?>
									</td>
									<td style="padding:2px;line-height: 0;vertical-align: middle;text-align: center">
										<div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
											<?php if($fm_list['is_parent'] == '1'): ?>
											<a class="blue" href="<?php echo url('admin/menu/add',array('is_parent'=>1,'tbname'=>'second_module','field'=>'sm_name','parent_id'=>$fm_list['fm_id'],'parent_field'=>'fm_id')); ?>" style="margin:0 1px">
												<i class="icon-plus bigger-110"></i>
											</a>
											<?php endif; ?>
											<div id="" style="display:inline">
												<a class="red" href="javascript:deleteObjOne(<?php echo htmlentities($fm_list['fm_id']); ?>,'fm_id','first_module')" style="margin:0 1px" >
													<i class="icon-trash bigger-110"></i>
												</a>
											</div>
										</div>
									</td>
								</tr>
								<?php if($fm_list['is_parent'] == '1'): if(is_array($sm_lists) || $sm_lists instanceof \think\Collection || $sm_lists instanceof \think\Paginator): $skey = 0; $__LIST__ = $sm_lists;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$sm_list): $mod = ($skey % 2 );++$skey;if($sm_list['fm_id'] == $fm_list['fm_id']): ?>
										<tr style="height:40px" id="second_module<?php echo htmlentities($sm_list['sm_id']); ?>">
											<td class="center" style="vertical-align:middle;padding:4px"><?php echo htmlentities($fkey); ?>.<?php echo htmlentities($sm_list['sm_sort']); ?></td>
											<td style="vertical-align:middle;padding:4px" id="sm_icon<?php echo htmlentities($sm_list['sm_id']); ?>">
												<i class="<?php echo htmlentities($sm_list['sm_icon']); ?>"></i>
												<input type="text" value="<?php echo htmlentities($sm_list['sm_icon']); ?>" onblur="updateObj(this,'<?php echo htmlentities($sm_list['sm_icon']); ?>','second_module','sm_icon','<?php echo htmlentities($sm_list['sm_id']); ?>','sm_id',1)" style="color:#393939;width:145px;border:none; background:transparent;padding: 0px;font-size: 13px;height: 30px;"/>
											</td>
											<td style="vertical-align:middle;padding:4px">
											</td>
											<td style="vertical-align:middle;padding:4px" id="sm_name<?php echo htmlentities($sm_list['sm_id']); ?>">
												<input type="text" value="<?php echo htmlentities($sm_list['sm_name']); ?>" onblur="updateObj(this,'<?php echo htmlentities($sm_list['sm_name']); ?>','second_module','sm_name','<?php echo htmlentities($sm_list['sm_id']); ?>','sm_id',0)" style="color:#393939;width:85px;border:none; background:transparent;padding: 0px;font-size: 13px;height: 30px;"/>
											</td>
											<td style="vertical-align:middle;padding:4px">
											</td>
											<td style="vertical-align:middle;padding:4px" id="sm_controller<?php echo htmlentities($sm_list['sm_id']); ?>">
												<input type="text" value="<?php echo htmlentities($sm_list['sm_controller']); ?>" onblur="updateObj(this,'<?php echo htmlentities($sm_list['sm_controller']); ?>','second_module','sm_controller','<?php echo htmlentities($sm_list['sm_id']); ?>','sm_id',0)" style="color:#393939;width:70px;border:none; background:transparent;padding: 0px;font-size: 13px;height: 30px;"/>
											</td>
											<td style="vertical-align:middle;padding:4px" id="sm_method<?php echo htmlentities($sm_list['sm_id']); ?>">
												<input type="text" value="<?php echo htmlentities($sm_list['sm_method']); ?>" onblur="updateObj(this,'<?php echo htmlentities($sm_list['sm_method']); ?>','second_module','sm_method','<?php echo htmlentities($sm_list['sm_id']); ?>','sm_id',0)" style="color:#393939;width:70px;border:none; background:transparent;padding: 0px;font-size: 13px;height: 30px;"/>
											</td>
											<td style="vertical-align:middle;padding:4px;text-align: center;" id="sm_state<?php echo htmlentities($sm_list['sm_id']); ?>">
												<?php if($sm_list['sm_state'] == '1'): ?>
													<span style="color:rgb(10, 184, 48);" onclick="updateObjState(<?php echo htmlentities($sm_list['sm_id']); ?>,'sm_id',<?php echo htmlentities($sm_list['sm_state']); ?>,'sm_state','second_module',1,'sm_addtime','<?php echo htmlentities((isset($sm_list['sm_addtime']) && ($sm_list['sm_addtime'] !== '')?$sm_list['sm_addtime']:0)); ?>')">是</span>
												<?php else: ?>
													<span style="color:#8089a0;" onclick="updateObjState(<?php echo htmlentities($sm_list['sm_id']); ?>,'sm_id',<?php echo htmlentities($sm_list['sm_state']); ?>,'sm_state','second_module',1,'sm_addtime','<?php echo htmlentities((isset($sm_list['sm_addtime']) && ($sm_list['sm_addtime'] !== '')?$sm_list['sm_addtime']:0)); ?>')">否</span>
												<?php endif; ?>
											</td>
											<td style="vertical-align:middle;padding:4px;text-align: center;" id="is_parents<?php echo htmlentities($sm_list['sm_id']); ?>">
												<?php if($sm_list['is_parents'] == '1'): ?>
													<span style="color:rgb(10, 184, 48);" onclick="updateObjState(<?php echo htmlentities($sm_list['sm_id']); ?>,'sm_id',<?php echo htmlentities($sm_list['is_parents']); ?>,'is_parents','second_module',0,'','')">是</span>
												<?php else: ?>
													<span style="color:#8089a0;" onclick="updateObjState(<?php echo htmlentities($sm_list['sm_id']); ?>,'sm_id',<?php echo htmlentities($sm_list['is_parents']); ?>,'is_parents','second_module',0,'','')">否</span>
												<?php endif; ?>
											</td>
											<td class="hidden-480" style="vertical-align:middle;padding:4px;text-align: center;">
												<?php echo htmlentities(date("Y-m-d H:i:s",!is_numeric($sm_list['sm_addtime'])? strtotime($sm_list['sm_addtime']) : $sm_list['sm_addtime'])); ?>
											</td>
											<td style="padding:2px;line-height: 0;vertical-align: middle;text-align: center">
												<div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
													<?php if($sm_list['is_parents'] == '1'): ?>
													<a class="blue" href="<?php echo url('admin/menu/add',array('is_parent'=>1,'tbname'=>'three_module','field'=>'tm_name','parent_id'=>$sm_list['sm_id'],'parent_field'=>'sm_id')); ?>" style="margin:0 1px">
														<i class="icon-plus bigger-110"></i>
													</a>
													<?php endif; ?>
													<div id="" style="display:inline">
														<a class="red" href="javascript:deleteObjOne(<?php echo htmlentities($sm_list['sm_id']); ?>,'sm_id','second_module')" style="margin:0 1px" >
															<i class="icon-trash bigger-110"></i>
														</a>
													</div>
												</div>
											</td>
										</tr>
											<?php if($sm_list['is_parents'] == '1'): if(is_array($tm_lists) || $tm_lists instanceof \think\Collection || $tm_lists instanceof \think\Paginator): $tkey = 0; $__LIST__ = $tm_lists;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$tm_list): $mod = ($tkey % 2 );++$tkey;if($tm_list['sm_id'] == $sm_list['sm_id']): ?>
												<tr style="height:40px" id="three_module<?php echo htmlentities($tm_list['tm_id']); ?>">
													<td class="center" style="vertical-align:middle;padding:4px"><?php echo htmlentities($fkey); ?>.<?php echo htmlentities($sm_list['sm_sort']); ?>.<?php echo htmlentities($tm_list['tm_sort']); ?></td>
													<td style="vertical-align:middle;padding:4px" id="tm_icon<?php echo htmlentities($tm_list['tm_id']); ?>">
														<i class="<?php echo htmlentities($tm_list['tm_icon']); ?>"></i>
														<input type="text" value="<?php echo htmlentities($tm_list['tm_icon']); ?>" onblur="updateObj(this,'<?php echo htmlentities($tm_list['tm_icon']); ?>','three_module','tm_icon','<?php echo htmlentities($tm_list['tm_id']); ?>','tm_id',1)" style="color:#393939;width:145px;border:none; background:transparent;padding: 0px;font-size: 13px;height: 30px;"/>
													</td>																											
													<td style="vertical-align:middle;padding:4px">
													</td>
													<td style="vertical-align:middle;padding:4px">
													</td>
													<td style="vertical-align:middle;padding:4px" id="tm_name<?php echo htmlentities($tm_list['tm_id']); ?>">
														<input type="text" value="<?php echo htmlentities($tm_list['tm_name']); ?>" onblur="updateObj(this,'<?php echo htmlentities($tm_list['tm_name']); ?>','three_module','tm_name','<?php echo htmlentities($tm_list['tm_id']); ?>','tm_id',0)" style="color:#393939;width:60px;border:none; background:transparent;padding: 0px;font-size: 13px;height: 30px;"/>
													</td>
													<td style="vertical-align:middle;padding:4px" id="tm_controller<?php echo htmlentities($tm_list['tm_id']); ?>">
														<input type="text" value="<?php echo htmlentities($tm_list['tm_controller']); ?>" onblur="updateObj(this,'<?php echo htmlentities($tm_list['tm_controller']); ?>','three_module','tm_controller','<?php echo htmlentities($tm_list['tm_id']); ?>','tm_id',0)" style="color:#393939;width:70px;border:none; background:transparent;padding: 0px;font-size: 13px;height: 30px;"/>
													</td>
													<td style="vertical-align:middle;padding:4px" id="tm_method<?php echo htmlentities($tm_list['tm_id']); ?>">
														<input type="text" value="<?php echo htmlentities($tm_list['tm_method']); ?>" onblur="updateObj(this,'<?php echo htmlentities($tm_list['tm_method']); ?>','three_module','tm_method','<?php echo htmlentities($tm_list['tm_id']); ?>','tm_id',0)" style="color:#393939;width:70px;border:none; background:transparent;padding: 0px;font-size: 13px;height: 30px;"/>
													</td>
													<td style="vertical-align:middle;padding:4px;text-align: center;" id="tm_state<?php echo htmlentities($tm_list['tm_id']); ?>">
														<?php if($tm_list['tm_state'] == '1'): ?>
															<span style="color:rgb(10, 184, 48);" onclick="updateObjState(<?php echo htmlentities($tm_list['tm_id']); ?>,'tm_id',<?php echo htmlentities($tm_list['tm_state']); ?>,'tm_state','three_module',1,'tm_addtime','<?php echo htmlentities((isset($tm_list['tm_addtime']) && ($tm_list['tm_addtime'] !== '')?$tm_list['tm_addtime']:0)); ?>')">是</span>
														<?php else: ?>
															<span style="color:#8089a0;" onclick="updateObjState(<?php echo htmlentities($tm_list['tm_id']); ?>,'tm_id',<?php echo htmlentities($tm_list['tm_state']); ?>,'tm_state','three_module',1,'tm_addtime','<?php echo htmlentities((isset($tm_list['tm_addtime']) && ($tm_list['tm_addtime'] !== '')?$tm_list['tm_addtime']:0)); ?>')">否</span>
														<?php endif; ?>
													</td>
													<td style="vertical-align:middle;padding:4px;text-align: center;" id="">													
													</td>
													<td class="hidden-480" style="vertical-align:middle;padding:4px;text-align: center;">
														<?php echo htmlentities(date("Y-m-d H:i:s",!is_numeric($tm_list['tm_addtime'])? strtotime($tm_list['tm_addtime']) : $tm_list['tm_addtime'])); ?>
													</td>
													<td style="padding:2px;line-height: 0;vertical-align: middle;text-align: center">
														<div class="visible-md visible-lg hidden-sm hidden-xs action-buttons">
															<div id="" style="display:inline">
																<a class="red" href="javascript:deleteObjOne(<?php echo htmlentities($tm_list['tm_id']); ?>,'tm_id','three_module')" style="margin:0 1px" >
																	<i class="icon-trash bigger-110"></i>
																</a>
															</div>
														</div>
													</td>
												</tr>
											<?php endif; ?>
											<?php endforeach; endif; else: echo "" ;endif; ?>
											<?php endif; ?>
										<?php endif; ?>
									<?php endforeach; endif; else: echo "" ;endif; ?>
									<?php endif; ?>
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
*       ischeck     验证规则0否1是
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
		url: "<?php echo url('admin/logout/logout'); ?>",
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
	location.href = "<?php echo url('admin/login/index'); ?>";
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
						$('#'+field+id).html('<i class="'+newval+'"></i><input type="text" value="'+newval+'" onblur="updateObj(this,\''+newval+'\',\''+tbname+'\',\''+field+'\','+id+',\''+idfield+'\',\''+isrepeat+'\')" style="color:#393939;width:145px;border:none; background:transparent;padding: 0px;font-size: 13px;height: 30px;"/>');
					} else if((tbname == 'first_module' && field == 'fm_name') || (tbname == 'three_module' && field == 'tm_name')){
						$('#'+field+id).html('<input type="text" value="'+newval+'" onblur="updateObj(this,\''+newval+'\',\''+tbname+'\',\''+field+'\','+id+',\''+idfield+'\',\''+isrepeat+'\')" style="color:#393939;width:60px;border:none; background:transparent;padding: 0px;font-size: 13px;height: 30px;"/>');
					} else if(tbname == 'first_module' && field == 'fm_controller' || field == 'fm_method' || (tbname == 'second_module' && field == 'sm_controller' || field == 'sm_method') || (tbname == 'three_module' && field == 'tm_controller' || field == 'tm_method')){
						$('#'+field+id).html('<input type="text" value="'+newval+'" onblur="updateObj(this,\''+newval+'\',\''+tbname+'\',\''+field+'\','+id+',\''+idfield+'\',\''+isrepeat+'\')" style="color:#393939;width:70px;border:none; background:transparent;padding: 0px;font-size: 13px;height: 30px;"/>');
					} else if(tbname == 'second_module' && field == 'sm_name'){
						$('#'+field+id).html('<input type="text" value="'+newval+'" onblur="updateObj(this,\''+newval+'\',\''+tbname+'\',\''+field+'\','+id+',\''+idfield+'\',\''+isrepeat+'\')" style="color:#393939;width:85px;border:none; background:transparent;padding: 0px;font-size: 13px;height: 30px;"/>');
					} 
				}
				else{
					layer.msg(res.msg,{time:600,icon:2});
					if(tbname == 'admin'){
						$('#'+field+id).html('<input type="text"  value="'+oldval+'" onblur="updateObj(this,\''+oldval+'\',\''+tbname+'\',\''+field+'\','+id+',\''+idfield+'\',\''+isrepeat+'\')" style="color:black;width:95px;height:30px;border:none; background:transparent;padding: 0px"/>');
					} else if((tbname == 'first_module' && field == 'fm_icon') || (tbname == 'second_module' && field == 'sm_icon') || (tbname == 'three_module' && field == 'tm_icon')){
						$('#'+field+id).html('<i class="'+oldval+'"></i><input type="text" value="'+oldval+'" onblur="updateObj(this,\''+oldval+'\',\''+tbname+'\',\''+field+'\','+id+',\''+idfield+'\',\''+isrepeat+'\')" style="color:#393939;width:145px;border:none; background:transparent;padding: 0px;font-size: 13px;height: 30px;"/>');
					} else if((tbname == 'first_module' && field == 'fm_name') || (tbname == 'three_module' && field == 'tm_name')){
						$('#'+field+id).html('<input type="text" value="'+oldval+'" onblur="updateObj(this,\''+oldval+'\',\''+tbname+'\',\''+field+'\','+id+',\''+idfield+'\',\''+isrepeat+'\')" style="color:#393939;width:60px;border:none; background:transparent;padding: 0px;font-size: 13px;height: 30px;"/>');
					} else if(tbname == 'first_module' && field == 'fm_controller' || field == 'fm_method' || (tbname == 'second_module' && field == 'sm_controller' || field == 'sm_method') || (tbname == 'three_module' && field == 'tm_controller' || field == 'tm_method')){
						$('#'+field+id).html('<input type="text" value="'+oldval+'" onblur="updateObj(this,\''+oldval+'\',\''+tbname+'\',\''+field+'\','+id+',\''+idfield+'\',\''+isrepeat+'\')" style="color:#393939;width:70px;border:none; background:transparent;padding: 0px;font-size: 13px;height: 30px;"/>');
					} else if(tbname == 'second_module' && field == 'sm_name'){
						$('#'+field+id).html('<input type="text" value="'+oldval+'" onblur="updateObj(this,\''+oldval+'\',\''+tbname+'\',\''+field+'\','+id+',\''+idfield+'\',\''+isrepeat+'\')" style="color:#393939;width:85px;border:none; background:transparent;padding: 0px;font-size: 13px;height: 30px;"/>');
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
					}
				}
				else{
					if(tbname == 'admin'){
						$('#'+statefield+id).html('<span style="color:#8089a0"  onclick="updateObjState('+id+',\''+idfield+'\',0,\''+statefield+'\',\''+tbname+'\',\''+ismain+'\',\''+appendfield+'\',\''+appendval+'\')" >禁止</span>');
					} else if(tbname == 'first_module' || tbname == 'second_module' || tbname == 'three_module'){
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
		url: "<?php echo url('admin/check/deleteObjOne'); ?>",
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
</script>
		
	</body>
</html>

