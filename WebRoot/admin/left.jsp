<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
  <link rel="apple-touch-icon-precomposed" href="<%=basePath %>admin/assets/i/app-icon72x72@2x.png">
  <link rel="stylesheet" href="<%=basePath %>admin/assets/css/amazeui.min.css"/>
  <link rel="stylesheet" href="<%=basePath %>admin/assets/css/admin.css">
<div class="admin-sidebar">
    <ul class="am-list admin-sidebar-list">
      <li><a href="/"><span class="am-icon-home"></span>返回首页</a></li>
      <li><a href="<%=basePath %>admin/showSystemSet.do"><span class="am-icon-table"></span> 系统设置</a></li>
      <li><a href="<%=basePath %>queryTeachers.do"><span class="am-icon-table"></span> 导师管理</a></li><!-- /teacher/queryTeachers.do -->
      <li><a href="<%=basePath %>match/queryMatches.do"><span class="am-icon-table"></span> 赛事管理</a></li>
      <li><a href="<%=basePath %>units/queryUnits.do"><span class="am-icon-table"></span> 联盟单位</a></li>
      <li><a href="<%=basePath %>queryInternals.do"><span class="am-icon-table"></span> 国际联动</a></li>
      <li><a href="<%=basePath %>queryCases.do"><span class="am-icon-table"></span> 案例视频</a></li>
      <li><a href="<%=basePath %>admin/queryArea.do?curPage=1"><span class="am-icon-table"></span> 赛区设置</a></li>
      <li><a href="<%=basePath %>admin/indexSign.do"><span class="am-icon-table"></span> 签到列表</a></li>
      <li><a href="<%=basePath %>admin/queryInfor.do?id=1&type=0&curPage=1"><span class="am-icon-table"></span> 赛程报道</a></li>
      <li><a href="<%=basePath %>admin/queryInfor.do?id=1&type=1&curPage=1"><span class="am-icon-table"></span> 欧洲游学</a></li>
      <!-- 
      
      <li><a href="<%=basePath %>admin/findActivitys.do?id=1"><span class="am-icon-table"></span> 活动列表</a></li>
      <li><a href="<%=basePath %>queryInfors.do?id=1&type=0&curPage=1"><span class="am-icon-table"></span> 列表</a></li>
       -->
    </ul>
  </div>
<script src="<%=basePath %>admin/assets/js/jquery.min.js"></script>
<script src="<%=basePath %>admin/assets/js/amazeui.min.js"></script>
<script src="<%=basePath %>admin/assets/js/app.js"></script>
<script src="<%=basePath %>js/ajaxfileupload.js"></script>