<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	
	
	String[] sex = {"崽崽","囡囡"};
	String[] age = {"幼儿组(4-6周岁)","儿童组(7-9周岁)","少儿组(10-12周岁)","亲子组(4-12周岁)"};
	request.setAttribute("sex", sex);
	request.setAttribute("age", age);
%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%> 
<!doctype html>
<html class="no-js">
<head>
  <meta charset="utf-8">
  <!--[if IE]>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <![endif]-->
  <title>国际闪耀之城--赛事报名详细</title>
  <meta name="description" content="国际闪耀之城" />
  <meta name="author" content="binxiao" />
  <!-- Favicon-->
  <link rel="shortcut icon" href="./favicon.png" />
  <!-- Bootstrap -->
  <link href="<%=basePath %>css/bootstrap.min.css" rel="stylesheet">
  <!-- Camera -->
  <link href="<%=basePath %>css/camera.css" rel="stylesheet">
  <!-- Template  -->
  <link href="<%=basePath %>css/templatemo_style.css" rel="stylesheet">
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
	      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	    <![endif]-->
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <meta name="renderer" content="webkit">
  <meta name="apple-mobile-web-app-title" content="Amaze UI" />
  <link rel="apple-touch-icon-precomposed" href="<%=basePath %>admin/assets/i/app-icon72x72@2x.png">
  <link rel="stylesheet" href="<%=basePath %>admin/assets/css/amazeui.min.css"/>
  <link rel="stylesheet" href="<%=basePath %>admin/assets/css/admin.css">
  
  <style type="text/css">
  	body{
  		font-size: 14px !important;
  	}
  
  	li img.photo{
  	  width:30%;
  	  height:30%;
  	}
  	
  	li{
  		text-align: center;
  	}
  </style>
</head>
<body>
<!--[if lte IE 9]>
<p class="browsehappy">你正在使用<strong>过时</strong>的浏览器，Amaze UI 暂不支持。 请 <a href="http://browsehappy.com/" target="_blank">升级浏览器</a>
  以获得更好的体验！</p>
<![endif]-->

<header class="am-topbar admin-header">
  <jsp:include page="head.jsp"></jsp:include>
</header>

<div class="am-cf admin-main">
  <!-- sidebar start -->
  <jsp:include page="left.jsp"></jsp:include>
  <!-- sidebar end -->

  <!-- content start -->
  <div class="admin-content">

    <div class="am-cf am-padding">
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">赛事详情</strong> / <small>Match Details</small></div>
    </div>
    
    <div class="am-g">
    
      <div class="am-u-sm-12 am-u-sm-centered">
        <h1>${match.name }</h1>
        <div>
        	${match.description }
        </div>
      </div>
    </div>
    <fieldset>
    	<legend>赛区信息</legend>
	    <div class="am-g">
	    
	      <div class="am-u-sm-12 am-u-sm-centered">
	        <div>
	        	<table class="am-table am-table-striped am-table-hover table-main">
	        		<thead>
		              <tr>
		                <th class="table-id">ID</th>
		                <th class="table-title">赛区</th>
		                <th class="table-type">启动时间</th>
		                <th class="table-type">结束时间</th>
		              </tr>
		            </thead>
		            <tbody>
		        		<c:forEach items="${match.matchArea }" var="area" varStatus="status">
				            <tr>
				              <td>${area.id }</td>
				              <td>${area.area.areaName}</td>
				              <td>${area.voteStart}</td>
				              <td>${area.voteEnd}</td>
				            </tr>
		        		</c:forEach>
		            </tbody>
	        	</table>
	        </div>
	      </div>
	    </div>
    </fieldset>
    
    
    <fieldset>
    	<legend>赛事报名列表</legend>
    <div class="am-g">
      <div class="am-u-sm-12">
        <form class="am-form">
          <table class="am-table am-table-striped am-table-hover table-main">
            <thead>
              <tr>
                <th class="table-check"><input type="checkbox" /></th>
                <th class="table-id">ID</th>
                <th class="table-title">照片</th>
                <th class="table-type">姓名</th>
                <th class="table-type">出生年月</th>
                <th class="table-author">性别</th>
                <th class="table-date">参赛组别</th>
                <th class="table-type">手机号码</th>
                <th class="table-type">QQ/微信</th>
                <th class="table-type">邮箱地址</th>
                <th class="table-type">赛区</th>
                <th class="table-type">特长</th>
                <th class="table-type">辅导老师</th>
                <th class="table-type">就读学校</th>
                <th class="table-type">详细地址</th>
                <th class="table-type">备注</th>
              </tr>
          </thead>
          <tbody>
          	<c:forEach items="${pager.data }" var="sign" varStatus="status">
	            <tr>
	              <td><input type="checkbox" /></td>
	              <td>${sign.id }</td>
	              <td><a href="<%=basePath %>upload/images/${sign.id}.jpg" target="_blank"><img src="<%=basePath %>upload/images/${sign.id}.jpg" style="width:60px;" /></a></td>
	              <td>${sign.name}</td>
	              <td>${sign.birth}</td>
	              <td>${sex[sign.sex]}</td>
	              <td>${age[sign.age]}</td>
	              <td>${sign.phone}</td>
	              <td>${sign.qq_or_weixin}</td>
	              <td>${sign.mail}</td>
	              <td>${sign.area}</td>
	              <td>${sign.specilty}</td>
	              <td>${sign.councelor}</td>
	              <td>${sign.school}</td>
	              <td>${sign.address}</td>
	              <td>${sign.remark}</td>
	            </tr>
          	</c:forEach>
          </tbody>
        </table>
          <div class="am-cf">
              共 ${pager.sumTotal } 条报名记录
              <div class="am-fr">
                <ul class="am-pagination" id="pager"></ul>
              </div>
            </div>
          <hr />
        </form>
      </div>

    </div>
    </fieldset>
  </div>
  <!-- content end -->

<footer>
  <hr>
	<p class="am-text-center">© 2015 国际闪耀之城, Inc.</p>
</footer>

<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/polyfill/rem.min.js"></script>
<script src="assets/js/polyfill/respond.min.js"></script>
<script src="assets/js/amazeui.legacy.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="<%=basePath %>admin/assets/js/jquery.min.js"></script>
<script src="<%=basePath %>admin/assets/js/amazeui.min.js"></script>
<!--<![endif]-->
<script src="<%=basePath %>js/jquery-1.8.3.min.js"></script>
<script src="<%=basePath %>js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=basePath %>js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="<%=basePath %>js/locales/bootstrap-datetimepicker.zh-CN.js" charset="GBK"></script>
<script type="text/javascript" src="<%=basePath %>js/locales/bootstrap-datetimepicker.zh-CN.js" charset="GBK"></script>
<script type="text/javascript" src="<%=basePath %>js/easy_validator.pack.js"></script>
<script type="text/javascript" src="<%=basePath %>js/jquery.bgiframe.min.js"></script>
<script src="<%=basePath %>admin/assets/js/app.js"></script>
<script src="<%=basePath %>js/ajaxfileupload.js"></script>
<script src="<%=basePath %>admin/js/pager.js"></script>


<script type="text/javascript">
	var basePath = '<%=basePath%>';
	
	$("#mentorDiv button.edit").click(function() { 
        $.ajax( { 
            type : "GET", 
            url : "/queryTeacherForAjax.do?id=" + $(this).attr('mid'), 
            data : "", 
            dataType: "json", 
            success : function(data) { 
            	if (typeof (data.type) != 'undefined') {
            		if (data.type == 'success') {
                        
            			$("#mentorId").val(data.obj.id);
            			$("#mentorName").val(data.obj.name);
            			$("#mentorTitle").val(data.obj.title);
            			$("#mentorTags").val(data.obj.tags);
            			$("#mentorPhoto").val(data.obj.photo);
            			$("#mentorIntroduction").val(data.obj.introduction);
            			$("#mentorSort").val(data.obj.sort);
            			$("#mentorSummary").val(data.obj.summary);
            			
            			var images = data.obj.images;
           				$("#mentorImages").empty();
            			for(var i=0;i<images.length;i++)
            			{
            				var li = '<li><img alt="" src="<%=basePath%>images/teacher/'+images[i]+'" class="photo">' +
            				   '<div class="am-btn-toolbar am-text-center"><div class="am-btn-group am-btn-group-xs" style="float: none;">' +
            				   '<button class="am-btn am-btn-default am-btn-xs am-text-danger"><span class="am-icon-trash-o"></span> 删除</button>' +
            				   '</div></div></li>';
            				$("#mentorImages").append(li);
            			}
            			
            			
            			
                    } else {
                        alert(data.msg);
                    }
            	}
            } 
        }); 
    });

	function ajaxFileUpload() {
		
		var userId = $("#uploadImageId").val();
		
	    $.ajaxFileUpload
	    (
	        {
	            url: '/uploadImg.do?userid=' + userId, //用于文件上传的服务器端请求地址
	            secureuri: false, //一般设置为false
	            fileElementId: 'otherFile', //文件上传空间的id属性  <input type="file" id="file" name="file" />
	            dataType: 'json', //返回值类型 一般设置为json
	            success: function (data, status)  //服务器成功响应处理函数
	            {
	                $("#img1").attr("src", data.imgurl);
	                if (typeof (data.error) != 'undefined') {
	                    if (data.error != '') {
	                        alert(data.error);
	                    } else {
	                        alert(data.msg);
	                    }
	                }
	            },
	            error: function (data, status, e)//服务器响应失败处理函数
	            {
	                alert(e);
	            }
	        }
	    )
	    return false;
	}
	
	function toPage(curPage){
        var param = "id=" + ${match.id } + "&curPage=" + curPage;
        
        window.location.href= basePath + "child/showMatch.do?" + param;
    }
	
	$(document).ready(function(){
        gePager($("#pager"), ${pager.curPage}, ${pager.countPage}, ${pager.sumTotal});
    });

</script>
</body>
</html>
