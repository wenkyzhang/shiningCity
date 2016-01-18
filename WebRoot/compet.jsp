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
        <jsp:param value="match" name="curPage"/>
    </jsp:include>
    <!--头部代码结束-->

    <div class="hr tp-div-nexthr" style="margin-top: 0; margin-bottom: 0; padding: 0;"></div>
    <div class="container pb-15">
        <!-- Example row of columns -->
        <div class="row home-index">
            <div class="span13">
                <!--联盟动态开始-->
                <div class="span13">
                    <div class="label-div t-20 border-all">
                        <div class="l-15">
                            <h3 class="label-title border-b b-15 small clearfix"
                                style="padding-bottom: 14px;">
                                <span class="pull-left r-10">赛事列表</span>
                            </h3>
                        </div>

                        <div id="teacher_row" class="label-main clearfix" style="padding-left: 16px;">
                            <div class="span12 b-30" id="matchs">
                                <!-- 
                                
		                        <div class="span4">
			                        <img src="<%=basePath %>images/logo_imi.png" alt="国际童模大赛" style="margin-bottom:30px;" class="img-responsive" />
			                    </div>
			                    <div class="span7">
			                        <h1><a href="<%=basePath %>childModel/index.jsp" target="_blank">2015闪耀之城IMI国际超级童模大赛</a></h1>
			                        <p><span class="glyphicon glyphicon-user"></span> 举办方 <a href="#">国际闪耀之城</a>&nbsp;&nbsp; <span class="glyphicon glyphicon-calendar"></span> 1<sup>th</sup>June 2015 &nbsp;&nbsp; <span class="glyphicon glyphicon-bookmark"></span> <a href="#">闪耀之城</a>,<a href="#">童模</a></p>
			                        <p>为了挖掘和培育优秀的少儿艺术人才，搭建国际少年儿童文化艺术交流平台，由国际青少年文化交流促进会、国际闪耀之城旅游文化艺术联盟共同主办的2015国际闪耀之城超级童模大赛在全国已经拉开了帷幕。经2015国际闪耀之城超级童模大赛组委会决定，现面向北京、上海、山东、浙江等赛区开展超级童模大赛赛事活动。为增进国际城市之间的脉动、搭建城市旅游文化与艺术赛事的桥梁、提供少年儿童的全方位交流的舞台。“闪耀之城”代表着“真诚与友爱、互动与沟通、时尚与艺术”的完美结合。</p>
			                    </div>
                                 -->
                            </div>
                        </div>
                    </div>
                </div>
                <!--联盟介绍结束-->
                
            </div>

            <!--右侧栏目--->
            <div class="span3">
                <jsp:include page="right.jsp" />
            </div>
        </div>
    </div>

    <!-- /container -->
    
    <jsp:include page="buttom.jsp" />
    
    <script type="text/javascript" src="js/htmlUtil.js"></script>
    <script type="text/javascript">
        //回到顶部
        backToTop('body');
        
        jQuery(function(){
            
            $.post("<%=basePath%>index/query.do",function(result){
                var data = JSON.parse(result);
                if(!!data.type && data.type == 'success')
                {
                    //得到数据对象 
                    data = data.obj;
                    
                    // 联盟动态 
                    if(!!data.matchs){
                        $('div#matchs').append(getHTMLForMatchs(data.matchs, 10));
                    }else{
                    	$('div#matchs').append("暂时没有赛事信息");
                    }
                }
                else
                {
                	$('div#matchs').append("暂时没有赛事信息");
                	//$('div#matchs').append("获取赛事信息失败，请联系管理员！");
                	
                    //TODO show errormsg 
                    //$('div#registDiv .message').addClass('bg-danger');
                }
                
            });
        });
    </script>

</body>
</html>