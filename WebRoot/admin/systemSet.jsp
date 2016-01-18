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
  	li{
  		text-align: center;
  	}
	
	#message .sucessmsg{
	
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
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">首页</strong> / <small>系统设置</small></div>
    </div>
    
    <div class="am-g">
      <div class="am-u-sm-12">
          <table class="am-table am-table-striped am-table-hover table-main">
            <thead>
              <tr>
                <th class="table-type">名称</th>
                <th class="table-type">内容</th>
                <th class="table-type"></th>
              </tr>
          </thead>
          <tbody>
          	<c:forEach items="${sets }" var="item" varStatus="status">
	            <tr id="${item.id }" key="${item.keyValue }" name="${item.name }">
	              <td style="min-width: 150px;">${item.name}</td>
	              <td class="content">${item.content}</td>
	              <td style="min-width: 100px;">
	                   <a href="#myModal" data-toggle="modal" data-target="#myModal" onclick="initSet(this);">修改</a>
	              </td>
	            </tr>
          	</c:forEach>
          </tbody>
        </table>
      </div>

    </div>
      </div>
  </div>
  
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
        <form>
          <input type="hidden" class="form-control" id="systemSetId" name="id"/>
          <input type="hidden" class="form-control" id="systemSetKey" name="key"/>
          <input type="hidden" class="form-control" id="systemSetName" name="name"/>
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title" id="myModalLabel">添加/修改</h4>
          </div>
          <div class="modal-body">
              <div class="form-group">
                <label id="paramName"></label>
                <!-- 
                <textarea class="form-control" id="systemSetContent" name="content" rows="3"></textarea>
                 -->
                <script id="systemSetContent" name="content" type="text/plain">这里写你的初始化内容</script>
              </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
            <button type="button" class="btn btn-default" id="submit">提交</button>
          </div>
       </form>
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

<!-- 加载编辑器的容器 

<script id="container" name="content" type="text/plain">
        这里写你的初始化内容
</script>
-->
<!-- 配置文件 -->
<script type="text/javascript" src="<%=basePath %>js/ueditor1_4_3_1/ueditor.config.js"></script>
<!-- 编辑器源码文件 -->
<script type="text/javascript" src="<%=basePath %>js/ueditor1_4_3_1/ueditor.all.js"></script>
<!-- 实例化编辑器 -->
<script type="text/javascript">
    var ue = UE.getEditor('systemSetContent');
</script>


<script type="text/javascript">
	var basePath = '<%=basePath%>';
	
	function initSet(obj){
		
		var tr = $(obj).parents("TR");
        var id = tr.attr("id");
		
		$.ajax( { 
            type : "POST", 
            url : "<%=basePath%>admin/getSystemSet.do", 
            data : {"id":id}, 
            dataType: "json", 
            success : function(data) {
                if(typeof data == "string"){
                    data = eval("("+data+")");
                }
                
                if (typeof (data.type) != 'undefined') {
                    if (data.type == 'success') {
                    	$("#systemSetId").val(data.obj.id);
                        $("#systemSetKey").val(data.obj.keyValue);
                        $("#systemSetName").val(data.obj.name);
                        $("#paramName").text(data.obj.name);
                        //$("#systemSetContent").val(content);
                        ue.setContent(data.obj.content);
                    } else {
                        alert(data.msg);
                    }
                } else {
                    alert("系统异常，请稍后再试。");
                };
            }
        });
	}
	
	$(function(){
		$("#myModal #submit").on("click", function(){
            
            var id = $("#systemSetId").val();
            var name = $("#systemSetName").val();
            var key = $("#systemSetKey").val();
            var content = $("#systemSetContent").val();
            var content = ue.getContent();//$("#systemSetContent").val();
            
            $.ajax( { 
                type : "POST", 
                url : "<%=basePath%>admin/saveSystemSet.do", 
                data : {"id":id, "name":name, "keyValue":key, "content":content }, 
                dataType: "json", 
                success : function(data) {
                    if(typeof data == "string"){
                        data = eval("("+data+")");
                    }
                    
                    if (typeof (data.type) != 'undefined') {
                        if (data.type == 'success') {
                            //$("TR#" + data.obj.id).find(".content").html(data.obj.content.replace("/\n/gm", "<br/>"));
                            $("TR#" + data.obj.id).find(".content").text(sub(data.obj.content, 200));
                            $("#myModal").model('hide');
                        } else {
                        	alert(data.msg);
                        }
                    } else {
                        alert("系统异常，请稍后再试。");
                    };
                }
            });
        });
		
		$('td.content').each(function(){
			$(this).text(sub($(this).text(), 200));
		});
	});
	
	function sub(str, len){
		
		if(str.length > len){
			return str.substring(0,len) + "...";
		}
		return str;
	}
	
</script>
</body>
</html>
