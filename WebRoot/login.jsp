<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Language" content="zh-CN" />
<script type="text/javascript" src="js/jquery1.4.js"></script>
<title>国际闪耀之城</title>
<meta name="Keywords" content=""/>
<meta name="Description" content=""/>
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" /> 
<!-- Le styles -->
<link rel="stylesheet" type="text/css" href="style/basic.css"/>
<link rel="stylesheet" type="text/css" href="style/login.css"/>
<script type="text/javascript" src="js/bioV4.min.js"></script>
<script type="text/javascript" src="js/jquery.lazyload.min.js"></script>
<link rel="stylesheet" type="text/css" href="style/comment.css"/>
<script type="text/javascript" src="js/function.js"></script>
<!--[if IE 6]>
<script type="text/javascript" src="js/DD_belatedPNG.js?v=20130220"></script>
<script type="text/javascript">
DD_belatedPNG.fix('img,.ie6png');
</script>
<![endif]--> 
<link type="text/css" rel="stylesheet" href="style/biobox2.css" />
<script type="text/javascript" src="js/biobox.js"></script>
    <style type="text/css">
        .login{
            background-image: url("images/login_bg.jpg");
        }
        
        .cssshadow 
	   {
	    -moz-box-shadow: 5px 5px 8px #333;
	    -webkit-box-shadow: 5px 5px 8px #333;
	    box-shadow: 5px 5px 8px #333;
	    /* For IE 8 */
	    -ms-filter: "progid:DXImageTransform.Microsoft.Shadow(Strength=50, Direction=355, Color='#333333')";
	    /* For IE 5.5 - 7 */
	    filter: progid:DXImageTransform.Microsoft.Shadow(Strength=50, Direction=355, Color='#333333');
	   }
    </style>
</head>
<body>
 
    <script type="text/javascript" src="js/borsertocss.js" />
    <!-- 判断在IE9以下浏览器中根据像素的不同而设置的样式 -->

    <!--头部代码开始-->
    <jsp:include page="head.jsp">
        <jsp:param value="news" name="curPage"/>
    </jsp:include>
    <!--头部代码结束-->
 
  	    
	<div class="hr tp-div-nexthr" style="margin-top: 0;margin-bottom: 0;padding: 0;"></div>
	<div class="container pb-15">
		<!-- Example row of columns -->
		<div class="row">
			<div class="span16">
				<div class="label-div t-15 border-all login" style="padding: 0;">
					<div class="label-main">
						<div class="clearfix label-public">
							<div class="span7 l-35 r-35 pt-35 center">
							     <img src="images/login.jpg" alt="" class="cssshadow"/>
							</div>
							<div class="span7 border-l public-login" style="min-height: 385px;">
								<form id="login_form1" action="<%=basePath %>user/loginAdmin.do" method="post">	
								<div class="t-25 pl-30 fc333">使用账号密码登录后台系统</div>
								<div class="clearfix pt-25">
									<div class="title pull-left fc999" style="width: 60px;">用户名</div>
									<div class="pull-left l-20" style="_margin-left: 0;width: 100px;"><input type="text" id="username" name="login" value="" class="span4"/></div>
									<span class="pull-left l-20 fcCF261F info username_msg"></span>
								</div>
								<div class="clearfix pt-25">
									<div class="title pull-left fc999" style="width: 60px;">密&nbsp; &nbsp;码</div>
									<div class="pull-left l-20" style="_margin-left: 0;width: 100px;"><input type="password" id="password" name="passwd" value="" class="span4"/></div>
									<span class="pull-left l-20 fcCF261F info password_msg"></span>
								</div>
								<div class="clearfix pt-25">
									<div class="title pull-left" style="margin-left: 6px;_margin-left: 3px;">&nbsp;</div>
									<a href="javascript:void(0);" title="登录" onclick="submit_form(this)"  class="pull-left login-register-btn">登&nbsp;录</a>
								</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
    </div>





    <!-- /container -->
    
    <jsp:include page="buttom.jsp" />

	<script type="text/javascript">
	$('input').keydown(function(event){  
		if(event.keyCode == 13)submit_form('.login-register-btn');
	}); 
	
	var submit_form = function(obj) {
		 adminLogin();
	};
	
	
	//网站后台登录
	adminLogin = function(){
		//用户名验证
		if($('#username').val() == ''){
			$(".username_msg").html('请输入您的帐户名');
			$("#username").focus();
			setTimeout(function(){$(".username_msg").html('');},3000);
			return false;
		}
		//密码验证
		if($('#password').val() == ''){
			$(".password_msg").html('请输入您的密码');
			setTimeout(function(){$(".password_msg").html('');},3000);
			$("#password").focus();
			return false;
		}
		
		document.getElementById("login_form1").submit();
		return true;
	};
	</script>	
	
	 
	<script type="text/javascript">
		//回到顶部
		backToTop('body');
	</script>

 
</body>
</html>