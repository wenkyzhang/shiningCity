<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	
	String curPage = request.getParameter("curPage");
	if(curPage == null)
	{
		curPage = "index";
	}
	
%>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Language" content="zh-CN" />
	<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
	<title>国际闪耀之城</title>
	<meta name="Keywords" content="国际闪耀之城,艺术"/>
	<meta name="Description" content="国际闪耀之城,网站简介。"/>
	<!-- Le styles -->
	<link rel="stylesheet" type="text/css" href="style/basic.css"/>
	<link rel="stylesheet" type="text/css" href="style/icon.css"/>
	<link rel="stylesheet" type="text/css" href="style/index.css"/>
	
	<script type="text/javascript" src="js/bioV4.min.js"></script>
	<script type="text/javascript" src="js/jquery.lazyload.min.js"></script>
	<link rel="stylesheet" type="text/css" href="style/comment.css"/>
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

<!--头部代码开始-->
<div class="navbar navbar-fixed-top" style="_position: relative;_z-index: 10000;">
        <div class="navbar-inner">
            <div class="container">
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <div class="nav-collapse">
                    <ul class="nav" id="navID">
                        <li class="active" id="index"><a href="index.jsp"><b>首页</b></a></li>
                        <li class="" id="about"><a href="alliance_about.jsp"><b>关于联盟</b></a></li>
                        <li class="" id="units"><a href="alliance_units.jsp"><b>联盟单位</b></a></li>
                        <li class="" id="news"><a href="alliance_news.jsp"><b>联盟动态</b></a></li>
                        <li class="" id="internal"><a href="alliance_internal.jsp"><b>国际联动</b></a></li>
                        <li class="" id="match"><a href="compet.jsp"><b>品牌赛事</b></a></li>
                        <li class="" id="case"><a href="alliance_case.jsp"><b>经典案例</b></a></li>
                        <li class="" id="teacher"><a href="mentor_group.jsp"><b>导师智库</b></a></li>
                    </ul>
                </div><!--/.nav-collapse -->
                <ul class="nav pull-right login-none nav-tips">
			        <li class="ie6png divider-vertical" style="_width: 30px;_height: 40px;_background: url(images/icons.png) no-repeat 10px -106px;">
			            <a class="dropdown-toggle clearfix" href="javascript:;" style="padding: 7px 5px;"><img class="logo-before pull-left" src="images/avatar-icon.png" /></a>
			        </li>
			    </ul>
				<div class="popup-div tips-div" style="position: absolute;z-index: 10000001;display: none;"></div>
				<script type="text/javascript">
				var tip_show = 1;
				//头部下拉
				var timer1 = "";
				$('#dropdownID-0').hover(function(){
				    var obj = $(this);
				    if(timer1)
				    {
				        clearTimeout(timer1);
				    }
				    timer1 = setTimeout(function(){
				        obj.find('.dropdown-menu').show();
				        tip_show = 0;
				        $(".tips-div").hide();
				        obj.find('.other-icon').css({"background":"#2E2E2E"});
				    }, 500);
				},function(){
				    var obj = $(this);
				    if(timer1)
				    {
				        clearTimeout(timer1);
				    }
				    timer1 = setTimeout(function(){
				        obj.find('.dropdown-menu').hide();
				        $(".tips-div").hide();
				        tip_show = 1;
				        getTips();
				        obj.find('.other-icon').css({"background":"none"});
				    }, 500);
				});
				
				var timer2 = "";
				$('#dropdownID-1').hover(function(){
				    var obj = $(this);
				    if(timer2)
				    {
				        clearTimeout(timer2);
				    }
				    timer2 = setTimeout(function(){
				        obj.find('.dropdown-menu').show();
				        tip_show = 0;
				        $(".tips-div").hide();
				        obj.find('.other-icon').css({"background":"#2E2E2E"});
				    }, 500);
				},function(){
				    var obj = $(this);
				    if(timer2)
				    {
				        clearTimeout(timer2);
				    }
				    timer2 = setTimeout(function(){
				        obj.find('.dropdown-menu').hide();
				        tip_show = 1;
				        getTips();
				        $(".tips-div").hide();
				        obj.find('.other-icon').css({"background":"none"});
				    }, 500);
				});
				</script>      
				
				<!-- 
				<ul class="nav pull-right pl-20 myul">
				    <li class="l10"><a href="login.jsp">后台管理</a></li>
				</ul>
				 -->
                
            </div>
        </div>
    </div>
    <div class="top-div">
    <div class="container clearfix">
        
       <div class="span16 logo-div logo-img" style="margin-left:0px;">
        <a href="/" title="国际闪耀之城"><img src="images/logo5.png" class="ie6png" style="display: block;"/></a>
       </div>
         
    </div>
</div>

<!--头部代码结束-->
</body>
<script src="<%=basePath %>admin/assets/js/jquery.min.js"></script>

<script>
	$(document).ready(function(){
		var Interval_control = '';
        var current_index = 0;
        show_pic_ad = function(index){
            $(".top-ad .pull-left").each(function(i){
                $(this).hide();
                if(i == index){

                    $(this).show(); 
                }
            });
        };
        show_point_ad = function(index){
            $(".top-ad .slides-ad-point a").each(function(i){
                if($(this).hasClass("icon-css-on")){
                    $(this).removeClass("icon-css-on");
                    $(this).addClass("icon-css");
                }
                if(i == index){
                    if($(this).hasClass("icon-css")){
                        $(this).removeClass("icon-css");
                    }
                    $(this).addClass("icon-css-on");
                }
            });
        };
        slides = function(){
            $(".slides-ad-point a").each(function(index){
                $(this).click(function(){
                    current_index = index;
                    show_point_ad(index);
                    show_pic_ad(current_index);
                });
            });
        };
        slides();
        Interval_control = setInterval(function(){
            show_point_ad(current_index);
            show_pic_ad(current_index);
            if (current_index == ($(".slides-icon-ad a").length - 1)){
                current_index = -1;
            }
            current_index ++;
        },5000);//设置自动切换函数
        //当触发mouseenter事件时，取消正在执行的自动切换方法，触发mouseouter事件时重新设置自动切换
        $(".top-ad .pull-left").mouseenter(function() {
            clearInterval(Interval_control);//停止自动切换
        }).mouseleave(function(){
            Interval_control = setInterval(function(){
                show_point_ad(current_index);
                show_pic_ad(current_index);
                if (current_index == ($(".top-ad .pull-left").length - 1)){
                    current_index = -1;
                }
                current_index ++;
            },5000);//设置自动切换函数
        });
        
        $('#navID li').removeClass('active');
        $('#<%=curPage%>').addClass('active');
	});
</script>