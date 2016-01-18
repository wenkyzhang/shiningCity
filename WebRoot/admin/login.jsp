<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%> 
<!DOCTYPE html>
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>后台管理系统--国际闪耀之城</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <meta name="format-detection" content="telephone=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp" />
  <link rel="alternate icon" type="image/png" href="<%=basePath %>admin/assets/i/favicon.png">
  <link rel="stylesheet" href="<%=basePath %>admin/assets/css/amazeui.min.css"/>
  <link rel="stylesheet"  href="<%=basePath %>css/validate.css" rel="stylesheet"/>
  <script type="text/javascript" src="<%=basePath %>admin/assets/js/jquery.min.js"></script>
  <script type="text/javascript" src="<%=basePath %>js/easy_validator.pack.js"></script>
  <script type="text/javascript" src="<%=basePath %>js/jquery.bgiframe.js"></script>
  <style>
    .header {
      text-align: center;
    }
    .header h1 {
      font-size: 200%;
      color: #333;
      margin-top: 30px;
    }
    .header p {
      font-size: 14px;
    }
  </style>
</head>
<body>
<div class="header"> 
  <hr />
</div>
<div class="am-g">
  <div class="am-u-lg-6 am-u-md-8 am-u-sm-centered">
    <h3>登录</h3>
    <hr>
    <br>
    <br>
    <div id="msg">${error }</div>

    <form method="post" action="<%=basePath %>user/loginAdmin.do" class="am-form">
      <label for="email">用户名:</label>
      <input type="text" name="login" id="username" value="" reg=".+" placeholder="用户名">
      <br>
      <label for="password">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:</label>
      <input type="password" name="passwd" id="password" value="" reg=".+" placeholder="密码">
      <br>
      <div class="am-cf">
        <input type="submit" name="" value="登 录" class="am-btn am-btn-primary am-btn-sm am-fl">
        <!-- 
         <input type="submit" name="" value="忘记密码 ^_^? " class="am-btn am-btn-default am-btn-sm am-fr">
         -->
      </div>
    </form>
    <hr>
    <p>© 2015 版权所有.</p>
  </div>
</div>
</body>
</html>