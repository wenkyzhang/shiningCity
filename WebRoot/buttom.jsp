<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	
%>
<div class="footer">
    <div class="clearfix" style="background: #EDEDED;">
        <ul class="about-ul center">
            <li><a title="网站管理" href="login.jsp" class="fc666">网站管理</a></li>
            <li><span>|</span></li>
            <li><a title="加入我们" href="javascript:;" onclick="AddFavorite('国际闪耀之城','http://www.ictcau.com/')" class="fc666" target="_blank">加入收藏</a></li>
            <li><span>|</span></li>
            <li><a title="服务协议" href="javascript:;" onclick="SetHome(this,'http://www.ictcau.com/');" class="fc666" target="_blank">设为首页</a></li>
            <div class="clear"></div>
        </ul>
    </div>
    <div class="clearfix fc999 footer-info" style="background-color: #EDEDED;">
	    <p>国际闪耀之城旅业文化艺术联盟<br/>
	    香港总部地址：香港九龙尖沙咀14号新文化中心917室<br/>
	    大陆分部地址：浙江省杭州市拱墅区详符镇阮家桥东园村27号2楼</p>
    </div>
    
    <script type="text/javascript">
	    //设为首页 
	    function SetHome(obj,url){
	      try{
	        obj.style.behavior='url(#default#homepage)';
	        obj.setHomePage(url);
	      }catch(e){
	        if(window.netscape){
	         try{
	           netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
	         }catch(e){
	           alert("抱歉，此操作被浏览器拒绝！\n\n请在浏览器地址栏输入“about:config”并回车然后将[signed.applets.codebase_principal_support]设置为'true'");
	         };
	        }else{
	        alert("抱歉，您所使用的浏览器无法完成此操作。\n\n您需要手动将【"+url+"】设置为首页。");
	        }
	     };
	    }
	      
	    //收藏本站 
	    function AddFavorite(title, url) {
	     try {
	       window.external.addFavorite(url, title);
	     }
	     catch (e) {
	       try {
	        window.sidebar.addPanel(title, url, "");
	       }
	       catch (e) {
	         alert("抱歉，您所使用的浏览器无法完成此操作。\n\n加入收藏失败，请进入新网站后使用Ctrl+D进行添加");
	       };
	     };
	    }
    </script>
</div>