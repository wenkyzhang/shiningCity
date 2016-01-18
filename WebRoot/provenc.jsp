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
.content {
	font-size: 16px;
	font-family: 微软雅黑, sans-serif;
	margin-left: 32px;
}

h4{
    margin-left:5px;
	color: inherit;
	font-family: inherit;
	white-space: normal;
	box-sizing: border-box;
	line-height: 36px;
	margin-top: 30px;
	margin-bottom: 10px;
	font-size: 18px;
	background-color: rgb(242, 242, 242);
}

.provencAD{
    margin:30px auto;
    
}

.provencAD p{
    color: red;
    text-align: center;
    line-height: 30px;
    font-size: 26px;
    font-weight: bold;
}
</style>

</head>
<body>
	<script type="text/javascript" src="js/borsertocss.js" />
	<!-- 判断在IE9以下浏览器中根据像素的不同而设置的样式 -->

	<!--头部代码开始-->
	<jsp:include page="head.jsp">
		<jsp:param value="internal" name="curPage" />
	</jsp:include>
	<!--头部代码结束-->

	<div class="hr tp-div-nexthr"
		style="margin-top: 0; margin-bottom: 0; padding: 0;"></div>
	<div class="container pb-15">
		<!-- Example row of columns -->
		<div class="row home-index">
			<div class="span13 t-20">
				<div class="span13 label-div l-5">
					<!--联盟动态开始-->
					<div class="span13" style="font-weight: bold; text-align: center;">
	                    <h1 style="font-weight: bold;">欧亚艺术文化交流协会</h1>
	                    <h3 style="font-weight: bold;">PROVENC N’ ARTS</h3>
	                    <h5 style="">EchangesArtistiques etCulturels Europe-Asie Europe-Asia Artistic and Cultural Exchanges</h5>
	                </div>
	                <div class="clearfix"></div>
	                <div class="span13" style="text-align: left;" id="provenc">
	                `   <div class="clearfix"></div>
	                    <h4>欧亚愿景 Motivation</h4>
	                    <p>
	                        本协会创办的宗旨在于加强和繁荣欧亚两大洲，尤其是中国、日本和以法国为代表的欧洲艺术家在艺术、文化、科技等领域的交流互动，通过协会成员共同的努力和追求，促进文化交流协作，共同构建一条艺术文化的“丝绸之路”。
	                    </p>
	                    
	                    <div class="clearfix"></div>
	                    <h4>协会简介Association Profile</h4>
	                    <p>
	                        欧亚艺术文化交流协会是经法国政府核准,具有法定资格的社会团体。它坐落在美丽迷人的普罗旺斯地区，坐拥丰富的人文、自然景观。塞尚、毕加索、梵高、马蒂斯、高更、夏加尔、博尔纳等众多艺术大师留恋于此，并且留下了流芳百世的传世佳作。这里同时也是诺贝尔文学家的摇篮，Frédéric Mistral、Jean Giono，Albert Camus 等文学泰斗在普罗旺斯深厚文化底蕴的滋养下，留下了不朽的篇章。
	                    </p>
	                    
	                    <div class="clearfix"></div>
	                    <h4>协会主席介绍Introduction of Association President</h4>
	                    <div class="span7">
	                        <p style="font-weight: bold; margin-top:30px; margin-left: 10px;">
	                            <span style="glyphicon glyphicon-home"></span>Guy LE LAY
	                        </p>
	                        <p>
	                            欧亚文化艺术交流协会由Guy LE LAY先生创建。他是法国马赛-艾克斯大学荣誉教授，物理美学专家，博士生导师，同时也是国际学术杂志《二维材料》“Two-DimensionalMaterials”资深主编，法国国家社会科学院所属新型材料结构物理研发中心主任研究员，意大利罗马材料结构物理研究所教授。
	                        </p>
	                        <p>
	                            Guy LE LAY先生是国际纳米界公认的权威，曾长期和美国宇航局共同研究科研项目。作为法国资深教授，LE LAY博士致力于亚洲和欧洲文化的探寻，并对中国文化印象深刻，多次来中国各大学堂讲课，如清华、北大、上海交大、复旦大学、香港科技大学、香港理工大学等各大知名学府及中科院等专门科研机构。
	                        </p>
	                    </div>
	                    <div class="span5" style="margin-top: 0px;">
	                        <img alt="Guy LE LAY" src="./images/provenc/guylelay.jpg">
	                    </div>
	                    
	                    <div class="clearfix"></div>
	                    <h4>协会艺术家简介Introduction of Artists</h4>
	                    <p style="font-weight: bold;margin-top:40px;">Christan COVY 克里斯蒂安科维</p>
	                    <p>法国版画家和油画家，擅长从多元的角度探索美学的科学奥妙,将艺术与科学完美地体现在他的大量作品中，他的素描画也展示了他不凡的功底。</p>
	                    <p>
	                        <img alt="" src="./images/provenc/image005.jpg">
	                        <img alt="" src="./images/provenc/image004.jpg" style="width: 224px; height: 120px;">
	                        <img alt="" src="./images/provenc/image007.jpg" style="width: 224px; height: 120px;">
	                        <img alt="" src="./images/provenc/image009.jpg" style="width: 224px; height: 120px;">
	                    </p>
	                    <p style="font-weight: bold;margin-top:40px;">Marie-NoëlleRonayette玛丽诺艾偌奈耶女士</p>
	                    <p>偌奈耶女士长期从事青铜雕塑的创造，其作品多以创造形态各异，柔美高雅的女性为主。在法国巴黎、戛纳、波尔多等多地画廊有长期展出，同时常年在欧洲各国进行巡展。她的作品有幸被选中作为中法建交50周年的见证与法国其他49名艺术家一起将出席在上海举行的展出。</p>
	                    <p>
	                    </p>
	                    <p style="font-weight: bold;margin-top:40px;">Jesus DEL RIO</p>
	                    <p>Rio 博士长期从事专业摄影，足迹遍布欧洲、南美洲、北美洲、非洲等地。摄影取材广泛，内容涉及风景，人物，生活，军事等众多领域。</p>
	                    <p>
	                        <img alt="" src="./images/provenc/image011.jpg">
	                        <img alt="" src="./images/provenc/image013.jpg" style="height: 343px;">
	                    </p>
	                    <p style="font-weight: bold;margin-top:40px;">Polina KOULIK宝丽娜古力柯</p>
	                    <p>古力柯女士先后就读于莫斯科美术学院和德国杜赛尔多夫美术学院。曾多次在莫斯科、圣彼得堡、巴黎、杜塞尔多夫、布鲁塞尔等各大欧洲城市举行个展和联展。</p>
	                    <p>
	                        <img alt="" src="./images/provenc/image015.jpg">
	                        <img alt="" src="./images/provenc/image017.jpg" style="height: 343px;">
	                    </p>
	                    
	                    <div class="clearfix"></div>
	                    <h4>协会活动</h4>
	                    <p>2012年10月策划并组织国内知名画家在普罗旺斯地区进行为期两周的采风。</p>
	                    <p>主要路线为追寻大师足迹、重现古罗马帝国辉煌之路和恋恋风情之普罗旺斯小镇，代表性艺术家例如：</p>
	                    
	                    <div class="clearfix"></div>
	                    <div style="margin-top: 40px;">
	                        <div class="span3">
	                            <p style="font-weight: bold;margin:20px auto 20px auto;">
	                                <span style="glyphicon glyphicon-home"></span>张林
	                            </p>
	                            <p>
	                                中国北京工业大学建筑与城市规划学院研究生导师
	                            </p>
	                            <p>
	                                画家
	                            </p>
	                        </div>
	                        <div class="span3">
	                            <img alt="Guy LE LAY" src="./images/provenc/image018.jpg">
	                        </div>
	                        <div class="span3">
	                            <img alt="Guy LE LAY" src="./images/provenc/image020.jpg" style="height: 197px;">
	                        </div>
	                    </div>
	                    
	                    <div class="clearfix"></div>
	                    <div style="margin-top: 40px;">
	                        <div class="span3">
	                            <p style="font-weight: bold;margin:20px auto 20px auto;">
	                                <span style="glyphicon glyphicon-home"></span>郭宁
	                            </p>
	                            <p>
	                                中国美术家协会水彩画艺委会委员
	                            </p>
	                            <p>
	                                福建省美术家协会副主席
	                            </p>
	                            <p>
	                                泉州市美术家协会主席
	                            </p>
	                            <p>
	                                泉州画院院长
	                            </p>
	                            <p>
	                                国家一级美术师
	                            </p>
	                            <p>
	                                2012年被评为“当代30位最具学术价值和收藏潜力的油画家”之一。 
	                            </p>
	                        </div>
	                        <div class="span3">
	                            <img alt="Guy LE LAY" src="./images/provenc/image025.jpg">
	                        </div>
	                        <div class="span3">
	                            <img alt="Guy LE LAY" src="./images/provenc/image026.jpg" style="height: 298px;">
	                        </div>
	                    </div>
	                </div>
	                
	                <div class="clearfix"></div>
	                <div class="provencAD">
	                    <p>今后将会有更多世界各地艺术家加入亚欧文化交流团队中，也期待您的加入！</p>
	                    <p>让中国艺术走向世界，让国外艺术家了解中国，是我们团队的意义所在！</p>
	                </div>
					<!--联盟介绍结束-->
				</div>

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
            
            $.post("<%=basePath%>index/query.do", function(result) {
				var data = JSON.parse(result);
				if (!!data.type && data.type == 'success') {
					//得到数据对象 
					data = data.obj;

					// 联盟动态 
					if (!!data.news) {
						$('div#news').append(getHTMLForNews(data.news, 30));
					}
				} else {
					//TODO show errormsg 
					//$('div#registDiv .message').addClass('bg-danger');
				}

			});
		});

		// 新闻信息 
		function getHTMLForNews(data, len) {
			if (!data) {
				return '';
			}

			var html = '';
			for (var i = 0; i < len; i++) {
				if (i >= len || i >= data.length) {
					break;
				}
				html += '<div><span class="glyphicon glyphicon-bullhorn" style="margin-right:5px;"></span><a href="'
                    + data[i].url+'" target="_blank">'
						+ data[i].title
						+ '</a> -- '
						+ data[i].publisher
						+ '</div>';
			}

			return html;
		}
	</script>

</body>
</html>