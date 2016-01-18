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
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">首页</strong> / <small>查看列表</small></div>
    </div>


    <div class="am-g">
      <div class="am-u-md-4 am-cf">
        <div class="am-fl am-cf">
          <div class="am-btn-toolbar am-fl">
            <div class="am-btn-group am-btn-group-xs">
              <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal" onclick="init();">添加</button>
            </div>
          </div>
        </div>
      </div>
      <div class="am-u-md-2 am-cf">共 ${pager.sumTotal } 条记录</div>
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
      <div class="am-u-sm-12">
        <form class="am-form">
          <table class="am-table am-table-striped am-table-hover table-main">
            <thead>
              <tr>
                <th class="table-check"><input type="checkbox" /></th>
                <th class="table-id">ID</th>
                <th class="table-type">名称</th>
                <th class="table-type">图片</th>
                <th class="table-type">地址</th>
                <th class="table-type">发布时间</th>
                <th class="table-type"></th>
              </tr>
          </thead>
          <tbody>
          	<c:forEach items="${pager.data }" var="infor" varStatus="status">
	            <tr>
	              <td><input type="checkbox" /></td>
	              <td>${infor.id }</td>
	              <td>${infor.name}</td>
	              <td>${infor.image}</td>
	              <td>${infor.url}</td>
	              <td>${infor.pubDate}</td>
	              <td>
	                   <a href="javascript:;" onclick="modifyInfor(${infor.id})">修改</a>
	                   <a href="javascript:;" onclick="delInfor(${infor.id})">删除</a>
	              </td>
	            </tr>
          	</c:forEach>
          </tbody>
        </table>
          <div class="am-cf">
	            <div class="am-fr">
	                <ul class="am-pagination" id="pager"></ul>
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
    <div class="modal-content" id="inforDiv">
        <form action="<%=basePath%>admin/addInfor.do" onsubmit="return check();" id="inforForm" name="inforForm" accept-charset="utf-8" method="POST">
          <input type="hidden" class="form-control" id="inforId" name="id"/>
          <input type="hidden" class="form-control" id="matchId" name="match.id" value="${match.id }"/>
          <input type="hidden" class="form-control" id="type" name="type" value="${type }"/>
          <input type="hidden" class="form-control" id="addUser" name="addUser"/>
          <input type="hidden" class="form-control" id="addDate" name="addDate"/>
          <input type="hidden" class="form-control" id="curPage" name="curPage" value="${pager.curPage }"/>
          <input type="hidden" class="form-control" id="image" name="image"/>
       </form>
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <h4 class="modal-title" id="myModalLabel">添加/修改</h4>
          </div>
          <div class="modal-body">
              <div class="form-group">
                <label for="exampleInputEmail1">*名称</label>
                <input type="text" class="form-control" form="inforForm" id="name" name="name" reg=".{2,50}" placeholder="50个汉字以内"/>
              </div>
              <div class="form-group">
                <label for="exampleInputEmail1">*地址</label>
                <input type="text" class="form-control" form="inforForm" id="url" name="url" reg="https?://.{2,50}" placeholder="http[s]://"/>
              </div>
              <div class="form-group">
                <label for="exampleInputEmail1">*发布日期</label>
                <input class="form-control" type="text" form="inforForm" name="pubDate" id="pubDate"
                            data-date="" data-date-format="yyyy-mm-dd" 
                            reg=".+" tip="开始时间" placeholder="点击修改" readonly="readonly"/>
              </div>
              <div class="form-group">
                <label for="exampleInputEmail1">宣传图片</label>
                <input class="form-control" style="50%" type="file" id="otherFile" name="otherFile"><button onclick="ajaxFileUpload();">上传</button>
              </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
            <button type="submit" class="btn btn-default" form="inforForm" id="submit">提交</button>
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
<script src="<%=basePath %>admin/js/pager.js"></script>

<script type="text/javascript">
	var basePath = '<%=basePath%>';
	
	$(document).ready(function(){
		$('#pubDate').datetimepicker({
            language:  'zh',
            autoclose: 1,
            minView: 2,
            maxView: 2
        });
		
		gePager($("#pager"), ${pager.curPage}, ${pager.countPage}, ${pager.sumTotal});
	});
	
	function toPage(curPage){
        var matchId = ${match.id};
        var type = ${type};
        var param = "id=" + matchId + "&type=" + type + "&curPage=" + curPage;
        
        window.location.href= basePath + "admin/queryInfor.do?" + param;
    }
	
	function check(){
		if($("#inforDiv #name").val() == "" ||
        $("#inforDiv #url").val == "" ||
        $("#inforDiv #pubDate").val() == ""){
			alert("*字段为必填项！")
			return false;
		}
	}
	
    /**
     * 初始化添加对话框
     */
    function init(){
    	$("#inforDiv #inforId").val("");
    	$("#inforDiv #name").val("");
    	$("#inforDiv #url").val("");
    	$("#inforDiv #pubDate").val("");
    	$("#inforDiv #addUser").val("");
    	$("#inforDiv #addDate").val("");
    	$("#inforDiv #image").val("");
    }

    /**
     * 删除
     */
    function delInfor(id){
    	window.location = basePath + "admin/deleteInfor.do?matchId=${match.id}&type=${type}&curPage=${pager.curPage}&id=" + id;
    }
    
    /**
     * 修改
     */
    function modifyInfor(id){
    	$.ajax( { 
            type : "GET", 
            url : "<%=basePath%>query/queryInfor.do?id=" + id, 
            data : null, 
            dataType: "json", 
            success : function(data) {
                if(typeof data == "string"){
                    data = eval("("+data+")");
                }
                
                if (typeof (data.type) != 'undefined') {
                    if (data.type == 'success') {
                        
                    	$("#inforDiv #inforId").val(data.obj.id);
                        $("#inforDiv #name").val(data.obj.name);
                        $("#inforDiv #url").val(data.obj.url);
                        $("#inforDiv #pubDate").val(data.obj.pubDate);
                        $("#inforDiv #addUser").val(data.obj.addUser);
                        $("#inforDiv #addDate").val(data.obj.addDate);
                        $("#inforDiv #image").val(data.obj.image);
                        
                        $('#myModal').modal({
                        	  keyboard: false
                        });
                    } else {
                        alert(data.msg);
                    }
                } else {
                    alert("系统异常，请稍后再试。");
                };
            }
        });
    }
    
    /**
     * 上传图片
     */
    function ajaxFileUpload(){
        
        var userId = $("#name").val();
        if(userId == ''){
            alert('请输入名称后再上传图片');
            return;
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
            success: function (ret)  //服务器成功响应处理函数
            {
                if(typeof(ret) == 'string'){
                    ret = eval("(" + ret + ")");
                }
                if (typeof (ret.type) != 'undefined' && ret.type=='success') {
                    $("#image").val(ret.msg);
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
