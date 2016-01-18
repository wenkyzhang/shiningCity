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
  <title>国际闪耀之城--赛事列表</title>
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
  	
  	.form-file{
  	  padding-top: 10px;
  	  width: 70%;
  	}
  	.unitLogo{
  	  min-height: 200px !important;
  	}
  	
  	li{
  		text-align: center;
  	}
  	
    td.name{
      width:300px !important;
      font-size: 18px;
    }
  	
  	th.logo{
  	  width:10% !important;
  	}
  	
  	th.operator,td.operator{
  	 width: 120px !important;
  	 text-align: center;
  	}
  	
  	th.keywords{
  	 width: 200px !important;
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
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">首页</strong> / <small>联合机构列表</small></div>
    </div>
    <div class="am-g">
      <div class="am-u-md-5 am-cf">
        <div class="am-fl am-cf">
          <div class="am-btn-toolbar am-fl">
            <div class="am-btn-group am-btn-group-xs"></div>
          </div>
        </div>
      </div>
      <div class="am-u-md-1 am-cf">共 ${fn:length(internals) } 个机构</div>
      <div class="am-u-md-1 am-cf">
        <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal" id="addInternals">添加联合机构</button>
      </div>
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
    <div class="am-g" id="dataGrid">
      <div class="am-u-sm-12">
        <form class="am-form">
          <table class="am-table am-table-striped am-table-hover table-main">
            <thead>
              <tr>
                <th class="table-check"><input type="checkbox" /></th>
                <th class="table-id">ID</th>
                <th class="table-type logo">Logo</th>
                <th class="table-type name">名称</th>
                <th class="table-type">简介</th>
                <th class="table-type keywords">关键词</th>
                <th class="table-type operator"></th>
              </tr>
          </thead>
          <tbody>
          	<c:forEach items="${internals }" var="internal" varStatus="status">
	            <tr uId="${internal.id }">
	              <td><input type="checkbox" /></td>
	              <td>${internal.id }</td>
	              <td><a href="queryInternal.do?id=${internal.id }" target="_blank"><img src="<%=basePath %>${internal.logo}"  class="img-rounded"/></a></td>
	              <td class="name">${internal.name}</td>
	              <td>${internal.title}</td>
	              <td>${internal.words}</td>
	              <td class="operator">
	               <a href="#myModal" data-toggle="modal" data-target="#myModal" class="edit">查看/修改</a>
	               <a href="javascript:;" class="delete">删除</a>
	              </td>
	            </tr>
          	</c:forEach>
          </tbody>
        </table>
          <div class="am-cf">
			  共 ${fn:length(internals) } 条记录
			  <div class="am-fr">
			    <ul class="am-pagination">
			      <li class="am-disabled"><a href="#">«</a></li>
			      <li class="am-active"><a href="#">1</a></li>
			      <li><a href="#">»</a></li>
			    </ul>
			  </div>
			</div>
          <hr />
        </form>
      </div>
    </div>
   </div>
  </div>
  
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  <div class="modal-dialog modal-lg" role="document">
	    <div class="modal-content">
	          <div class="modal-header">
	            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	            <h4 class="modal-title" id="myModalLabel">维护联合机构详情</h4>
	          </div>
	          <div class="modal-body">
                <div class="am-u-md-5 am-cf">
                   <div class="am-u-md-12 am-cf">
                       <label for="exampleInputEmail1">Logo图片</label>
                       <img class="am-u-md-12 am-cf internalLogo" alt="logo" src=""/>
                       <div class="form-group form-inline">
                           <input class="form-control" style="width:70%" type="file" id="otherFile" name="otherFile"/>
                           <button onclick="ajaxFileUpload();">上传</button>
                           <label id="uploadMsg"></label>
                       </div>
                   </div>
                </div>
		        <form action="/admin/addOrUpdateInternal.do" name="internalForm" method="post">
		          <input type="hidden" class="form-control" id="internalId" name="id"/>
		          <input type="hidden" class="form-control" id="internalLogo" name="logo"/>
	              <div class="am-u-md-7 am-cf">
		              <div class="form-group">
		                <label for="internalName">名称</label>
		                <input type="text" class="form-control" id="internalName" name="name" placeholder="机构名称"/>
		              </div>
		              <div class="form-group">
		                <label for="internalWords">关键词</label>
		                <input type="text" class="form-control" id="internalWords" name="words" placeholder="多个用逗号分隔"/>
		              </div>
		              <div class="form-group">
		                <label for="internalTitle">简介</label>
		                <textarea class="form-control" id="internalTitle" name="title" rows="3" placeholder="100字以内"></textarea>
		              </div>
	              </div>
                  <div style="clear:both;"></div>
	              <div class="am-u-md-12 am-cf form-group">
	                <label for="internalContent">服务内容</label>
	                <script id="internalContent" name="content" type="text/plain">这里写你的初始化内容</script>
	              </div>
			    </form>
	          </div>
	          <div style="clear:both;"></div>
	          <div class="modal-footer">
	            <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
	            <button type="submit" class="btn btn-default" id="submit">提交</button>
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


<!-- 配置文件 -->
<script type="text/javascript" src="<%=basePath %>js/ueditor1_4_3_1/ueditor.config.js"></script>
<!-- 编辑器源码文件 -->
<script type="text/javascript" src="<%=basePath %>js/ueditor1_4_3_1/ueditor.all.js"></script>
<!-- 实例化编辑器 -->
<script type="text/javascript">
    var ue = UE.getEditor('internalContent');
</script>

<script type="text/javascript">
	var basePath = '<%=basePath%>';
	
	$(function(){
		
		$("#addinternals").click(function(){
	        $("#internalId").val("");
	        $("#internalLogo").val("");
	        $("img.internalLogo").attr("src", "");
	        $("#internalName").val("");
	        $("#internalTitle").val("");
	        $("#internalWords").val("");
	        ue.setContent("");
	    });
	    
	    $("#dataGrid a.edit").click(function() { 
	        $.ajax( { 
	            type : "GET", 
	            url : "/queryInternalDetailsForAjax.do?id=" + $(this).parents("TR").attr('uId'), 
	            data : "", 
	            dataType: "json", 
	            success : function(data) { 
	                if (typeof (data.type) != 'undefined') {
	                    if (data.type == 'success') {
	                        $("#internalId").val(data.obj.id);
	                        $("#internalLogo").val(data.obj.logo);
	                        $("img.internalLogo").attr("src", basePath + data.obj.logo);
	                        $("#internalName").val(data.obj.name);
	                        $("#internalTitle").val(data.obj.title);
	                        $("#internalWords").val(data.obj.words);
	                        ue.setContent(data.obj.content);
	                    } else {
	                        alert(data.msg);
	                    }
	                }
	            } 
	        }); 
	    });
		
	    $("#dataGrid a.delete").click(function() { 
	        $.ajax( { 
	            type : "GET", 
	            url : "/admin/deleteInternalForAjax.do?id=" + $(this).parents("TR").attr('uId'), 
	            data : "", 
	            dataType: "json", 
	            success : function(data) { 
	                if (typeof (data.type) != 'undefined') {
	                    if (data.type == 'success') {
	                    	location.reload();
	                    } else {
	                        alert(data.msg);
	                    }
	                }
	            } 
	        }); 
	    });
		
		$("#submit").click(function(){
			var name = $("#internalName").val();
			if(name == null || name == ""){
				alert("机构名称不能为空！");
				return ;
			}
			
			$.ajax( { 
                type : "POST", 
                url : "/admin/addOrUpdateInternal.do", 
                data : $("Form[name=internalForm]").serialize(), 
                dataType: "json", 
                success : function(data) { 
                    if (typeof (data.type) != 'undefined') {
                        if (data.type == 'success') {
                        	location.reload();
                        } else {
                            alert(data.msg);
                        }
                    }
                } 
            });
		});
	});

	function ajaxFileUpload() {
		var name = $("#internalName").val();
        if(name == null || name == ""){
            alert("请先输入机构名称！");
            return ;
        }
		if($("#otherFile").val() == ''){
            alert('请选择要上传的文件后再上传');
            return;
        }
		
	    $.ajaxFileUpload({
	        url: '/admin/uploadImg.do', //用于文件上传的服务器端请求地址
	        secureuri: false, //一般设置为false
	        fileElementId: 'otherFile', //文件上传空间的id属性  <input type="file" id="file" name="file" />
	        dataType: 'json', //返回值类型 一般设置为json
	        success: function (data, status)  //服务器成功响应处理函数
	        {
	            if(typeof data == "string"){
	                data = eval("("+data+")");
	            }
	            
	            if (typeof (data.type) != 'undefined') {
	                if (data.type == 'success') {
	                    $("#uploadMsg").text("上传成功");
	                    $("#internalLogo").val(data.msg);
	                    
	                    $("img.internalLogo").attr("src", basePath + data.msg);
	                } else {
	                    $("#uploadMsg").text("上传失败");
	                }
	            } else {
	                $("#uploadMsg").text("系统异常，请稍后再试。");
	            };
	        },
	        error: function (data, status, e)//服务器响应失败处理函数
	        {
	            alert(e);
	        }
	    });
	}

</script>
</body>
</html>
