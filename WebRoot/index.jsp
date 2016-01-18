<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Language" content="zh-CN" />
	<title>国际闪耀之城</title>
	<meta name="Keywords" content="国际闪耀之城,艺术" />
	<meta name="Description" content="国际闪耀之城,网站简介。" />
	
	<!-- Le styles -->
	<!-- 
	<link rel="stylesheet" type="text/css" href="style/basic.css" />
	<link rel="stylesheet" type="text/css" href="style/index.css" />
	<link rel="stylesheet" type="text/css" href="style/comment.css" />
	<link type="text/css" rel="stylesheet" href="style/biobox2.css" />
	
	<script type="text/javascript" src="js/jquery1.4.js"></script>
	<script type="text/javascript" src="js/bioV4.min.js"></script>
	<script type="text/javascript" src="js/jquery.lazyload.min.js"></script>
	 -->
	
	<!--[if IE 6]>
	<script type="text/javascript" src="js/DD_belatedPNG.js"></script>
	<script type="text/javascript">
	DD_belatedPNG.fix('img,.ie6png');
	</script>
	<![endif]-->
	<style type="text/css">
	
	.slides-css{
	   max-height: 100%;
	}
	
	</style>

</head>
<body>
	<!-- 判断在IE9以下浏览器中根据像素的不同而设置的样式 -->

	<!--头部代码开始-->
	<jsp:include page="head.jsp" />
	<!--头部代码结束-->

	<div class="hr tp-div-nexthr"
		style="margin-top: 0; margin-bottom: 0; padding: 0;"></div>
	<div class="container pb-15">
		<!-- Example row of columns -->
		<div class="row home-index">
			<!-- 左侧栏目 -->
			<div class="span13">
				<div class="span8">
					<div class="label-div t-20 border-all">
						<div class="l-15">
							<h3 class="label-title border-b b-15 small clearfix"
								style="padding-bottom: 14px;">
								<span class="pull-left r-10">最新动态</span>
							</h3>
						</div>
						<div class="label-main">
							<div class="news-slides b-15 l-15">
								<div class="slides-list slides-banner">
									<div class="slides-css" style="display: block;">
										<a target="_blank" href="javascript:;" title="标题标题"
											rel="bookmark"> <img alt="标题标题" src="images/banner_slide_12.jpg" />
										</a>
									</div>
									<div class="slides-css" style="display: none;">
										<a target="_blank" href="javascript:;" title="标题标题"
											rel="bookmark"> <img alt="标题标题" src="images/banner_slide_13.jpg" />
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

									<div class="clearfix t-10 related-news"
										style="height: 45px; overflow: hidden; position: relative;">
										<a class="pr-5 fc333 ie6png" href="javascript:;"
											rel="bookmark" title="标题" target="_blank">2015闪耀之城IMI国际超级童模大赛</a>
										<a class="pr-5 fc333 ie6png" href="javascript:;"
											rel="bookmark" title="标题" target="_blank">2015闪耀之城IMI国际超级童模大赛2222222</a>
									</div>
								</div>
								<!--第一组新闻结束-->

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

							<!--图文解说开始-->
							<div class="hr l-15 t-15 b-20"></div>
                            
                            <div id="match_row"></div>
							<div class="l-15 mmtop">
	                            <h3 class="label-title border-b small clearfix"
	                                style="padding-bottom: 14px; margin-bottom: 14px;">
	                                 <a href="compet.jsp" title="更多" class="pull-right " style="font-size: 14px;">更多...</a> 
	                            </h3>
	                        </div>
                            
                            <div class="t-30">
			                    <div class="l-15">
			                        <h3 class="label-title border-b small clearfix"
			                            style="padding-bottom: 14px;">联盟动态
			                            <a href="alliance_news.jsp" title="更多" class="pull-right " style="font-size: 14px;">更多...</a> 
			                        </h3>
			                    </div>
			                    <div class="label-main tody-hot l-15" id="alliance_news">
			                    </div>
			                </div>
						</div>
					</div>
				</div>

				<div class="span5">
					<div class="label-div t-20 border-all">

						<!--栏目展示-->
						<div class="l-15 mmtop">
							<h3 class="label-title border-b small clearfix"
								style="padding-bottom: 14px; margin-bottom: 14px;">
								<span class="pull-left r-10">联盟单位</span>
							</h3>
						</div>
						<!--栏目展示结束-->

						<div id="units_row" class="label-main"></div>
						<div class="l-15 mmtop">
                            <h3 class="label-title clearfix"
                                style="padding-bottom: 14px; margin-bottom: 14px;">
                                 <a href="alliance_units.jsp" title="更多" class="pull-right " style="font-size: 14px;">更多...</a> 
                            </h3>
                        </div>
					</div>
				</div>

				<!--项目展示-->
				<div class="span13">
					<div class="label-div t-30 border-all">
						<div class="l-15">
							<h3 class="label-title border-b b-15 small clearfix"
								style="padding-bottom: 14px;">
								<span class="pull-left r-10">导师智库</span>
								<a href="mentor_group.jsp" title="更多" class="pull-right " style="font-size: 14px;">更多...</a> 
							</h3>
						</div>
						<div id="teacher_row" class="label-main clearfix" style="padding-left: 16px;"></div>
					</div>
				</div>
			</div>

			<!--右侧栏目--->
			<div class="span3">
				<div class="label-div t-20 border-all">
					<div class="l-15">
						<h3 style="padding-bottom: 14px;"
							class="label-title border-b b-20 small clearfix">关注我们</h3>
					</div>
					<div class="l-15 home-other clearfix">
						<a target="_blank" class="home-sina" title="腾讯微信"
							href="http://weibo.com/2094942911/"><img
							style="width: 50%; max-width: 36px; display: inline-block;"
							src="images/weixin.jpg" alt="腾讯微信"></a> 
					</div>
					<div class="l-15 t-20">
						<img src="images/qrcode.jpg" />
					</div>
					<p style="margin-bottom: 0;" class="l-15 t-5 fc999">扫描微信，随时获得最新资讯</p>
				</div>

				<div class="label-div t-30 border-all">
					<div class="l-15">
						<h3 class="label-title border-b b-15 small clearfix"
							style="padding-bottom: 14px;">国际联动
				            <a href="internal.jsp" title="更多" class="pull-right " style="font-size: 14px;">更多...</a>	
						</h3>
						
					</div>
					<div class="label-main tody-hot l-15 center">
						<a <%=basePath %>collaboration.jsp" target="_blank">
					         <img src="<%=basePath %>images/zhongde.jpg" alt="Blog Post 1" class="img-responsive" />
					         中德教育与文化交流中心简介
					    </a>
						<a href="<%=basePath %>provenc.jsp" target="_blank">
					         <img src="<%=basePath %>images/ouyawenyi.png" alt="Blog Post 1" class="img-responsive" />
					         欧亚艺术文化交流协会
					    </a>
					</div>
				</div>
				
				<div class="t-30">
                    <img src="images/parter.jpg" />
                </div>
                <div class="label-div border-all">
                    <div id="partner" class="label-main tody-hot l-15 center">
                    </div>
                </div>

			</div>
		</div>
	</div>

	<!-- /container -->
	</div>

	<jsp:include page="buttom.jsp" />

	<script type="text/javascript" src="js/htmlUtil.js"></script>
	<script type="text/javascript" src="js/index.js"></script>
	<script type="text/javascript" src="js/function.js"></script>
    <script type="text/javascript" src="js/biobox.js"></script>
    <script type="text/javascript" src="js/borsertocss.js"></script>
    <script type="text/javascript" src="js/jQuery-jcMarquee.js"></script>
	<script type="text/javascript">
		//回到顶部
		backToTop('body');
		
		$(function(){
		    
			//$('#partner').jcMarquee({ 'marquee':'y','margin_right':'0px','speed':40 });
			//$("#partner").height(300);
			
			$.post("<%=basePath%>index/query.do",function(result){
		        var data = JSON.parse(result);
		        if(!!data.type && data.type == 'success')
		        {
		            //得到数据对象 
		            data = data.obj;
		            
		            // 联盟单位 
		            if(!!data.units){
		                $('div#units_row').append(getHTMLForUnits(data.units, 5));
		            }
		            
		            // 导师信息 
		            if(!!data.mentorgroup){
		                $('div#teacher_row').append(getHTMLForTeachers(data.mentorgroup));
		            }
		            
		            //banner 合作伙伴 
		            if(!!data.parter){
		                $('div#partner').append(getHTMLForParters(data.parter, 20));
		            }else{
		                
		            }
		            
		            if(!!data.matchs){
                        $('div#match_row').append(getHTMLForMatchsInIndex(data.matchs, 1));
                    }else{
                        $('div#match_row').append("暂时没有赛事信息");
                    }
		            
		            // 联盟动态 
		            if(!!data.news){
		                $('div#alliance_news').append(getHTMLForNews(data.news, 5));
		            }else{
		                $('div#alliance_news').append('暂无联盟动态');
		            }
		        }
		        else
		        {
		            //TODO show errormsg 
		            //$('div#registDiv .message').addClass('bg-danger');
		        }
		    });
			
			
			/*
			$.post("<%=basePath%>index/queryInfor.do?type=0",function(result){
		        var data = JSON.parse(result);
		        if(!!data.type && data.type == 'success')
		        {
		            if(!!data.obj){
		                // 赛程报道  
		                $('div#templatemo_news .newsPre').append(getHTMLForInformation(data.obj));
		            }else{
		                $('div#templatemo_news .newsPre').append("获取赛程报道出错");
		            }
		        }
		    });
		    
		    $.post("<%=basePath%>index/queryInfor.do?type=1",function(result){
		        var data = JSON.parse(result);
		        if(!!data.type && data.type == 'success')
		        {
		            if(!!data.obj){
		                // 欧洲游学 
		                $('div#templatemo_news .newsLast').append(getHTMLForInformation(data.obj));
		            }else{
		                $('div#templatemo_news .newsLast').append("获取欧洲游学出错");
		            }
		        }
		    });
		    
		    */
		    
		    $("img[class=lazyloadimg]").lazyload({
                threshold : 0, placeholder : "http://www.biodiscover.com/images/imgpageloadimg.gif", effect : "fadeIn"
            });
		 });
		
	</script>

</body>
</html>