<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
  <link rel="apple-touch-icon-precomposed" href="<%=basePath %>admin/assets/i/app-icon72x72@2x.png">
  <link rel="stylesheet" href="<%=basePath %>admin/assets/css/amazeui.min.css"/>
  <link rel="stylesheet" href="<%=basePath %>admin/assets/css/admin.css">
<div class="am-topbar-brand" style="height: 95px">
    <img alt="logo" src="<%=basePath %>images/logo3.png"><span style="font-size: 24px;">后台管理</span>
  </div>

  <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

  <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

    <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
      <li><a href="javascript:;"><span class="am-icon-envelope-o"></span> 收件箱 <span class="am-badge am-badge-warning"></span></a></li>
      <li class="am-dropdown" data-am-dropdown>
        <a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;">
          <span class="am-icon-users"></span> ${l_user.login } <span class="am-icon-caret-down"></span>
        </a>
      </li>
      <li><a href="javascript:;" id="admin-fullscreen"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
    </ul>
  </div>
<script src="<%=basePath %>admin/assets/js/jquery.min.js"></script>
<script src="<%=basePath %>admin/assets/js/amazeui.min.js"></script>
<script src="<%=basePath %>admin/assets/js/app.js"></script>
<script src="<%=basePath %>js/ajaxfileupload.js"></script>