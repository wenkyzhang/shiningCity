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
  <link href="<%=basePath %>css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
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
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">首页</strong> / <small>活动列表</small></div>
    </div>


    <div class="am-g">
      <div class="am-u-md-4 am-cf">
        <div class="am-fl am-cf">
          <div class="am-btn-toolbar am-fl">
            <div class="am-btn-group am-btn-group-xs">
              <button type="button" class="am-btn am-btn-default" id="addMentor"><span class="am-icon-plus"></span> 新增</button>
            </div>
          </div>
        </div>
      </div>
      <div class="am-u-md-2 am-cf">共 ${pager.sumTotal } 个活动</div>
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
    
    <div class="am-g">
      <div class="am-u-sm-12" id="dataDiv">
        <form class="am-form">
          <table class="am-table am-table-striped am-table-hover table-main">
            <thead>
              <tr>
                <th class="table-check"><input type="checkbox" /></th>
                <th class="table-id">ID</th>
                <th class="table-type">活动名称</th>
                <th class="table-type">赛区</th>
                <th class="table-type">开始时间</th>
                <th class="table-type">结束时间</th>
                <th class="table-type">创建人</th>
                <th class="table-type">创建时间</th>
                <th class="table-type"></th>
              </tr>
          </thead>
          <tbody>
          	<c:forEach items="${pager.data }" var="activity" varStatus="status">
	            <tr>
	              <td><input type="checkbox" /></td>
	              <td>${activity.id }</td>
	              <td>${activity.name}</td>
	              <td>${activity.area.area.areaName}</td>
	              <td>${activity.startDate}</td>
	              <td>${activity.endDate}</td>
	              <td>${activity.creater}</td>
	              <td>${activity.createDate}</td>
	              <td>
	              	<a href="javascript:;" class="edit"
	              		aid="${activity.id }"
	              		name="${activity.name }"
	              		area="${activity.area.id }"
	              		startDate="${activity.startDate }"
	              		endDate="${activity.endDate }"
	              		creater="${activity.creater }"
	              		createDate="${activity.createDate }"
	              		><span class="am-icon-pencil-square-o"></span>编辑</a>&nbsp;&nbsp;
                  	<a href="javascript:;" class="delete" 
                  		aid="${activity.id }"
                  		><span class="am-icon-trash-o"></span>删除</a>
	              </td>
	            </tr>
          	</c:forEach>
          </tbody>
        </table>
          <div class="am-cf">
              共 ${pager.sumTotal } 条活动记录
              <div class="am-fr">
                <ul class="am-pagination" id="pager"></ul>
              </div>
            </div>
          <hr />
        </form>
      </div>

    </div>

    <div class="am-g">
		<div class="am-tabs am-margin" data-am-tabs>
		    <ul class="am-tabs-nav am-nav am-nav-tabs">
		      <li class="am-active"><a href="#tab1">信息提交</a></li>
		    </ul>
		      <div class="am-tab-panel am-fade am-in am-active" id="tab1">
		        <form class="am-form" action="/admin/addActivity.do" onsubmit="return check();" name="modelForm" method="POST">
		          <input type="hidden" name="id" id="aid"/>
		          <input type="hidden" name="match.id" id="mid" value="${match.id }"/>
				  <input type="hidden" name="curPage" value="${pager.curPage }"> 
				  <input type="hidden" name="creater" id="creater" value=""> 
				  <input type="hidden" name="createDate" id="createDate" value=""> 
		          <div class="am-g am-margin-top">
		            <div class="am-u-sm-2 am-text-right">*活动名称</div>
		            <div class="am-u-sm-2">
		              <input class="sign_input form-control"  type="text" name="name" id="aName" reg=".+" tip="赛区名称" placeholder="20个汉字以内，必填"/>
		            </div>
		            <div class="am-u-sm-1 am-text-right">*选择赛区</div>
		            <div class="am-u-sm-2">
		              <select class="sign_input form-control" name="area.id" id="area">
		              	<c:forEach items="${match.matchArea }" var="mArea">
			              	<option value="${mArea.id }">${mArea.area.areaName }</option>
		              	</c:forEach>
		              </select>
		            </div>
				    <div class="am-u-sm-5">
				    	
				    </div>
		         </div>
		          <div class="am-g am-margin-top">
		            <div class="am-u-sm-2 am-text-right">*开始时间</div>
		            <div class="am-u-sm-2">
		              <input class="sign_input form-control" type="text" name="startDate" id="startDate"
		              		data-date="" data-date-format="yyyy-mm-dd hh:ii" 
		              		reg=".+" tip="开始时间" placeholder="必填"/>
		            </div>
		            <div class="am-u-sm-1 am-text-right">*结束时间</div>
		            <div class="am-u-sm-2">
		              <input class="sign_input form-control" type="text" name="endDate" id="endDate"
		              		data-date="" data-date-format="yyyy-mm-dd hh:ii" 
		              		reg=".+" tip="开始时间" placeholder="必填"/>
		            </div>
				    <div class="am-u-sm-5">
				    	
				    </div>
		         </div>
		          <div class="am-g am-margin-top">
		            <div class="am-u-sm-2 am-text-right"></div>
				    <div class="am-u-sm-10">
				      <button type="submit" class="am-btn am-btn-primary am-btn-xs">提交保存</button>
				    </div>
		         </div>
		        </form>
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
<script src="<%=basePath %>admin/assets/js/amazeui.min.js"></script>
<!--<![endif]-->
<script src="<%=basePath %>js/jquery-1.8.3.min.js"></script>
<script src="<%=basePath %>js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=basePath %>js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="<%=basePath %>js/locales/bootstrap-datetimepicker.zh-CN.js" charset="GBK"></script>
<script type="text/javascript" src="<%=basePath %>js/easy_validator.pack.js"></script>
<script type="text/javascript" src="<%=basePath %>js/jquery.bgiframe.min.js"></script>
<script src="<%=basePath %>admin/assets/js/app.js"></script>
<script src="<%=basePath %>js/ajaxfileupload.js"></script>
<script src="<%=basePath %>admin/js/pager.js"></script>

<script type="text/javascript">
	var basePath = '<%=basePath%>';
	
	$(document).ready(function(){
		
		$('#startDate').datetimepicker({
	        language:  'zh',
	        weekStart: 1,
	        todayBtn:  0,
			autoclose: 1,
			todayHighlight: 1,
			startView: 0,
			minView: 0,
			forceParse: 0
	    });
		
		$('#endDate').datetimepicker({
	        language:  'zh',
	        weekStart: 1,
	        todayBtn:  0,
			autoclose: 1,
			todayHighlight: 1,
			startView: 0,
			minView: 0,
			forceParse: 0
	    });
		
		$("#addMentor").click(function(){
			$("#aid").val('');
			$("#creater").val('');
			$("#createDate").val('');
			$("#aName").val('');
			$("#startDate").val('');
			$("#endDate").val('');
		})
		
		$("#dataDiv a.edit").click(function() { 
			$("#aid").val($(this).attr('aid'));
			$("#creater").val($(this).attr('creater'));
			$("#createDate").val($(this).attr('createDate'));
			$("#area").val($(this).attr('area'));
			$("#startDate").val($(this).attr('startDate'));
			$("#endDate").val($(this).attr('endDate'));
			$("#aName").val($(this).attr('name'));
	    });
		
		$("#dataDiv a.delete").click(function(){
			var id = $(this).attr('aid');
			$.post("<%=basePath%>admin/deleteActivity.do?id="+ id, null, function(ret){
				
				if(typeof ret == "string"){
					ret = eval("("+ret+")");
				}
				
				if (typeof (ret.type) != 'undefined' && ret.type=='success') {
					window.location.href='<%=basePath%>admin/queryActivity.do?id=${match.id}&curPage=${pager.curPage}';
	            }
	            else{
	            	alert(ret.msg);
	            }
			});
		});
		
		gePager($("#pager"), ${pager.curPage}, ${pager.countPage}, ${pager.sumTotal});
	});
	
	
	function check(){
		
		var name = $.trim($("#aName").val());
		var mId = $.trim($("#mid").val());
		var startDate = $.trim($("#startDate").val());
		var endDate = $.trim($("#endDate").val());
		
		var ret = name == "" || mId == "" || startDate == "" || endDate == "";
		return !ret;
	}
	
	function toPage(curPage){
        var param = "id=" + ${match.id } + "&curPage=" + curPage;
        
        window.location.href= basePath + "admin/queryActivity.do?" + param;
    }
</script>
</body>
</html>
