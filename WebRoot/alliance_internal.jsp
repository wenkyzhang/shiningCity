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
        <jsp:param value="internal" name="curPage"/>
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
                                <span class="pull-left r-10">国际联动</span>
                            </h3>
                        </div>

                        <div id="internal_row" class="label-main clearfix" style="padding-left: 16px;"></div>
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

    <script type="text/javascript" src="js/ueditor1_4_3_1/ueditor.parse.min.js"></script>
    <script type="text/javascript" src="js/htmlUtil.js"></script>
    <script type="text/javascript">
        //回到顶部
        backToTop('body');
        
        uParse('#internal_row', {
            rootPath: '../'
        });
        
        jQuery(function(){
            
            $.post("<%=basePath%>/queryInternalsForAjax.do",function(result){
                var data = JSON.parse(result);
                if(!!data.type && data.type == 'success')
                {
                    //得到数据对象 
                    data = data.obj;
                    
                    // 联盟动态 
                    if(!!data){
                        $('div#internal_row').append(getHTMLForInternal(data));
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