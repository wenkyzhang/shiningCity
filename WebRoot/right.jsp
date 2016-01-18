<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	
%>
<div class="label-div t-20 border-all">
	<div class="l-15">
	    <h3 style="padding-bottom: 14px;" class="label-title border-b b-20 small clearfix">关注我们</h3>
	</div>
	<div class="l-15 home-other clearfix">
        <a target="_blank" class="home-sina" title="腾讯微信"
            href="http://weibo.com/2094942911/"><img
            style="width: 50%; max-width: 36px; display: inline-block;"
            src="images/weixin.jpg" alt="腾讯微信"></a> 
        <!-- 
        <a target="_blank" class="home-sina" title="新浪微博"
            href="http://weibo.com/2094942911/"><img
            style="width: 20%; max-width: 36px; display: inline-block;"
            src="images/sina.png" alt="新浪微博"></a> 
        <a target="_blank"
            class="home-qq" title="腾讯微博"
            href="http://t.qq.com/shengwu___tansuo"><img
            style="width: 20%; max-width: 36px; display: inline-block;"
            src="images/qq.png" alt="腾讯微博"></a>
        <a target="_blank"
            class="home-renren" title="人人网"
            href="http://www.renren.com/600991382"><img
            style="width: 20%; max-width: 36px; display: inline-block;"
            src="images/rr.png" alt="人人网"></a> 
        <a style="margin-right: 0;"
            target="_blank" class="home-linkin" title="LinkedIn"
            href="http://cn.linkedin.com/pub/bio-discover/38/4b6/a27"><img
            style="width: 20%; max-width: 36px; display: inline-block;"
            src="images/in.png" alt="LinkedIn"></a>
         -->
    </div>
	<div class="l-15 t-20">
	    <img src="images/qrcode.jpg">
	</div>
    <p style="margin-bottom: 0;" class="l-15 t-5 fc999">扫描微信，随时获得最新资讯</p>
</div>

<!-- 

<div class="t-30">
    <a target="_blank" href="javascript:;"><img src="images/swxz.png"></a>
</div>
 -->