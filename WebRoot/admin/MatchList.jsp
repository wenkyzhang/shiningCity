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
  <link rel="stylesheet" href="<%=basePath %>admin/assets/css/amazeui.datetimepicker.css">
  
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
      
      /*
      #areaTable td{
        padding: 0px;
      }
      */
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
      <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">首页</strong> / <small>赛事列表</small></div>
    </div>

    <div class="am-g" style="margin-bottom: 15px;">
      <div class="am-u-md-4 am-cf">
          <div class="am-fl am-cf">
              <div class="am-btn-toolbar am-fl">
                  <div class="am-btn-group am-btn-group-xs">
                  <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal" onclick="init();">添加</button>
                  </div>
              </div>
          </div>
      </div>
      <div class="am-u-md-2 am-cf">共 ${fn:length(matches) } 条记录</div>
      <div class="am-u-md-3 am-cf"> </div>
     </div>
    <div id="mentorDiv" class="am-g">
        <ul class="am-avg-sm-1 am-avg-md-2 am-margin am-padding am-text-center admin-content-list ">
        <c:forEach items="${matches }" var="match" varStatus="status">
          <li>
                  <img alt="" src="<%=basePath%>${match.publicize}" class="photo"><br/>
                  <h3>${match.name }</h3>
                  <!-- 
                   -->
                  <a href="#myModal" data-toggle="modal" data-target="#myModal" onclick="initMatch(${match.id });">编辑赛事</a>&nbsp;&nbsp;
                  <a href="/child/showMatch.do?id=${match.id }">报名列表</a>&nbsp;&nbsp;
                  <a href="/model/editModel.do?id=${match.id }&curPage=1">编辑童模</a>&nbsp;&nbsp;
                  <a href="/admin/queryActivity.do?id=${match.id }&curPage=1">编辑活动</a><br/>
          </li>
        </c:forEach>
        </ul>
    </div>
   </div>
  </div>
  
  
  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
        <form onsubmit="return check();" id="matchForm" name="matchForm" accept-charset="utf-8" method="POST">
            <input type="hidden" id="matchId" name="id"/>
            <input type="hidden" id="publicize" name="publicize"/>
       </form>
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="myModalLabel">添加赛事</h4>
	      </div>
	      <div class="modal-body">
			  <div class="form-group">
			    <label for="exampleInputEmail1">赛事名称</label>
			    <input type="text" class="form-control" form="matchForm" id="matchName" name="name" placeholder="50个汉字以内"/>
			  </div>
			  <div class="form-group">
			    <label for="exampleInputEmail1">赛事描述</label>
			    <textarea class="form-control" id="matchDesc" form="matchForm" name="description" rows="3"></textarea>
			  </div>
			  <div class="form-group">
			    <label for="exampleInputEmail1">宣传图片</label>
			    <input class="form-control" style="width:50%" type="file" id="otherFile" name="otherFile"><button onclick="ajaxFileUpload();">上传</button>
			    <label id="uploadMsg"></label>
			  </div>
			  <div class="checkbox" id="matchArea">
			    <a href="javascript:;" onclick="addArea();">添加赛区</a>
			    <a href="javascript:;" onclick="$(this).parent().find('tbody').toggle()">显示/隐藏</a>
                <table class="table table-hover" id="areaTable">
                    <thead>
                        <th>赛区</th>
                        <th>投票开始时间</th>
                        <th>投票结束时间</th>
                        <th></th>
                    </thead>
                    <tbody>
                    </tbody>
				</table>
			  </div>
			  
			  <div class="checkbox" id="matchLinks">
			    <a href="javascript:;" onclick="addLinks();">添加链接</a>
                <a href="javascript:;" onclick="$(this).parent().find('tbody').toggle()">显示/隐藏</a>
                <table class="table table-hover" id="linksTable">
                    <thead>
                        <th>链接名称</th>
                        <th>链接地址</th>
                        <th></th>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
              </div>
			  
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
	        <button type="button" class="btn btn-default" id="submit">提交</button>
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
<script src="<%=basePath %>admin/assets/js/amazeui.datetimepicker.js"></script>
<script src="<%=basePath %>admin/assets/js/amazeui.datetimepicker.zh-CN.js"></script>
<script src="<%=basePath %>js/jsUtil.js"></script>

<script type="text/javascript">
    var basePath = '<%=basePath%>';
    
    $(function(){
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
        });
    	
    	$("#mentorDiv button.edit").click(function() { 
            $.ajax( { 
                type : "GET", 
                url : "/queryTeacherForAjax.do?id=" + $(this).attr('mid'), 
                data : "", 
                dataType: "json", 
                success : function(data) { 
                    if (typeof (data.type) != 'undefined') {
                        if (data.type == 'success') {
                            
                            $("#matchId").val(data.obj.id);
                            $("#matchName").val(data.obj.name);
                            $("#matchDesc").val(data.obj.description);
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
    	
    	$("#myModal #submit").on("click", function(){
    		
    		var matchId = $("#matchId").val();
    		var matchName = $("#matchName").val();
            var matchDesc = $("#matchDesc").val();
            var publicize = $("#publicize").val();
            //var image = $("#matchDesc").val();
            
            var areas = new Array();
            $.each($("#areaTable tbody TR"),function(idx, item){
            	var id = $(item).find("input[name=id]").val();
            	var name = $(item).find("input[name=name]").val();
            	var voteStart = $(item).find("input[name=voteStart]").val();
            	var voteEnd = $(item).find("input[name=voteEnd]").val();
            	areas[idx] = new Object();
            	areas[idx].id=id;
            	areas[idx].area = new Object();
            	areas[idx].area.id=2;
            	areas[idx].area.areaName=name;
            	areas[idx].voteStart=voteStart;
            	areas[idx].voteEnd=voteEnd;
            });
            var links = new Array();
            $.each($("#linksTable tbody TR"),function(idx, item){
            	var id = $(item).find("input[name=id]").val();
            	var name = $(item).find("input[name=name]").val();
            	var link = $(item).find("input[name=link]").val();
            	links[idx] = new Object();
            	links[idx].id=id;
            	links[idx].name=name;
            	links[idx].link=link;
            });
            
            var data = {"id":matchId, "name":matchName, "description":matchDesc, "publicize":publicize, "links":links, "matchArea":areas };
    		
    		$.ajax( { 
                type : "POST", 
                url : "<%=basePath%>match/addMatch.do", 
                data : data, 
                dataType: "json", 
                success : function(data) {
                    if(typeof data == "string"){
                        data = eval("("+data+")");
                    }
                    
                    if (typeof (data.type) != 'undefined') {
                        if (data.type == 'success') {
                        	location.href= "<%=basePath%>match/queryMatches.do";
                        } else {
                            alert(data.msg);
                        }
                    } else {
                        alert("系统异常，请稍后再试。");
                    };
                }
            });
    	});
    });
    
    

    function ajaxFileUpload() {
        
    	if($("#matchName").val() == ''){
            alert('请先输入赛事名称');
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
            success: function (data)  //服务器成功响应处理函数
            {
            	if(typeof data == "string"){
                    data = eval("("+data+")");
                }
            	
            	if (typeof (data.type) != 'undefined') {
                    if (data.type == 'success') {
                    	$("#uploadMsg").text("上传成功");
                    	$("#publicize").val(data.msg);
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
        return false;
    }
    
    /**
     * 初始化添加对话框
     */
    function init(){
    	$("#matchId").val("");
    	$("input[name=id]").val();
    	$("#areaTable tbody").empty();
    	$("#linksTable tbody").empty();
    }
    
    function check(){
    	return true;
    }
    
    /**
     * 初始化编辑对话框
     */
    function initMatch(mId){
    	$.ajax( { 
            type : "GET", 
            url : "<%=basePath%>match/getMatchInfo.do?id=" + mId, 
            data : "", 
            dataType: "json", 
            success : function(data) {
            	if(typeof data == "string"){
            		data = eval("("+data+")");
                }
            	
                if (typeof (data.type) != 'undefined') {
                    if (data.type == 'success') {
                        
                        $("#matchId").val(data.obj.id);
                        $("#matchName").val(data.obj.name);
                        $("#matchDesc").val(data.obj.description);
                        $("#publicize").val(data.obj.publicize);
                        
                        var matchArea = data.obj.matchArea;
                        $("#areaTable tbody").empty();
                        for(var i=0;i<matchArea.length;i++)
                        {
                        	addArea(matchArea[i]);
                        }
                        
                        var matchLinks = data.obj.links;
                        $("#linksTable tbody").empty();
                        for(var i=0;i<matchLinks.length;i++)
                        {
                        	addLinks(matchLinks[i]);
                        }
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
     * 添加赛区
     */
     
    var now = new Date();
    var tomorrow = new Date();
    tomorrow.setDate(tomorrow.getDate() + 1);
    var sortId = 0;
    function addArea(area){
        var tbody = $("#areaTable tbody");
        var tr = $("<tr></tr>");
        
        var id = "";
        var name = "";
        var voteStart = now.format('yyyy-MM-dd');
        var voteEnd = tomorrow.format('yyyy-MM-dd');
        
        if(!!area){
        	id = area.id;
        	name = area.area.areaName;
        	voteStart = area.voteStart;
        	voteEnd = area.voteEnd;
        }
        sortId = sortId + 1;
        tr.append('<input type="hidden" name="id" value="'+id+'"/>');
        tr.append('<td><input class="sign_input form-control"  type="text" name="name" reg=".+" value="'+name+'"/></td>');
        tr.append('<td><input class="form-control form-datetime" type="text" name="voteStart" id="start'+sortId+'" data-date="" value="'+voteStart+'" data-date-format="yyyy-mm-dd" reg=".+" placeholder="点击修改" readonly="readonly"/></td>');
        tr.append('<td><input class="form-control form-datetime" type="text" name="voteEnd" id="end'+sortId+'" data-date="" value="'+voteEnd+'" data-date-format="yyyy-mm-dd" reg=".+" placeholder="点击修改" readonly="readonly"/></td>');
        tr.append('<td><a href="javascript:;" onclick="$(this).parents(\'tr\').remove();">删除</a></td>');
        
        
        tbody.append(tr);
        $('.form-datetime').datetimepicker({
        	language:  'zh',
            autoclose: 1,
            minView: 2,
            maxView: 2,
            startDate: now.format('yyyy-MM-dd')
        }).on('changeDate', function(ev){
        	var start = $(this).parents('TR').find("input[name=voteStart]").val();
        	var end = $(this).parents('TR').find("input[name=voteEnd]").val();
        	if($(this).attr('name') == 'voteEnd'){
        		if(end < start){
		        	alert("结束时间不能小于开始时间");
        			$(this).val(start);
        		}
        	}
        	else{
        		if(start > end){
	        		$(this).parents('TR').find("input[name=voteEnd]").val(start);
        		}
        	}
        });
        
        tbody.show();
    }
    
    /**
     * 赛事首页链接管理
     */
    function addLinks(matchLink){
        var tbody = $("#linksTable tbody");
        var tr = $("<tr></tr>");
        
        var id = "";
        var name = "";
        var link = "";
        
        if(!!matchLink){
            id = matchLink.id;
            name = matchLink.name;
            link = matchLink.link;
        }
        sortId = sortId + 1;
        tr.append('<input type="hidden" name="id" value="'+id+'"/>');
        tr.append('<td><input class="sign_input form-control"  type="text" name="name" reg=".+" value="'+name+'"/></td>');
        tr.append('<td><input class="sign_input form-control"  type="text" name="link" reg=".+" value="'+link+'"/></td>');
        tr.append('<td><a href="javascript:;" onclick="$(this).parents(\'tr\').remove();">删除</a></td>');
        tbody.append(tr);
        
        tbody.show();
    }

</script>
</body>
</html>
