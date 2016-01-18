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

    <style type="text/css">
        #news div{
            margin: 10px auto;
        }
    </style>

</head>
<body>
    <script type="text/javascript" src="js/borsertocss.js" />
    <!-- 判断在IE9以下浏览器中根据像素的不同而设置的样式 -->

    <!--头部代码开始-->
    <jsp:include page="head.jsp">
        <jsp:param value="news" name="curPage"/>
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
                                <span class="pull-left r-10">联盟动态</span>
                            </h3>
                        </div>

                        <div id="teacher_row" class="label-main clearfix" style="padding-left: 16px;">
	                        <div class="span4 r-10">
	                             <div class="news-slides b-15 l-15">
	                                <div class="slides-list slides-banner">
	                                    <div class="slides-css" style="display: block;">
	                                        <a target="_blank" href="javascript:;" title="标题标题"
	                                            rel="bookmark"> <img alt="标题标题"
	                                            src="images/banner_slide_12.jpg" />
	                                        </a>
	                                    </div>
	                                    <div class="slides-css" style="display: none;">
	                                        <a target="_blank" href="javascript:;" title="标题标题"
	                                            rel="bookmark"> <img alt="标题标题"
	                                            src="images/banner_slide_13.jpg" />
	                                        </a>
	                                    </div>
	                                    <div class="slides-css" style="display: none;">
	                                        <a target="_blank" href="javascript:;" title="标题标题"
	                                            rel="bookmark"> <img alt="标题标题" src="images/DSC_9939.JPG" />
	                                        </a>
	                                    </div>
	
	                                    <!--轮播图的小按钮-->
	                                    <div class="slides-icon slides-banner-point">
	                                        <a href="javascript:void(0);" class="icon-css-on ie6png">&nbsp;</a>
	                                        <a href="javascript:void(0);" class="icon-css ie6png">&nbsp;</a>
	                                        <a href="javascript:void(0);" class="icon-css ie6png">&nbsp;</a>
	                                    </div>
	                                    <!--轮播图的小按钮结束-->
	                                </div>
	
	
	                                <!--第一组新闻开始-->
	                                <div class="slides-title slides-banner-title"
	                                    style="display: block">
	                                    <div class="intro">
	                                        <h1 class="t-15">
	                                            <a href="javascript:;" title="标题标题标题标题" rel="bookmark"
	                                                target="_blank">2015闪耀之城IMI国际超级童模大赛</a>
	                                        </h1>
	                                    </div>
	                                </div>
	                                <!--第一组新闻结束-->
	
	                                <!--第二组新闻结束-->
	                                <div class="slides-title slides-banner-title"
	                                    style="display: none;">
	                                    <div class="intro">
	                                        <h1 class="t-15">
	                                            <a href="javascript:;" title="标题标题标题标题" rel="bookmark"
	                                                target="_blank">2015闪耀之城IMI国际超级童模大赛</a>
	                                        </h1>
	                                    </div>
	
	                                </div>
	                                <!--第二组新闻结束-->
	                                <!--第二组新闻结束-->
	                                <div class="slides-title slides-banner-title"
	                                    style="display: none;">
	                                    <div class="intro">
	                                        <h1 class="t-15">
	                                            <a href="javascript:;" title="标题标题标题标题" rel="bookmark"
	                                                target="_blank">2015闪耀之城IMI国际超级童模大赛</a>
	                                        </h1>
	                                    </div>
	
	                                </div>
	                                <!--第二组新闻结束-->
	
	                                <script type="text/javascript">
	                                    $(function(){
	                                        var Interval_control = '';
	                                        var current_index = 0;
	                                        $(".slides-banner .slides-css").hide();
	                                        $(".slides-banner .slides-css:first").show();
	                                        $(".slides-banner-title").hide();
	                                        $(".slides-banner-title:first").show();
	                                       
	                                        show_pic = function(index){
	                                            $(".slides-css").each(function(i){
	                                                $(this).hide();       
	                                                if(i == index)
	                                                {
	                                                    $(this).show();       
	                                                }              
	                                            });
	                                        };
	                                    
	                                        show_content = function(index){
	                                            $(".slides-banner-title").each(function(i){
	                                                $(this).hide();
	                                                if(i == index)
	                                                {
	                                                    $(this).show();
	                                                }
	                                            });
	                                        };
	                                    
	                                        show_point = function(index){
	                                            $(".slides-banner-point a").each(function(i){
	                                                if($(this).hasClass("icon-css-on"))
	                                                {
	                                                    $(this).removeClass("icon-css-on");
	                                                    $(this).addClass("icon-css");
	                                                }
	                                                if(i == index)
	                                                {
	                                                    if($(this).hasClass("icon-css"))
	                                                    {
	                                                       
	                                                        $(this).removeClass("icon-css");
	                                                    }
	                                                    $(this).addClass("icon-css-on");
	                                                }
	                                            });
	                                           
	                                        };
	                                       
	                                        slides = function(){
	                                            $(".slides-icon a").each(function(index){
	                                                $(this).click(function(){
	                                                    current_index = index;
	                                                    show_point(index);
	                                                    show_content(current_index);
	                                                    show_pic(current_index);
	                                                });                             
	                                            });
	                                        };
	                                        slides();
	                                       
	                                        Interval_control = setInterval(
	                                                function(){
	                                                    show_point(current_index);
	                                                    show_content(current_index);
	                                                    show_pic(current_index);
	                                                   
	                                                    if (current_index == ($(".slides-banner .slides-css a").length - 1))
	                                                    {
	                                                        current_index = -1;
	                                                    }
	                                                   
	                                                    current_index ++;
	                                                }
	                                                ,
	                                                8000
	                                            );//设置自动切换函数
	                                    
	                                        //当触发mouseenter事件时，取消正在执行的自动切换方法，触发mouseouter事件时重新设置自动切换
	                                        $(".slides-banner .slides-css,.slides-banner-title").mouseenter(function() {
	                                            clearInterval(Interval_control);//停止自动切换
	                                        }).mouseleave(function() {
	                                            Interval_control = setInterval(
	                                                    function(){
	                                                        show_point(current_index);
	                                                        show_content(current_index);
	                                                        show_pic(current_index);
	                                                       
	                                                        if (current_index == ($(".slides-banner .slides-css a").length - 1))
	                                                        {
	                                                            current_index = -1;
	                                                        }
	                                                       
	                                                        current_index ++;
	                                                    }
	                                                    ,
	                                                    8000
	                                                );//设置自动切换函数
	                                           
	                                        });
	                                    });
	                                </script>
	                            </div>
	                          </div>
	                        <div class="span8" id="news">
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
                    if(!!data.news){
                        $('div#news').append(getHTMLForNews(data.news, 30));
                    }
                }
                else
                {
                    //TODO show errormsg 
                    //$('div#registDiv .message').addClass('bg-danger');
                }
            });
        });
    </script>

</body>
</html>