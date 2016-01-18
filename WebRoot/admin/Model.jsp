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
  <title>国际闪耀之城--童模管理</title>
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
  <link rel="stylesheet" href="<%=basePath %>css/validate.css">
  
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
  		margin-top: 10px;
  	}
  	.sign_input{
  		height: 24px !important;
  		padding:0px !important;
  	}
  	#uploadImgBtn{
  		height:24px !important;
  		padding: 0px 10px !important;
  	}
  	#message{
		position: relative;
		zoom: 1;
		width:100%;
		height: 1px;
	}
	#message .errormsg{
		color: #fff;
		font-size: 12px;
		font-weight: 700;
		line-height: 26px;
		padding: 0 16px;
		border-radius: 3px;
		overflow: hidden;
		font-family: 'Microsoft Yahei',verdana;
		background: #fff;
		font-size: 12px;
		line-height: 1.666;
		background-color: ##CB833B; /*#56AE41*/
		width: 100px;
		border: solid 1px RED;
	}
	
	#message .sucessmsg{
	
	}
	
	p#vtip {
		position: absolute; 
		padding: 10px; 
		left: 5px; 
		font-size: 0.8em; 
		background-color: white; 
		border: 1px solid #a6c9e2; 
		-moz-border-radius: 5px; 
		-webkit-border-radius: 5px; 
		z-index: 9999;
	}
		
	p#vtip #vtipArrow { 
		position: absolute; 
		top: -10px; 
		left: 5px 
	}
	
	.input_validation-failed { 
		border: 2px solid #FF0000; 
		color:red;
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
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">首页</strong> / <small>童模列表</small></div>
    </div>


    <div class="am-g">
      <div class="am-u-md-2 am-cf">
        <div class="am-fl am-cf">
          <div class="am-btn-toolbar am-fl">
            <div class="am-btn-group am-btn-group-xs">
              <button type="button" class="am-btn am-btn-default" id="addMentor"><span class="am-icon-plus"></span> 新增</button>
            </div>
          </div>
        </div>
      </div>
      <div class="am-u-md-2 am-cf">
      	选择赛区：<select class="sign_input" mid="${match.id }" curPage="${pager.curPage }" id="areaSel">
      		<c:forEach items="${match.matchArea }" var="mArea">
      			<option value="${mArea.id }">${mArea.area.areaName }</option>
      		</c:forEach>
      	</select>
      </div>
      <div class="am-u-md-2 am-cf">共 ${pager.sumTotal } 位童模</div>
      <div class="am-u-md-3 am-cf">
      <!-- 
        <div class="am-fr">
          <div class="am-input-group am-input-group-sm">
            <input type="text" class="am-form-field">
                <span class="am-input-group-btn">
                  <button class="am-btn am-btn-default" type="button">搜索</button>
                </span>
          </div>
        </div>
       -->
      </div>
    </div>
    <div id="mentorDiv" class="am-g">
	    <ul class="am-avg-sm-1 am-avg-md-6 am-margin am-padding am-text-center admin-content-list ">
	    <c:forEach items="${models }" var="model" varStatus="status">
	      <li id="model${model.id }">
	      		<img alt="" src="<%=basePath %>${model.photo}" class="photo"><br/>
	      		${model.name }(${model.modelId })<br/>
	      		<div class="am-btn-toolbar am-text-center">
                  <div class="am-btn-group am-btn-group-xs" style="float: none;">
                  	<a href="javascript:;" class="edit" 
                  	 		mid="${model.id }" name="${model.name }" 
                    		age="${model.age }" sex="${model.sex }"
                    		photo="${model.photo }" videourl="${model.videourl }" 
                    		description="${model.description }" iHeight="${model.iHeight }"
                    		ageGroup="${model.ageGroup }" modelId="${model.modelId }"
                    		area="${model.area.id }" contact="${model.contact }"
                    		contactPhone=${model.contactPhone }><span class="am-icon-pencil-square-o"></span>编辑</a>&nbsp;&nbsp;
                  	<a href="javascript:;" class="delete"
                  			mid="${model.id }"><span class="am-icon-trash-o"></span>删除</a>
                  	
                  			
                  	<!-- 
                  	<a href="<%=basePath%>model/modelDetail.do?id=${model.id}"><span class="am-icon-user"></span>查看</a>
                    <button class="am-btn am-btn-default am-btn-xs am-text-secondary edit" 
                    		mid="${model.id }" name="${model.name }" 
                    		age="${model.age }" sex="${model.sex }"
                    		photo="${model.photo }"><span class="am-icon-pencil-square-o"></span> 编辑</button>
                    <button class="am-btn am-btn-default am-btn-xs am-text-danger delete"
                    		mid="${model.id }"><span class="am-icon-trash-o"></span> 删除</button>
                  	 -->
                  </div>
                </div>
	      </li>
	    </c:forEach>
	    <c:if test="${empty models }">
	    	<li>还没有任何童模，请添加！</li>
	    </c:if>
	    </ul>
	    <div class="am-cf">
		    <div class="am-fr">
		    	<ul class="am-pagination" id="pager"></ul>
		    </div>
	    </div>
    </div>

    <div class="am-g">
		<div class="am-tabs am-margin" data-am-tabs>
		    <ul class="am-tabs-nav am-nav am-nav-tabs">
		      <li class="am-active"><a href="#tab1">信息提交</a></li>
		    </ul>
		      <div class="am-tab-panel am-fade am-in am-active" id="tab1">
		        <form class="am-form" action="/model/addModel.do" onsubmit="return check();" name="modelForm" method="POST">
		          <input type="hidden" name="id" id="mId"/>
		          <input type="hidden" name="photo" id="photo"/>
				  <input type="hidden" name="match.id" value="${match.id }"/>
				  <input type="hidden" name="curPage" value="${pager.curPage }"> 
		          <div class="am-g am-margin-top">
		            <div class="am-u-sm-2 am-text-right">*姓名</div>
		            <div class="am-u-sm-2">
		              <input class="sign_input form-control"  type="text" name="name" id="name" reg=".+" tip="姓名" placeholder="20个汉字以内，必填"/>
		            </div>
		            <div class="am-u-sm-1 am-text-right">*编号</div>
		            <div class="am-u-sm-1">
		              <input class="sign_input form-control"  type="text" name="modelId" id="modelId" reg="\d{0,4}" tip="0~9999" placeholder="0~9999"/>
		            </div>
		            <div class="am-u-sm-1 am-text-right">*赛区</div>
		            <div class="am-u-sm-2">
		              	<select class="sign_input" name="area.id" id="area" >
		              		<c:forEach items="${match.matchArea }" var="area">
			              		<option value="${area.id }">${area.area.areaName }</option>
		              		</c:forEach>
		              	</select>
		            </div>
		            <div class="am-u-sm-1 am-text-right">*性别</div>
		            <div class="am-u-sm-1">
		              	<select class="sign_input" name="sex" id="sex" >
		              		<option value="男">男</option>
		              		<option value="女">女</option>
		              	</select>
		            </div>
				    <div class="am-u-sm-1">
				      <button type="submit" class="am-btn am-btn-primary am-btn-xs">提交保存</button>
				    </div>          
		         </div>
		         <div class="am-g am-margin-top">
		            <div class="am-u-sm-2 am-text-right">*组别</div>
		            <div class="am-u-sm-2">
		              	<select class="sign_input" name="ageGroup" id="ageGroup" reg=".*">
		              	</select>
		            </div>
		            <div class="am-u-sm-1 am-text-right">联系人</div>
		            <div class="am-u-sm-1">
		              <input class="sign_input form-control"  type="text" name="contact" id="contact" reg=".*" tip="联系人" placeholder="20个汉字以内，必填"/>
		            </div>
		            <div class="am-u-sm-1">
		            </div>
		            <div class="am-u-sm-1 am-text-right">手机号</div>
		            <div class="am-u-sm-2">
		              <input class="sign_input form-control"  type="text" name="contactPhone" id="contactPhone" reg="\d*" tip="手机号码" placeholder="13* **** ****"/>
		            </div>
		            <div class="am-u-sm-1 am-text-right">*年龄</div>
		            <div class="am-u-sm-1">
		              <input class="sign_input form-control"  type="text" name="age" id="age" reg="\d{0,3}" tip="1~100" placeholder="1~100"/>
		            </div>
		            <div class="am-u-sm-1">
		            </div>
		          </div>
		          <div class="am-g am-margin-top">
		            <div class="am-u-sm-2 am-text-right">
		            	模特介绍
		            </div>
		            <div class="am-u-sm-9">
		            	<textarea rows="3" style="width: 100%" id="description" name="description"></textarea>
		            </div>
		            <div class="am-u-sm-1">
		            </div>
		          </div>
		        </form>
		          <div class="am-g am-margin-top">
		            <div class="am-u-sm-2 am-text-right">
		              上传图片
		            </div>
		            <div class="am-u-sm-3">
		              <input type="file" name="otherFile" id="otherFile" class="am-input-sm" />
		            </div>
		            <div class="am-u-sm-7">
		              <button id="uploadImgBtn" class="am-btn am-btn-default" style="line-height: inherit;" onclick="return ajaxFileUpload();">上传</button>
		            </div>
		          </div>
		          <div class="am-g am-margin-top">
		            <div class="am-u-sm-2">
		            </div>
		            <div class="am-u-sm-10">
		            	<img alt="" src="" id="photoImg" style="height: 100px;"/>
		            </div>
		          </div>
		      </div>
		    </div>
		  </div>
      </div>
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
<!--<![endif]-->
<script src="<%=basePath %>js/jquery-1.8.3.min.js"></script>
<script src="<%=basePath %>js/bootstrap.min.js"></script>
<script src="<%=basePath %>admin/assets/js/amazeui.min.js"></script>
<script src="<%=basePath %>admin/assets/js/app.js"></script>
<script type="text/javascript" src="<%=basePath %>js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="<%=basePath %>js/locales/bootstrap-datetimepicker.zh-CN.js" charset="GBK"></script>
<script type="text/javascript" src="<%=basePath %>js/locales/bootstrap-datetimepicker.zh-CN.js" charset="GBK"></script>
<script type="text/javascript" src="<%=basePath %>js/easy_validator.pack.js"></script>
<script type="text/javascript" src="<%=basePath %>js/jquery.bgiframe.min.js"></script>
<script src="<%=basePath %>js/ajaxfileupload.js"></script>
<script src="<%=basePath %>admin/js/pager.js"></script>


<script type="text/javascript">
	var basePath = '<%=basePath%>';
	var ageGroups = '${ageGroups}';
	
	$(document).ready(function(){
		
		$("#ageGroup").empty();
		$.each(ageGroups.split(','),function(idx, item){
			$("#ageGroup").append('<option value="'+idx+'">'+item+'</option>')
		});
		
		$("#areaSel").on("change", function(){
			var areaId = $(this).val();
			var matchId = $(this).attr("mid");
			var curPage = $(this).attr("curPage");
			
			var param = "id=" + matchId + "&areaId=" + areaId + "&curPage=" + curPage;
			
			window.location.href= basePath + "model/editModel.do?" + param;
		});
		
		$("#areaSel").val(${matchArea.id});
		
		gePager($("#pager"), ${pager.curPage}, ${pager.countPage}, ${pager.sumTotal});
		
	});
	

	function save()
	{
		
	}
	
	function toPage(curPage){
		var areaId = $("#areaSel").val();
		var matchId = $("#areaSel").attr("mid");
		var param = "id=" + matchId + "&areaId=" + areaId + "&curPage=" + curPage;
		
		window.location.href= basePath + "model/editModel.do?" + param;
	}
	
	$("#addMentor").click(function(){
		$("#mId").val('');
		$("#modelId").val('');
		$("#name").val('');
		$("#age").val('');
		$("#sex").val('');
		$("#videourl").val('');
		$("#videourl").val('');
		$("#photo").val('');
		$("#description").val('');
		$("#iHeight").val('');
		$("#ageGroup").val('');
		$("#photoImg").attr("src",'');
		$("#contact").val('');
		$("#contactPhone").val('');
	})
	
	$("#mentorDiv a.edit").click(function() { 
		$("#mId").val($(this).attr('mid'));
		$("#modelId").val($(this).attr('modelId'));
		$("#name").val($(this).attr('name'));
		$("#age").val($(this).attr('age'));
		$("#sex").val($(this).attr('sex'));
		$("#videourl").val($(this).attr('videourl'));
		$("#photo").val($(this).attr('photo'));
		$("#description").val($(this).attr('description'));
		$("#iHeight").val($(this).attr('iHeight'));
		$("#ageGroup").val($(this).attr('ageGroup'));
		$("#area").val($(this).attr('area'));
		$("#contact").val($(this).attr('contact'));
		$("#contactPhone").val($(this).attr('contactPhone'));
		
		if($(this).attr('photo').indexOf("http") != 0){
			$("#photoImg").attr("src","<%=basePath%>" + $(this).attr('photo'));
		}else{
			$("#photoImg").attr("src",$(this).attr('photo'));
		}
    });
	
	$("#mentorDiv a.delete").click(function(){
		var id = $(this).attr('mid');
		$.post("<%=basePath%>model/delete.do?id="+ id, null, function(ret){
			if(typeof(ret) == 'string'){
            	ret = eval("(" + ret + ")");
        	}
			if (typeof (ret.type) != 'undefined' && ret.type=='success') {
				$("#model" + id).remove();
            }
            else{
            	alert(ret.msg);
            }
		});
	});
	
	function check(){
		
		var name = $.trim($("#name").val());
		var photo = $.trim($("#photo").val());
		
		var ret = name == "" || photo == "";
		return !ret;
	}

	function ajaxFileUpload() {
		
		var userId = $("#name").val();
		if(userId == ''){
			alert('请输入姓名后再上传图片');
			return;
		}
		
		if($("#otherFile").val() == ''){
			alert('请选择要上传的文件后再上传');
			return;
		}
		
	    $.ajaxFileUpload({
            url: '/model/uploadImg.do', //用于文件上传的服务器端请求地址
            secureuri: false, //一般设置为false
            fileElementId: 'otherFile', //文件上传空间的id属性  <input type="file" id="file" name="file" />
            dataType: 'json', //返回值类型 一般设置为json
            success: function (ret)  //服务器成功响应处理函数
            {
            	if(typeof(ret) == 'string'){
	            	ret = eval("(" + ret + ")");
            	}
                if (typeof (ret.type) != 'undefined' && ret.type=='success') {
                	$("#photoImg").attr("src", "<%=basePath%>" +  ret.msg);
                	$("#photo").val(ret.msg);
                }
                else{
                	alert(ret.msg);
                }
            },
            error: function (data, status, e)//服务器响应失败处理函数
            {
                alert(e);
            }
        });
	    return false;
	}

</script>
</body>
</html>
