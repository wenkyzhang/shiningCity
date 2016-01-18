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

                        <div id="teacher_row" class="label-main clearfix" style="padding-left: 16px;">
                            <div class="span12 b-30">
		                        <div class="span4">
			                        <img src="<%=basePath %>images/zhongde.jpg" alt="Blog Post 1" class="img-responsive" />
			                    </div>
			                    <div class="span7">
			                        <h1><a href="<%=basePath %>collaboration.jsp" target="_blank">中德教育与文化交流中心简介</a></h1>
			                        <p>
			                            <span class="glyphicon glyphicon-bookmark"></span>
			                            <a href="#">闪耀之城</a>,<a href="#">古典音乐</a>,<a href="#">欧洲文化</a>,<a href="#">德国教育</a>&nbsp;
			                            <span class="glyphicon glyphicon-envelope"></span>
			                            <a href="mailto:info@acdkb.de">info@acdkb.de</a>
			                        </p>
			                        <p>中国闪耀之城旅游文化艺术联盟致力于打造城市旅游文化与艺术赛事相结合的交流平台，提供少年儿童全方位的国际级艺术交流，全面发展国际间游学服务领域。为联盟成员提供闪耀之城品牌赛事（包括：童模、童舞、童画、童歌、童武）、大型活动艺术策划、国际游学交流活动、文化艺术培训、名校亲子探索、特色艺术夏令营等系统性服务。
			                            中国旅游文化艺术联盟将定期举办（国际）艺术赛事、论坛、年会、国际交流等活动，努力打造成为中国旅游、文化与艺术赛事的品牌机构。</p>
			                    </div>
                            </div>
		                    
		                    <div class="span12">
			                    <div class="span4 event_animate_left internal_table_box">
			                        <img src="<%=basePath %>images/ouyawenyi.png" alt="Blog Post 1" class="img-responsive" />
			                    </div>
			                    <div class="span7 blog_text event_animate_right internal_table_box">
			                        <h1><a href="<%=basePath %>provenc.jsp" target="_blank">欧亚艺术文化交流协会</a></h1>
			                        <p>
			                            <span class="glyphicon glyphicon-bookmark"></span>
			                            <a href="#">闪耀之城</a>,<a href="#">艺术文化交流</a>,<a href="#">文学家的摇篮</a>,<a href="#">丝绸之路</a>&nbsp;
			                            <span class="glyphicon glyphicon-home"></span>
			                            <a href="http://www.provencenarts.com">www.provencenarts.com</a>
			                        </p>
			                        <p>欧亚艺术文化交流协会是经法国政府核准,具有法定资格的社会团体。它坐落在美丽迷人的普罗旺斯地区，坐拥丰富的人文、自然景观。塞尚、毕加索、梵高、马蒂斯、高更、夏加尔、博尔纳等众多艺术大师留恋于此，并且留下了流芳百世的传世佳作。这里同时也是诺贝尔文学家的摇篮，Frédéric Mistral、Jean Giono，Albert Camus 等文学泰斗在普罗旺斯深厚文化底蕴的滋养下，留下了不朽的篇章。</p>
			                        <p>本协会创办的宗旨在于加强和繁荣欧亚两大洲，尤其是中国、日本和以法国为代表的欧洲艺术家在艺术、文化、科技等领域的交流互动，通过协会成员共同的努力和追求，促进文化交流协作，共同构建一条艺术文化的“丝绸之路”。</p>
			                    </div>
		                    
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
        
        // 新闻信息 
        function getHTMLForNews(data, len){
            if(!data){
                return '';
            }
            
            var html = '';
            for(var i=0;i < len; i++){
                if(i >= len || i >= data.length){
                    break;
                }
                html+='<div><span class="glyphicon glyphicon-bullhorn" style="margin-right:5px;"></span><a href="'
                    + data[i].url+'" target="_blank">'+data[i].title + '</a> -- ' + data[i].publisher
                    + '</div>';
            }
            
            return html;
        }
    </script>

</body>
</html>