<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Language" content="zh-CN" />
<script type="text/javascript" src="js/jquery1.4.js"></script>
<title>国际闪耀之城</title>
<meta name="Keywords" content="国际闪耀之城,艺术" />
<meta name="Description" content="国际闪耀之城,网站简介。" />
<!-- Le styles -->
<link rel="stylesheet" type="text/css" href="style/basic.css" />
<link rel="stylesheet" type="text/css" href="style/index.css" />
<script type="text/javascript" src="js/bioV4.min.js"></script>
<script type="text/javascript" src="js/jquery.lazyload.min.js"></script>
<link rel="stylesheet" type="text/css" href="style/comment.css" />
<script type="text/javascript" src="js/function.js"></script>
<!--[if IE 6]>
<script type="text/javascript" src="js/DD_belatedPNG.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('img,.ie6png');
</script>
<![endif]-->
<link type="text/css" rel="stylesheet" href="style/biobox2.css" />
<script type="text/javascript" src="js/biobox.js"></script>

</head>
<body>
    <script type="text/javascript" src="js/borsertocss.js" />
    <!-- 判断在IE9以下浏览器中根据像素的不同而设置的样式 -->

    <!--头部代码开始-->
    <jsp:include page="head.jsp">
        <jsp:param value="about" name="curPage"/>
    </jsp:include>
    <!--头部代码结束-->

    <div class="hr tp-div-nexthr" style="margin-top: 0; margin-bottom: 0; padding: 0;"></div>
    <div class="container pb-15">
        <!-- Example row of columns -->
        <div class="row home-index">
            <div class="span13">
                <!--联盟介绍开始-->
                <div class="span13">
                    <div class="label-div t-20 border-all">
                        <div class="l-15">
                            <h3 class="label-title border-b b-15 small clearfix"
                                style="padding-bottom: 14px;">
                                <span class="pull-left r-10">关于联盟</span>
                            </h3>
                        </div>

                        <div id="teacher_row" class="label-main clearfix" style="padding-left: 16px;">
                        <div class="span6 r-10">
                             <h1 class="center b-20 ">联盟简介</h1>
                             <div class="weiruan" id="allianceabout"></div>
                          </div>
                          <div class="span6">
                              <img src="images/banner_slide_13.jpg" alt="" />
                          </div>
                        </div>
                    </div>
                </div>
                <!--联盟介绍结束-->
                
                <!-- 章程开始 -->
                <div class="span13">
                    <div class="label-div t-20 border-all">
                        <div class="l-15">
                            <h3 class="label-title border-b b-15 small clearfix"
                                style="padding-bottom: 14px;">
                                <span class="pull-left r-10">联盟章程</span>
                                <a href="javascript:;" title="展开" onclick="show(this);" id="showAnthor" class="pull-right">+展开</a>
                            </h3>
                        </div>

                        <div id="zhangcheng">
                            <p style="margin-top:auto;margin-bottom: auto;text-align:center;background:white"><strong><span style="font-size:24px;font-family:&#39;微软雅黑&#39;,sans-serif;color:#444444">国际闪耀之城旅游文化艺术联盟</span></strong></p>
                            <div class="contentZC" style="display: none;">
                                <p style="margin-top:auto;margin-bottom: auto;text-align:center;background:white"><strong><span style=";font-family:&#39;微软雅黑&#39;,sans-serif;color:#333333">（联盟章程）</span></strong></p>
	                            <div id="allianceinfo"></div>
	                            <p class="center"><a href="javascript:;" onclick="show();">收起</a></p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 章程结束 -->
            </div>

            <!--右侧栏目--->
            <div class="span3">
                <jsp:include page="right.jsp" />
            </div>
        </div>
    </div>

    <!-- /container -->
    <jsp:include page="buttom.jsp" />

    <script type="text/javascript" src="js/ueditor1_4_3_1/ueditor.parse.min.js"></script>
    <script type="text/javascript">
        //回到顶部
        backToTop('body');
        
        uParse('#zhangcheng', {
            rootPath: '../'
        });
        uParse('#allianceabout', {
            rootPath: '../'
        });
        
        function show(obj){
        	
        	if(obj == undefined || obj == null){
        		obj = $("#showAnthor");
        	}
        	
        	var hidden = $(".contentZC").is(":hidden");
        	if(hidden){
        		$(".contentZC").show();
        		$(obj).text("-收起");
        	}else{
        		$(".contentZC").hide();
                $(obj).text("+展开");
        	}
        }
        
        $(function(){
        	$.ajax( { 
                type : "POST", 
                url : "<%=basePath%>admin/getSystemSetForKey.do", 
                data : {"key":"allianceinfo"}, 
                dataType: "json", 
                success : function(data) {
                    if(typeof data == "string"){
                        data = eval("("+data+")");
                    }
                    
                    if (typeof (data.type) != 'undefined') {
                        if (data.type == 'success') {
                            $("#allianceinfo").html(data.obj.content);
                        } else {
                            alert(data.msg);
                        }
                    } else {
                        alert("系统异常，请稍后再试。");
                    };
                }
            });
        	
        	$.ajax( { 
                type : "POST", 
                url : "<%=basePath%>admin/getSystemSetForKey.do", 
                data : {"key":"allianceabout"}, 
                dataType: "json", 
                success : function(data) {
                    if(typeof data == "string"){
                        data = eval("("+data+")");
                    }
                    
                    if (typeof (data.type) != 'undefined') {
                        if (data.type == 'success') {
                            $("#allianceabout").html(data.obj.content);
                        } else {
                            alert(data.msg);
                        }
                    } else {
                        alert("系统异常，请稍后再试。");
                    };
                }
            });
        })
    </script>
    

</body>
</html>