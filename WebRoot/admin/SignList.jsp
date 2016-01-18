<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
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
  <title>国际闪耀之城--活动报名</title>
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
  <div class="am-topbar-brand" style="height: 95px">
    <img alt="logo" src="<%=basePath %>images/logo3.png"><span style="font-size: 24px;">后台管理</span>
  </div>

  <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only" data-am-collapse="{target: '#topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span></button>

  <div class="am-collapse am-topbar-collapse" id="topbar-collapse">

    <ul class="am-nav am-nav-pills am-topbar-nav am-topbar-right admin-header-list">
      <li><a href="javascript:;"><span class="am-icon-envelope-o"></span> 收件箱 <span class="am-badge am-badge-warning">5</span></a></li>
      <li class="am-dropdown" data-am-dropdown>
        <a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;">
          <span class="am-icon-users"></span> 管理员 <span class="am-icon-caret-down"></span>
        </a>
        <ul class="am-dropdown-content">
          <li><a href="#"><span class="am-icon-user"></span> 资料</a></li>
          <li><a href="#"><span class="am-icon-cog"></span> 设置</a></li>
          <li><a href="#"><span class="am-icon-power-off"></span> 退出</a></li>
        </ul>
      </li>
      <li><a href="javascript:;" id="admin-fullscreen"><span class="am-icon-arrows-alt"></span> <span class="admin-fullText">开启全屏</span></a></li>
    </ul>
  </div>
</header>

<div class="am-cf admin-main">
  <!-- sidebar start -->
  <div class="admin-sidebar">
    <ul class="am-list admin-sidebar-list">
      <li><a href="/"><span class="am-icon-home"></span>返回首页</a></li>
      <li><a href="admin-table.html"><span class="am-icon-table"></span> 导师管理</a></li>
      <li><a href="admin-form.html"><span class="am-icon-pencil-square-o"></span> 表单</a></li>
      <li><a href="#"><span class="am-icon-sign-out"></span> 注销</a></li>
    </ul>
  </div>
  <!-- sidebar end -->

  <!-- content start -->
  <div class="admin-content">

    <div class="am-cf am-padding">
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">首页</strong> / <small>导师列表</small></div>
    </div>


    <div class="am-g">
      <div class="am-u-md-5 am-cf">
        <div class="am-fl am-cf">
          <div class="am-btn-toolbar am-fl">
            <div class="am-btn-group am-btn-group-xs">
              <button type="button" class="am-btn am-btn-default" id="addMentor"><span class="am-icon-plus"></span> 新增</button>
              <button type="button" class="am-btn am-btn-default"><span class="am-icon-save"></span> 保存</button>
              <button type="button" class="am-btn am-btn-default"><span class="am-icon-archive"></span> 审核</button>
              <button type="button" class="am-btn am-btn-default"><span class="am-icon-trash-o"></span> 删除</button>
            </div>
          </div>
        </div>
      </div>
      <div class="am-u-md-1 am-cf">共 ${fn:length(mentors) } 位导师</div>
      <div class="am-u-md-3 am-cf">
        <div class="am-fr">
          <div class="am-input-group am-input-group-sm">
            <input type="text" class="am-form-field">
                <span class="am-input-group-btn">
                  <button class="am-btn am-btn-default" type="button">搜索</button>
                </span>
          </div>
        </div>
      </div>
    </div>
    <div id="mentorDiv" class="am-g">
	    <ul class="am-avg-sm-1 am-avg-md-4 am-margin am-padding am-text-center admin-content-list ">
	    <c:forEach items="${mentors }" var="mentor" varStatus="status">
	      <li>
	      		<img alt="" src="<%=basePath%>images/teacher/${mentor.photo}.jpg" class="photo"><br/>
	      		${mentor.name }<br/>
	      		<div class="am-btn-toolbar am-text-center">
                  <div class="am-btn-group am-btn-group-xs" style="float: none;">
                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary edit" mid="${mentor.id }"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                    <button class="am-btn am-btn-default am-btn-xs am-text-danger"><span class="am-icon-trash-o"></span> 删除</button>
                  </div>
                </div>
	      </li>
	    </c:forEach>
	    </ul>
    </div>

    <div class="am-g">
		<div class="am-tabs am-margin" data-am-tabs>
		    <ul class="am-tabs-nav am-nav am-nav-tabs">
		      <li class="am-active"><a href="#tab1">信息提交</a></li>
		    </ul>
			  <form action="/addTeacher.do" name="uploadImage" id="uploadImage">
			  	<input type="hidden" name="id" id="uploadImageId" value="1" />
			  </form>
		      <div class="am-tab-panel am-fade am-in am-active" id="tab1">
		        <form class="am-form" action="/addTeacher.do" name="mentorForm" method="POST" enctype="multipart/form-data">
		          <input type="hidden" name="id" value="0" id="mentorId"/>
		          <input type="hidden" name="photo" id="mentorPhoto"/>
		          <div class="am-g am-margin-top">
		            <div class="am-u-sm-2 am-text-right">*姓名</div>
		            <div class="am-u-sm-4">
		              <input class="sign_input form-control"  type="text" name="name" id="mentorName" reg=".+" tip="姓名" value="张文海" placeholder="20个汉字以内，必填"/>
		            </div>
		            
		            <div class="am-u-sm-2 am-text-right">显示顺序</div>
		            <div class="am-u-sm-2">
		              <input class="sign_input form-control"  type="text" name="sort" id="mentorSort" value="100" reg="\d{1,3}" tip="显示顺序，1-100"/>
		            </div>
		            <div class="am-u-sm-2">*必填，1-100，越小越靠前</div>
		          </div>
		          <div class="am-g am-margin-top">
		            <div class="am-u-sm-2 am-text-right">头衔</div>
		            <div class="am-u-sm-4">
		              <input class="sign_input form-control"  type="text" name="tags" id="mentorTags" reg=".+" value="高级工程师" tip="头衔" placeholder=""/>
		            </div>
		            
		            <div class="am-u-sm-2 am-text-right">关键词</div>
		            <div class="am-u-sm-4">
		              <input class="sign_input form-control"  type="text" name="title" id="mentorTitle" reg=".{1,50}" value="软通" tip="多个词以分号分割" placeholder="多个词以分号分割"/>
		            </div>
		          </div>
		
		          <div class="am-g am-margin-top">
		            <div class="am-u-sm-2 am-text-right">
		              简要介绍
		            </div>
		            <div class="am-u-sm-10">
		              <input class="sign_input form-control" type="text" name="summary" id="mentorSummary" value="sdfsdfsdfsrfs" placeholder="不填写则自动截取内容前50字符">
		            </div>
		          </div>
		
		          <div class="am-g am-margin-top-sm">
		            <div class="am-u-sm-2 am-text-right">
		              详细介绍
		            </div>
		            <div class="am-u-sm-10">
		              <textarea rows="5" name="introduction" id="mentorIntroduction" placeholder="请使用富文本编辑插件"></textarea>
		            </div>
		          </div>
				  
				  <input type="hidden" name="images"/>
		          <div class="am-g am-margin-top">
		          	<div class="am-u-sm-2 am-text-right">其他照片</div>
		          	<div class="am-u-sm-10">
			             <ul class="am-avg-sm-1 am-avg-md-6 am-margin am-padding am-text-center admin-content-list" style="border:none;" id="mentorImages">
			               <li>
					      		<img alt="" src="<%=basePath%>images/teacher/wangxiaoqian2.jpg" class="photo">
					      		<div class="am-btn-toolbar am-text-center">
				                  <div class="am-btn-group am-btn-group-xs" style="float: none;">
				                    <button class="am-btn am-btn-default am-btn-xs am-text-danger"><span class="am-icon-trash-o"></span> 删除</button>
				                  </div></div></li>
					       <li><img alt="" src="<%=basePath%>images/teacher/wangxiaoqian3.jpg" class="photo">
					      	 <div class="am-btn-toolbar am-text-center"><div class="am-btn-group am-btn-group-xs" style="float: none;">
				                 <button class="am-btn am-btn-default am-btn-xs am-text-danger"><span class="am-icon-trash-o"></span> 删除</button>
				               </div>
				              </div>
					       </li>
			             </ul>
		             </div>
		          </div>
		          
		          <div class="am-g am-margin-top">
		            <div class="am-u-sm-2 am-text-right">
		              上传图片
		            </div>
		            <div class="am-u-sm-10">
		              <input type="file" id="otherFile" class="am-input-sm">
		            </div>
		          </div>
				  <div class="am-margin">
				    <button type="submit" class="am-btn am-btn-primary am-btn-xs">提交保存</button>
				  </div>          
		        </form>
		      </div>
		    </div>
		  </div>
		
      </div>
  </div>
  <!-- content end -->

</div>

<footer>
  <hr>
  <p class="am-padding-left">© 2014 AllMobilize, Inc. Licensed under MIT license.</p>
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


<script type="text/javascript">
	var basePath = '<%=basePath%>';

	function save()
	{
	}
	
	$("#addMentor").click(function(){
		$("#mentorId").val("");
		$("#mentorName").val("");
		$("#mentorTitle").val("");
		$("#mentorTags").val("");
		$("#mentorPhoto").val("");
		$("#mentorIntroduction").val("");
		$("#mentorSort").val(100);
		$("#mentorImages").empty();
		$("#mentorSummary").val("");
	})
	
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

</script>
</body>
</html>
