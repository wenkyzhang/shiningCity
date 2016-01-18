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
	<jsp:include page="head.jsp" />
	<!--头部代码结束-->

	<div class="hr tp-div-nexthr" style="margin-top: 0; margin-bottom: 0; padding: 0;"></div>
	<div class="container pb-15">
		<!-- Example row of columns -->
		<div class="row home-index">
			<div class="span13">
				<!--项目展示-->
				<div class="span13">
					<div class="label-div t-20 border-all">
						<div class="l-15">
							<h3 class="label-title border-b b-15 small clearfix"
								style="padding-bottom: 14px;">
								<span class="pull-left r-10">导师详情</span>
							</h3>
						</div>

						<div id="teacher_row" class="label-main clearfix" style="padding-left: 16px;">
						        <div class="span4">
				                    <img src="${mentor.photo }" alt="${mentor.name }" width="360px" height="458px"
				                        style="margin-bottom:30px;" class="img-responsive" />
				                </div>
				                <div class="span8">
				                    <h1>${mentor.name }</h1>    
				                    <p style="text-align: left;">
				                        <span class="glyphicon glyphicon-user"></span> ${mentor.title }&nbsp;&nbsp; 
				                        <span class="glyphicon glyphicon-bookmark"></span> ${mentor.tags }
				                    </p>
				                    <p style="text-align: left;">${mentor.introduction }</p>
				                    <p style="text-align: left;"></p>
				                </div>
				                <div class="span12 border-b pull-left">其他照片</div>
				                
			                    <div class="span12 t-10">
				                <c:forEach items="${mentor.imageList }" var="image" varStatus="status">
			                        <div class="span2" style="margin:0px 5px auto 5px;text-align: center;">
			                            <img src="${image }" style="height: 240px;" alt="${mentor.name }" class="img-responsive" />
			                        </div>
				                </c:forEach>
			                    </div>
						
						</div>
					</div>
				</div>

			</div>

			<!--右侧栏目--->
			<div class="span3">
				<jsp:include page="right.jsp" />
			</div>
		</div>
	</div>



	<!-- /container -->

	</div>
	
	<jsp:include page="buttom.jsp" />

	<script type="text/javascript">
		//回到顶部
		backToTop('body');
	</script>

</body>
</html>