<?php /*a:1:{s:59:"D:\wamp64\www\study\application\admin\view\login\index.html";i:1550996522;}*/ ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<title>登录界面</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link href="/study/public/static/admin/css/bootstrap.min.css" rel="stylesheet" />
	<link rel="stylesheet" href="/study/public/static/admin/css/font-awesome.min.css" />
	<link rel="stylesheet" href="/study/public/static/admin/css/ace.min.css" />
	<link rel="stylesheet" href="/study/public/static/admin/css/ace-rtl.min.css" />
</head>
<body class="login-layout">
	<div class="main-container">
		<div class="main-content">
			<div class="row">
				<div class="col-sm-10 col-sm-offset-1">
					<div class="login-container">
						<div class="center">
							<h1>
								<i class="icon-leaf green"></i>
								<span class="red">编程语言学习总结系统</span>
							</h1>
							<h4 class="blue">&copy; 大连 PHP语言</h4>
						</div>
						<div class="space-6"></div>
						<div class="position-relative">
							<div id="login-box" class="login-box visible widget-box no-border">
								<div class="widget-body">
									<div class="widget-main">
										<h4 class="header blue lighter bigger">
											<i class="icon-coffee green"></i>
											请输入您的信息
										</h4>
										<div class="space-6"></div>
										<form>
											<fieldset>
												<label class="block clearfix">
													<span class="block input-icon input-icon-right">
														<input type="text" class="form-control" placeholder="Username" id="admin_name" name="admin_name" autocomplete="off"/>
														<i class="icon-user"></i>
													</span>
												</label>
												<label class="block clearfix">
													<span class="block input-icon input-icon-right">
														<input type="password" class="form-control" placeholder="Password" id="admin_password" name="admin_password" autocomplete="off"/>
														<i class="icon-lock"></i>
													</span>
												</label>
												<div class="space"></div>
												<div class="clearfix">
													<label class="inline">
														<input type="checkbox" class="ace" name="remember" id="remember" value="remember"/>
														<span class="lbl"> 记住我</span>
													</label>
													<button type="button" class="width-35 pull-right btn btn-sm btn-primary" id="button">
														<i class="icon-key"></i>
														登录
													</button>
												</div>
												<div class="space-4"></div>
											</fieldset>
										</form>
									</div><!-- /widget-main -->
									<div class="toolbar clearfix">
										<div>
											<a href="#" onclick="show_box('forgot-box'); return false;" class="forgot-password-link">
												<i class="icon-arrow-left"></i>
												我忘记密码了
											</a>
										</div>
										<div>
											<a href="#" onclick="show_box('signup-box'); return false;" class="user-signup-link">
												我想注册
												<i class="icon-arrow-right"></i>
											</a>
										</div>
									</div>
								</div><!-- /widget-body -->
							</div><!-- /login-box -->
							<div id="forgot-box" class="forgot-box widget-box no-border">
								<div class="widget-body">
									<div class="widget-main">
										<h4 class="header red lighter bigger">
											<i class="icon-key"></i>
											找回密码
										</h4>
										<div class="space-6"></div>
										<p>
											输入您的电子邮件并接受指示
										</p>
										<form method="POST" action="" id="myEmail" name="myEmail">
											<fieldset>
												<label class="block clearfix">
													<span class="block input-icon input-icon-right">
														<input type="email" class="form-control" placeholder="126 or 163 Email" name="email" id="email" onblur="checkEmail(this,'','')"/>
														<i class="icon-envelope"></i>
													</span>
												</label>
												<div class="clearfix">
													<button type="button" class="width-35 pull-right btn btn-sm btn-danger" id="send">
														<i class="icon-lightbulb"></i>
														发送给我！
													</button>
												</div>
											</fieldset>
										</form>
									</div><!-- /widget-main -->
									<div class="toolbar center">
										<a href="#" onclick="show_box('login-box'); return false;" class="back-to-login-link">
											返回登录
											<i class="icon-arrow-right"></i>
										</a>
									</div>
								</div><!-- /widget-body -->
							</div><!-- /forgot-box -->
							<div id="signup-box" class="signup-box widget-box no-border">
								<div class="widget-body">
									<div class="widget-main">
										<h4 class="header green lighter bigger">
											<i class="icon-group blue"></i>
											新用户注册
										</h4>
										<div class="space-6"></div>
										<p> 输入您的详细信息: </p>
										<form>
											<fieldset>
												<label class="block clearfix">
													<span class="block input-icon input-icon-right">
														<input type="email" class="form-control" placeholder="Email" id="admin_email" name="admin_email" onblur="checkEmail(this,'admin_email','admin')"/>
														<i class="icon-envelope"></i>
													</span>
												</label>
												<label class="block clearfix">
													<span class="block input-icon input-icon-right">
														<input type="text" class="form-control" placeholder="Username" id="username" name="username" onblur="checkObj(this,'admin_name','admin')"/>
														<i class="icon-user"></i>
													</span>
												</label>
												<label class="block clearfix">
													<span class="block input-icon input-icon-right">
														<input type="password" class="form-control" placeholder="Password" id="password" name="password" onblur="checkObj(this,'','')"/>
														<i class="icon-lock"></i>
													</span>
												</label>
												<label class="block clearfix">
													<span class="block input-icon input-icon-right">
														<input type="password" class="form-control" placeholder="Repeat password" id="repeat_password" onblur="checkCompare(this,'password')"/>
														<i class="icon-retweet"></i>
													</span>
												</label>
												<label class="block clearfix">
													<span class="block input-icon input-icon-right">
														<input type="text" class="form-control" placeholder="Secret" id="admin_secret" name="admin_secret"/>
														<i class="icon-key"></i>
													</span>
												</label>
												<label class="block">
													<input type="checkbox" class="ace" id="accept" name="accept" value="1" />
													<span class="lbl">
														我接受
														<a href="javascript:userAgreement();">用户协议</a>
													</span>
												</label>
												<div class="space-24"></div>
												<div class="clearfix">
													<button type="reset" class="width-30 pull-left btn btn-sm">
														<i class="icon-refresh"></i>
														重置
													</button>
													<button type="button" class="width-65 pull-right btn btn-sm btn-success" id="register" name="register">
														注册
														<i class="icon-arrow-right icon-on-right"></i>
													</button>
												</div>
											</fieldset>
										</form>
									</div>
									<div class="toolbar center">
										<a href="#" onclick="show_box('login-box'); return false;" class="back-to-login-link">
											<i class="icon-arrow-left"></i>
											返回登录
										</a>
									</div>
								</div><!-- /widget-body -->
							</div><!-- /signup-box -->
						</div><!-- /position-relative -->
					</div>
				</div><!-- /.col -->
			</div><!-- /.row -->
		</div>
	</div><!-- /.main-container -->
	<script src="/study/public/static/admin/js/jquery-2.0.3.min.js"></script>
	<script src="/study/public/static/plug/layer/layer.js" ></script>
	<script type="text/javascript">
		//转换网页
		function show_box(id) {
			jQuery('.widget-box.visible').removeClass('visible');
			jQuery('#'+id).addClass('visible');
		}
		//验证邮箱
		function checkEmail(obj,field,tbname){
			var email = $.trim($(obj).val());
			if(!(/^[a-zA-Z0-9]{1,22}@(163|126)\.com$/.test(email))){
				layer.msg('邮箱的格式不正确或内容不能为空，请重新输入！');
				$(obj).val('');
				return false;
			}
			else if(field && tbname){
				repeatObj(obj,email,field,tbname);
			}
		}
		//验证用户名  密码
		function checkObj(obj,field,tbname){
			var objval = $.trim($(obj).val());
			if(!(/^[a-zA-Z0-9]{5,16}$/.test(objval))){
				layer.msg('内容为5-16位数字、字母或两者组合');
				$(obj).val('');
				return false;
			}
			else if(field && tbname){
				repeatObj(obj,objval,field,tbname);
			}
		}
		//重复密码
		function checkCompare(obj,field){
			var psaaword = $.trim($('#'+field).val());
			var repeat_password = $.trim($(obj).val());
			if(!(/^[a-zA-Z0-9]{5,16}$/.test(repeat_password))){
				layer.msg('内容为5-16位数字、字母或两者组合');
				$(obj).val('');
				return false;
			}
			else if(psaaword != repeat_password){
				layer.msg('重复密码不正确，请核对后继续输入！');
				$(obj).val('');
				return false;
			}
		}
		//发送邮件
		jQuery('#send').click(function(){
			var email = $.trim($('#email').val());
			if(!email){
				layer.msg('邮箱不能为空！');
				$('#email').val('');
				return false;
			}
			else{
				$.ajax({
					url: "<?php echo url('admin/login/backPassword'); ?>",
					data: {'email':email},
					datatype: 'json',
					type: 'POST',
					async: false,
					success:function(res){
						if(res.status == 1){
							layer.msg(res.msg,{time:800,icon:1});
							return
						}
						else{
							layer.msg(res.msg,{time:800,icon:2});
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
		//登录
		jQuery('#button').click(function(){
			var admin_name = $.trim($('#admin_name').val());
			var admin_password = $.trim($('#admin_password').val());
			var remember_me = $('#remember:checked').val();
			if(!admin_name || !admin_password){
				return false;
			}
			else{
				$.ajax({
					url: "<?php echo url('admin/login/login'); ?>",
					data: {'admin_name':admin_name,'admin_password':admin_password,'state':remember_me},
					datatype: 'json',
					type: 'POST',
					async: false,
					success:function(res){
						if(res.status == 1){
							layer.msg(res.msg,{time:600,icon:1});
							setTimeout(jump,800); 
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
		
		});
		function jump(){
			location.href = "<?php echo url('admin/index/index'); ?>";
		}
		//用户协议
		function userAgreement(){
			layer.open({
				type: 1, //类型：页面层
				area: ['600px', '360px'],//宽度，高度 
				title: '<h4>编程语言学习总结系统用户协议</h4>',
				content: '<p style="text-indent:10px;margin-top:12px">1、用户一旦注册成功，将得到一个用户名和密码，并有权利使用自己的用户名及密码随时登录。</p>'
				+'<p style="text-indent:10px">2、用户对用户名和密码的安全负全部责任，同时对以其用户名进行的所有的活动和时间负责。</p>'
				+'<p style="text-indent:10px">3、用户不得以任何形式擅自转让或授权他人使用自己的用户名。</p>'
				+'<p style="text-indent:10px;line-height:2">4、如果用户泄露了密码，有可能导致不利的法律后果，因此不管任何原因导致用户的密码安全受到威胁，应该立即客户人员取得联系，否则后果自负!</p>'
				+'<p>注：</p>'
				+'<p style="text-indent:25px">联系电话13675491733</p>'
				+'<p style="text-indent:25px">微信号cy13675491733</p>',
				btn: ['I accept', 'I reject'],
				yes: function(index, layero){
					jQuery('#accept').attr("checked","checked");
					layer.close(index);
				},
				btn2: function(index, layero){  //按钮【按钮二】的回调 //return false 开启该代码可禁止点击该按钮关闭
					jQuery('#accept').removeAttr("checked");
					layer.close(index);
				},
				cancel: function(){ //右上角关闭回调;return false 开启该代码可禁止点击该按钮关闭
				}
			}); 
		}
		//注册
		jQuery('#register').click(function(){
			var admin_email = $.trim($('#admin_email').val());
			var admin_name = $.trim($('#username').val());
			var admin_password = $.trim($('#password').val());
			var repeat_password = $.trim($('#repeat_password').val());
			var admin_secret = $.trim($('#admin_secret').val());
			var agreement = $('#accept:checked').val();
			if(!admin_email || !admin_name || !admin_password || !repeat_password || !admin_secret || !agreement){
				return false;
			}
			else{
				$.ajax({
					url: "<?php echo url('admin/login/register'); ?>",
					data: {'admin_name':admin_name,'admin_password':admin_password,'admin_email':admin_email,'admin_secret':admin_secret},
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
		//验证内容是否重复
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
	</script>
</body>
</html>
