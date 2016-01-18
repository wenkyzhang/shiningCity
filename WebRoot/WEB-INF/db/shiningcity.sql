/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50546
Source Host           : localhost:3306
Source Database       : shiningcity1

Target Server Type    : MYSQL
Target Server Version : 50546
File Encoding         : 65001

Date: 2016-01-18 22:37:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `activity`
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matchId` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `startDate` varchar(200) DEFAULT NULL,
  `endDate` varchar(200) DEFAULT NULL,
  `creater` varchar(200) DEFAULT NULL,
  `createDate` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES ('1', '1', '测试活动', '4', '2015-08-03 03:00', '2015-08-03 03:55', 'admin', '2015-08-03 03:01:59');
INSERT INTO `activity` VALUES ('2', '1', '活动测试', '4', '2015-08-17 22:45', '2015-08-17 22:50', 'admin', '2015-08-16 15:02:33');
INSERT INTO `activity` VALUES ('3', '1', '上海大赛', '4', '2015-08-19 22:05', '2015-08-19 22:20', 'admin', '2015-08-18 00:10:59');
INSERT INTO `activity` VALUES ('4', '1', '测试新', '2', '2015-08-19 22:00', '2015-08-19 23:00', 'admin', '2015-08-19 21:59:31');
INSERT INTO `activity` VALUES ('5', '12', '发生的发生的', '2', '2016-01-12 01:10', '2016-01-12 01:35', 'admin', '2016-01-12 01:12:30');
INSERT INTO `activity` VALUES ('6', '12', '发生的发生的', '2', '2016-01-12 01:10', '2016-01-12 01:35', 'admin', '2016-01-12 01:13:16');

-- ----------------------------
-- Table structure for `alliance_internal`
-- ----------------------------
DROP TABLE IF EXISTS `alliance_internal`;
CREATE TABLE `alliance_internal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `words` varchar(50) DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `content` text,
  `logo` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of alliance_internal
-- ----------------------------
INSERT INTO `alliance_internal` VALUES ('1', '中德教育与文化交流中心简介', '闪耀之城,古典音乐,欧洲文化,德国教育', '中德教育文化中心于2014年在德国科隆注册（法院注册号：375411284），是以促进中德民间及官方教育文化领域交流为服务目的的非营利性组织。协会秉承增进中德文化教育界相互了解的工作理念，凭借着求真务实的工作态度，在筹建之时就得到了科隆市政府，科隆大学，科隆手工业行会，科隆学生会等组织的大力支持，并在成立之初不久就与德国北威州政府，中德商桥，IB职业培训等机构建立了良好的合作关系。', '<h1 style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, Arial, sans-serif; line-height: 28px; color: rgb(17, 17, 17); text-rendering: optimizeLegibility; font-size: 26px; text-align: center; white-space: normal;\">中德教育与文化交流中心简介</h1><h3 style=\"padding: 0px; margin: 0px; font-family: 微软雅黑, Arial, sans-serif; line-height: 22px; color: rgb(17, 17, 17); text-rendering: optimizeLegibility; font-size: 20px; text-align: center; white-space: normal;\">Austauschzentrum für chinesisch und deutsche Kultur und Bildung e.V.</h3><p><br/></p><p>中德教育文化中心于2014年在德国科隆注册（法院注册号：375411284），是以促进中德民间及官方教育文化领域交流为服务目的的非营利性组织。协会秉承增进中德文化教育界相互了解的工作理念，凭借着求真务实的工作态度，在筹建之时就得到了科隆市政府，科隆大学，科隆手工业行会，科隆学生会等组织的大力支持，并在成立之初不久就与德国北威州政府，中德商桥，IB职业培训等机构建立了良好的合作关系。</p><p>近年来，随着中德两国领导人互访日益频繁（总理默克尔已7次访华），中德两国关系发展越发紧密，双方战略合作伙伴关系的内容日益充实。在经济层面上，德国早已是欧盟內对华贸易第一大国，此外，在节能、新能源、物流，电动汽车等高科技产业方面双方也有很大的合作空间。在文教领域，中德大量的交流和留学人员为两国的交流做出了巨大的贡献，与此同时，今后形式多样，层次丰富的的文化教育交流也会受到更多的支持。在中德关系进入历史上最好时期的这一背景下，中德文化教育交流中心力求能为双边的文教交流做出自己的贡献。</p><p>协会发起人由科隆政府工作人员，科隆大学校友以及在校学生组成。团队成员都是各自领域的精兵强将。虽然还是个年轻的组织，但是中德教育文化交流中心已经积极组织参与了众多涉及中德文化教育领域的众多活动，其中，在2014年科隆中国节，暑期北京陈经纶中学唱诗班交流游访活动中，协会都扮演了重要的角色，帮助科隆市政府完成了出色的工作，另外，协会组织的2014年8月浙江工业大学科隆暑期班，和2015年4月协会与中德商桥在科隆大学共同组织的留德华人毕业生签证讲座，也都获得了参与者很高的赞誉。</p><p><br/></p><p>中德文化教育交流中心针对不同层面的交流需求，我们的工作内容可分为如下几个方面：</p><p>1.高中生德国文化体验游学；（古典音乐，欧洲文化，德国教育）</p><p>2.中德高等职业院校办学模式与教育教学经验交流游学；（职业教育培训交流互访，手工业行会访问）</p><p>3.精英大学交流学习班；（德国大学访问学习，课程学习，德语学习）</p><p>4.特殊定制文化旅游。（绘画摄影展览，欧洲古典建筑巡游）</p><p>协会将提供行程计划安排，并负责与德国当地合作机构联络沟通服务，负责访问交流期间的接待（交通，住宿）以及相关工作。</p><p><br/></p><p>通信地址：德国北莱茵威斯特法伦州 科隆市 Aachener Str. 417 Koeln 50933</p><p>电话： 0049 151 5111 2470</p><p>邮箱： info@acdkb.de</p><p>微信： 476401670, &nbsp;Firsen</p><p><br/></p><p><img src=\"http://localhost:8080/images/getimgdata-6.jpg\" width=\"100%\"/></p>', 'upload/temp/news_1452695411845.jpg');
INSERT INTO `alliance_internal` VALUES ('2', '欧亚艺术文化交流协会', '闪耀之城,艺术文化交流,文学家的摇篮,丝绸之路', '欧亚艺术文化交流协会是经法国政府核准,具有法定资格的社会团体。它坐落在美丽迷人的普罗旺斯地区，坐拥丰富的人文、自然景观。塞尚、毕加索、梵高、马蒂斯、高更、夏加尔、博尔纳等众多艺术大师留恋于此，并且留下了流芳百世的传世佳作。这里同时也是诺贝尔文学家的摇篮，Frédéric Mistral、Jean Giono，Albert Camus 等文学泰斗在普罗旺斯深厚文化底蕴的滋养下，留下了不朽的篇章。', '<h1 style=\"padding: 0px; margin: 0px; font-family: inherit; line-height: 28px; color: inherit; text-rendering: optimizeLegibility; font-size: 26px; text-align: center;\">欧亚艺术文化交流协会</h1><h3 style=\"padding: 0px; margin: 0px; font-family: inherit; color: inherit; text-rendering: optimizeLegibility; font-size: 20px; text-align: center;\">PROVENC N’ ARTS</h3><h5 style=\"padding: 0px; margin: 0px; font-family: inherit; color: inherit; text-rendering: optimizeLegibility; font-size: 16px; text-align: center;\">EchangesArtistiques etCulturels Europe-Asie Europe-Asia Artistic and Cultural Exchanges</h5><p><br/></p><h4 style=\"padding: 0px; margin: 0px; font-family: inherit; color: inherit; text-rendering: optimizeLegibility; font-size: 18px; box-sizing: border-box; background-color: rgb(242, 242, 242);\">欧亚愿景 Motivation</h4><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px;\">本协会创办的宗旨在于加强和繁荣欧亚两大洲，尤其是中国、日本和以法国为代表的欧洲艺术家在艺术、文化、科技等领域的交流互动，通过协会成员共同的努力和追求，促进文化交流协作，共同构建一条艺术文化的“丝绸之路”。</p><h4 style=\"padding: 0px; margin: 0px; font-family: inherit; color: inherit; text-rendering: optimizeLegibility; font-size: 18px; box-sizing: border-box; background-color: rgb(242, 242, 242);\">协会简介Association Profile</h4><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px;\">欧亚艺术文化交流协会是经法国政府核准,具有法定资格的社会团体。它坐落在美丽迷人的普罗旺斯地区，坐拥丰富的人文、自然景观。塞尚、毕加索、梵高、马蒂斯、高更、夏加尔、博尔纳等众多艺术大师留恋于此，并且留下了流芳百世的传世佳作。这里同时也是诺贝尔文学家的摇篮，Frédéric Mistral、Jean Giono，Albert Camus 等文学泰斗在普罗旺斯深厚文化底蕴的滋养下，留下了不朽的篇章。</p><h4 style=\"padding: 0px; margin: 0px; font-family: inherit; color: inherit; text-rendering: optimizeLegibility; font-size: 18px; box-sizing: border-box; background-color: rgb(242, 242, 242);\">协会主席介绍Introduction of Association President</h4><p style=\"padding: 0px; margin-top: 30px; margin-bottom: 10px; margin-left: 10px; font-weight: bold;\"><span style=\"padding: 0px; margin: 0px;\"></span>Guy LE LAY</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px;\">欧亚文化艺术交流协会由Guy LE LAY先生创建。他是法国马赛-艾克斯大学荣誉教授，物理美学专家，博士生导师，同时也是国际学术杂志《二维材料》“Two-DimensionalMaterials”资深主编，法国国家社会科学院所属新型材料结构物理研发中心主任研究员，意大利罗马材料结构物理研究所教授。</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px;\">Guy LE LAY先生是国际纳米界公认的权威，曾长期和美国宇航局共同研究科研项目。作为法国资深教授，LE LAY博士致力于亚洲和欧洲文化的探寻，并对中国文化印象深刻，多次来中国各大学堂讲课，如清华、北大、上海交大、复旦大学、香港科技大学、香港理工大学等各大知名学府及中科院等专门科研机构。</p><p><img alt=\"Guy LE LAY\" src=\"http://localhost:8080/images/provenc/guylelay.jpg\" style=\"padding: 0px; margin: 0px; max-width: 100%; height: auto; vertical-align: middle; border: 0px;\"/></p><h4 style=\"padding: 0px; margin: 0px; font-family: inherit; color: inherit; text-rendering: optimizeLegibility; font-size: 18px; box-sizing: border-box; background-color: rgb(242, 242, 242);\">协会艺术家简介Introduction of Artists</h4><p style=\"padding: 0px; margin-top: 40px; margin-bottom: 10px; font-weight: bold;\">Christan COVY 克里斯蒂安科维</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px;\">法国版画家和油画家，擅长从多元的角度探索美学的科学奥妙,将艺术与科学完美地体现在他的大量作品中，他的素描画也展示了他不凡的功底。</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px;\"><img alt=\"\" src=\"http://localhost:8080/images/provenc/image005.jpg\" style=\"padding: 0px; margin: 0px; max-width: 100%; height: auto; vertical-align: middle; border: 0px;\"/>&nbsp;<img alt=\"\" src=\"http://localhost:8080/images/provenc/image004.jpg\" style=\"padding: 0px; margin: 0px; max-width: 100%; height: 120px; vertical-align: middle; border: 0px; width: 224px;\"/>&nbsp;<img alt=\"\" src=\"http://localhost:8080/images/provenc/image007.jpg\" style=\"padding: 0px; margin: 0px; max-width: 100%; height: 120px; vertical-align: middle; border: 0px; width: 224px;\"/>&nbsp;<img alt=\"\" src=\"http://localhost:8080/images/provenc/image009.jpg\" style=\"padding: 0px; margin: 0px; max-width: 100%; height: 120px; vertical-align: middle; border: 0px; width: 224px;\"/></p><p style=\"padding: 0px; margin-top: 40px; margin-bottom: 10px; font-weight: bold;\">Marie-NoëlleRonayette玛丽诺艾偌奈耶女士</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px;\">偌奈耶女士长期从事青铜雕塑的创造，其作品多以创造形态各异，柔美高雅的女性为主。在法国巴黎、戛纳、波尔多等多地画廊有长期展出，同时常年在欧洲各国进行巡展。她的作品有幸被选中作为中法建交50周年的见证与法国其他49名艺术家一起将出席在上海举行的展出。</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px;\"><br/></p><p style=\"padding: 0px; margin-top: 40px; margin-bottom: 10px; font-weight: bold;\">Jesus DEL RIO</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px;\">Rio 博士长期从事专业摄影，足迹遍布欧洲、南美洲、北美洲、非洲等地。摄影取材广泛，内容涉及风景，人物，生活，军事等众多领域。</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px;\"><img alt=\"\" src=\"http://localhost:8080/images/provenc/image011.jpg\" style=\"padding: 0px; margin: 0px; max-width: 100%; height: auto; vertical-align: middle; border: 0px;\"/>&nbsp;<img alt=\"\" src=\"http://localhost:8080/images/provenc/image013.jpg\" style=\"padding: 0px; margin: 0px; max-width: 100%; height: 343px; vertical-align: middle; border: 0px;\"/></p><p style=\"padding: 0px; margin-top: 40px; margin-bottom: 10px; font-weight: bold;\">Polina KOULIK宝丽娜古力柯</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px;\">古力柯女士先后就读于莫斯科美术学院和德国杜赛尔多夫美术学院。曾多次在莫斯科、圣彼得堡、巴黎、杜塞尔多夫、布鲁塞尔等各大欧洲城市举行个展和联展。</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px;\"><img alt=\"\" src=\"http://localhost:8080/images/provenc/image015.jpg\" style=\"padding: 0px; margin: 0px; max-width: 100%; height: auto; vertical-align: middle; border: 0px;\"/>&nbsp;<img alt=\"\" src=\"http://localhost:8080/images/provenc/image017.jpg\" style=\"padding: 0px; margin: 0px; max-width: 100%; height: 343px; vertical-align: middle; border: 0px;\"/></p><h4 style=\"padding: 0px; margin: 0px; font-family: inherit; color: inherit; text-rendering: optimizeLegibility; font-size: 18px; box-sizing: border-box; background-color: rgb(242, 242, 242);\">协会活动</h4><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px;\">2012年10月策划并组织国内知名画家在普罗旺斯地区进行为期两周的采风。</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px;\">主要路线为追寻大师足迹、重现古罗马帝国辉煌之路和恋恋风情之普罗旺斯小镇，代表性艺术家例如：</p><p style=\"padding: 0px; margin: 20px auto; font-weight: bold;\"><span style=\"padding: 0px; margin: 0px;\"></span>张林</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px;\">中国北京工业大学建筑与城市规划学院研究生导师</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px;\">画家</p><p><img alt=\"Guy LE LAY\" src=\"http://localhost:8080/images/provenc/image018.jpg\" style=\"padding: 0px; margin: 0px; max-width: 100%; height: auto; vertical-align: middle; border: 0px;\"/></p><p><img alt=\"Guy LE LAY\" src=\"http://localhost:8080/images/provenc/image020.jpg\" style=\"padding: 0px; margin: 0px; max-width: 100%; height: 197px; vertical-align: middle; border: 0px;\"/></p><p style=\"padding: 0px; margin: 20px auto; font-weight: bold;\"><span style=\"padding: 0px; margin: 0px;\"></span>郭宁</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px;\">中国美术家协会水彩画艺委会委员</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px;\">福建省美术家协会副主席</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px;\">泉州市美术家协会主席</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px;\">泉州画院院长</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px;\">国家一级美术师</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px;\">2012年被评为“当代30位最具学术价值和收藏潜力的油画家”之一。</p><p><img alt=\"Guy LE LAY\" src=\"http://localhost:8080/images/provenc/image025.jpg\" style=\"padding: 0px; margin: 0px; max-width: 100%; height: auto; vertical-align: middle; border: 0px;\"/></p><p><img alt=\"Guy LE LAY\" src=\"http://localhost:8080/images/provenc/image026.jpg\" style=\"padding: 0px; margin: 0px; max-width: 100%; height: 298px; vertical-align: middle; border: 0px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: red; text-align: center; line-height: 30px; font-size: 26px; font-weight: bold;\">今后将会有更多世界各地艺术家加入亚欧文化交流团队中，也期待您的加入！</p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: red; text-align: center; line-height: 30px; font-size: 26px; font-weight: bold;\">让中国艺术走向世界，让国外艺术家了解中国，是我们团队的意义所在！</p><p><br/></p>', 'upload/temp/news_1452695426952.png');

-- ----------------------------
-- Table structure for `alliance_news`
-- ----------------------------
DROP TABLE IF EXISTS `alliance_news`;
CREATE TABLE `alliance_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `publisher` varchar(200) DEFAULT NULL,
  `publishDate` varchar(200) DEFAULT NULL,
  `addDate` varchar(200) DEFAULT NULL,
  `addUser` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of alliance_news
-- ----------------------------
INSERT INTO `alliance_news` VALUES ('1', '闪耀之城”2015 IMI国际超级童模大赛闪耀启程', 'lady.people.com.cn/n/2015/0615/c1014-27153247.html', '人民网', '2015/6/22', '2015/6/22', 'admin');
INSERT INTO `alliance_news` VALUES ('2', 'IMI国际童模大赛正式启动 童趣闪耀启程', 'http://news.xinhuanet.com/fashion/2015-06/15/c_127916105.htm', '新华网', '2015/6/22', '2015/6/22', 'admin');
INSERT INTO `alliance_news` VALUES ('3', '“闪耀之城”2015 IMI国际超级童模大赛 闪耀启程', 'http://fashion.sohu.com/20150615/n415040054.shtml', '搜狐', '2015/6/22', '2015/6/22', 'admin');
INSERT INTO `alliance_news` VALUES ('4', '“闪耀之城”2015 IMI国际超级童模大赛闪耀启程-欧游吧!童模', 'http://news.ef360.com/Articles/2015-6-15/325223.html', '华衣网', '2015/6/22', '2015/6/22', 'admin');
INSERT INTO `alliance_news` VALUES ('5', '“闪耀之城”2015 IMI国际超级童模大赛闪耀启程', 'http://fashion.ce.cn/news/201506/15/t20150615_5644329.shtml', '中国经济网', '2015/6/22', '2015/6/22', 'admin');
INSERT INTO `alliance_news` VALUES ('6', '“闪耀之城”国际IMI超级童模大赛在京拉开帷幕', 'http://news.dahe.cn/2015/06-15/105092152.html', '大河网', '2015/6/22', '2015/6/22', 'admin');
INSERT INTO `alliance_news` VALUES ('7', '“闪耀之城”国际IMI超级童模大赛在京拉开帷幕', 'http://life.jschina.com.cn/system/2015/06/15/025116639.shtml', '中国江苏网', '2015/6/22', '2015/6/22', 'admin');
INSERT INTO `alliance_news` VALUES ('8', '欧游吧！童模——“闪耀之城”2015 IMI国际超级童模大赛闪耀启程', 'http://www.chlngg.com/hot/the_n_view_47593.html', '服饰商情网', '2015/6/22', '2015/6/22', 'admin');
INSERT INTO `alliance_news` VALUES ('9', '童模 “闪耀之城”2015 IMI国际超级童模大赛 闪耀启程', 'http://fashion.self.com.cn/news/news_1111d27f912ee408.html', '悦己网', '2015/6/22', '2015/6/22', 'admin');
INSERT INTO `alliance_news` VALUES ('10', '“闪耀之城”国际IMI超级童模大赛在京拉开帷幕', 'http://www.cnsphoto.com/newsphoto/detail.jsp?pid=100286117', '中国新闻图片网', '2015/6/22', '2015/6/22', 'admin');

-- ----------------------------
-- Table structure for `alliance_parter`
-- ----------------------------
DROP TABLE IF EXISTS `alliance_parter`;
CREATE TABLE `alliance_parter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parterName` varchar(200) DEFAULT NULL,
  `parterUrl` varchar(200) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `addDate` varchar(200) DEFAULT NULL,
  `addUser` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of alliance_parter
-- ----------------------------
INSERT INTO `alliance_parter` VALUES ('1', '腾讯', 'http://www.qq.com/', 'parter/qq.jpg', '2015-06-22', 'admin');
INSERT INTO `alliance_parter` VALUES ('2', '网易', 'http://www.163.com/', 'parter/163.jpg', '2015-06-22', 'admin');
INSERT INTO `alliance_parter` VALUES ('3', '新华网', 'http://www.xinhuanet.com/', 'parter/xinhua.jpg', '2015-06-22', 'admin');
INSERT INTO `alliance_parter` VALUES ('4', '服装时报', 'http://fzsb.dooland.com/', 'parter/shizhuang.jpg', '2015-06-22', 'admin');
INSERT INTO `alliance_parter` VALUES ('5', '搜狐', 'http://www.sohu.com/', 'parter/sohu.jpg', '2015-06-22', 'admin');
INSERT INTO `alliance_parter` VALUES ('6', 'yoya', 'http://www.yoya.com/', 'parter/yoya.jpg', '2015-06-22', 'admin');
INSERT INTO `alliance_parter` VALUES ('7', 'elle', 'http://www.ellechina.com/', 'parter/elle.jpg', '2015-06-22', 'admin');
INSERT INTO `alliance_parter` VALUES ('8', '时尚北京', 'http://www.fashionbeijing.com/', 'parter/shishangbj.jpg', '2015-06-22', 'admin');
INSERT INTO `alliance_parter` VALUES ('9', '凤凰网', 'http://www.ifeng.com/', 'parter/ifeng.jpg', '2015-06-22', 'admin');
INSERT INTO `alliance_parter` VALUES ('10', '千龙网', 'http://www.qianlong.com/', 'parter/qianlong.jpg', '2015-06-22', 'admin');
INSERT INTO `alliance_parter` VALUES ('11', '财经网', 'http://www.caijing.com.cn/', 'parter/cj.jpg', '2015-06-22', 'admin');
INSERT INTO `alliance_parter` VALUES ('12', '服装商情网', 'http://www.chlngg.com/', 'parter/ef168.jpg', '2015-06-22', 'admin');
INSERT INTO `alliance_parter` VALUES ('13', '生活时尚网', 'http://www.fashionlife.net.cn/', 'parter/shishangshenghuo.jpg', '2015-06-22', 'admin');
INSERT INTO `alliance_parter` VALUES ('14', '中国女装网', 'http://www.nz86.com/', 'parter/nvzhuang.jpg', '2015-06-22', 'admin');

-- ----------------------------
-- Table structure for `alliance_services`
-- ----------------------------
DROP TABLE IF EXISTS `alliance_services`;
CREATE TABLE `alliance_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `services` varchar(2000) DEFAULT NULL,
  `systems` varchar(2000) DEFAULT NULL,
  `rist` varchar(2000) DEFAULT NULL,
  `serviceslogo` varchar(200) DEFAULT NULL,
  `systemslogo` varchar(200) DEFAULT NULL,
  `ristlogo` varchar(200) DEFAULT NULL,
  `video1` varchar(500) DEFAULT NULL,
  `video2` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of alliance_services
-- ----------------------------
INSERT INTO `alliance_services` VALUES ('1', '中国闪耀之城旅游文化艺术联盟致力于打造城市旅游文化与艺术赛事相结合的交流平台，提供少年儿童全方位的国际级艺术交流，全面发展国际间游学服务领域。为联盟成员提供闪耀之城品牌赛事（包括：童模、童舞、童画、童歌、童武）、大型活动艺术策划、国际游学交流活动、文化艺术培训、名校亲子探索、特色艺术夏令营等系统性服务。\r\n							中国旅游文化艺术联盟将定期举办（国际）艺术赛事、论坛、年会、国际交流等活动，努力打造成为中国旅游、文化与艺术赛事的品牌机构。', '利用闪耀之城超级童模大赛的契机，推动国内城市之间的脉动，开展国际文化艺术交流活动；通过联盟平台的运作，培育一批具有国际竞争力的艺术机构、艺术中介，培养更多的超级童星走向世界，用文化软实力开拓国际旅游文化艺术游学市场，推动中华文化走向世界。', '利用联盟丰富资源平台，通过风险控制、风险识别、风险估测、风险评价，可以帮助盟员、家庭、个人提供法律和风险管理服务。', 'images/logo_shiningCity.png', 'images/logo_shiningCity.png', 'images/logo_shiningCity.png', 'http://v.qq.com/iframe/player.html?vid=o0157b8x33r&tiny=0&auto=0', 'http://v.qq.com/iframe/player.html?vid=h0160r1rava&tiny=0&auto=0');

-- ----------------------------
-- Table structure for `alliance_units`
-- ----------------------------
DROP TABLE IF EXISTS `alliance_units`;
CREATE TABLE `alliance_units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `title` varchar(2000) DEFAULT NULL,
  `services` varchar(2000) DEFAULT NULL,
  `qualification` varchar(2000) DEFAULT NULL,
  `philosophy` varchar(2000) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `words` varchar(500) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `sort` int(11) DEFAULT '10',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of alliance_units
-- ----------------------------
INSERT INTO `alliance_units` VALUES ('1', '维护联盟成员详情', '维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情', '维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情', '维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情', null, '维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情维护联盟成员详情', 'asda,3242,44,维护联盟成员详情', 'upload/temp/news_1452614264685.jpg', 'units/shangjian.jsp', '6');
INSERT INTO `alliance_units` VALUES ('2', '舟山市野斑马文化发展有限公司', '少儿艺术专业培训及演艺活动机构，舟山首家且最大的少儿艺术综合类培训中心', '央视少儿晚会演员培训基地，同时也是舟山广电学生艺术团的姊妹团体', '英皇芭蕾舞蹈考级舟山基地，全国拉丁考牌舟山基地', '不为学艺术而学艺术', 'asdasd', 'asda', 'units/logo_wild_horse.png', 'units/yebanma.jsp', '10');
INSERT INTO `alliance_units` VALUES ('3', '海上花园海之归来俱乐部', '“海上花园，海之归来” 是国内海归精英俱乐部， 为欧洲留学归来的精英、人才提供一个交流、创新、创业的平台', '公司拥有强大的执行运营管理团队', '主要目的打造国际人才物流的窗口，通过海上花园的平台与欧洲搭建游学之旅、欧洲家庭式旅游体验服务', null, 'sdfsdf', 'sdfsdf', 'units/logo_hshy.jpg', '', '10');
INSERT INTO `alliance_units` VALUES ('4', '浙江万通国际旅行社有限公司', '浙江万通国旅是在浙江省旅游局、杭州市旅游委员会的大力支持下，经国家旅游局批准设立并特许出境旅游业务经营的综合性国际旅游企业，是太平洋亚洲旅游协会成员（PATA）。', '现转型互联网服务方向，专注为企业以及个人打造最独特最具人文气息的商业营销推广服务', '公司愿景：打造一流的专业旅游企业、打造一流的现代电子商务型旅游服务运营商，以信息化专业化、标准化引领行业发展', '万通国旅、通达天下', 'SDFASD', 'SDFASDF', 'units/logo_wt.jpg', null, '10');
INSERT INTO `alliance_units` VALUES ('5', '上海慧威文化传播有限公司', '由韩国可持续发展科学学会在中国大陆独家授权经营的上海慧威（国际）文化传播有限公司，以韩国可持续发展科学学会的核心体系为导向', '融合中国和亚洲文化特质，自主研发的“中国人可持续性形象管理体系”,为中国时尚文化产业提供新鲜的血液', '服务对象：渴望快速提升自身形象的、渴望快速就职形象设计行业等美容美发化妆行业的专业人员', '让美成为可持续价值', 'sdfasdfa', 'dsfsad', 'units/logo_hw.jpg', null, '10');

-- ----------------------------
-- Table structure for `areas`
-- ----------------------------
DROP TABLE IF EXISTS `areas`;
CREATE TABLE `areas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `areaName` varchar(200) DEFAULT NULL,
  `areaDesc` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of areas
-- ----------------------------
INSERT INTO `areas` VALUES ('2', '北京', '');
INSERT INTO `areas` VALUES ('3', '上海', '');
INSERT INTO `areas` VALUES ('4', '舟山', '');
INSERT INTO `areas` VALUES ('5', '杭州', null);
INSERT INTO `areas` VALUES ('6', '温州', null);
INSERT INTO `areas` VALUES ('8', '丽水', null);
INSERT INTO `areas` VALUES ('9', '青岛', '');

-- ----------------------------
-- Table structure for `child_model`
-- ----------------------------
DROP TABLE IF EXISTS `child_model`;
CREATE TABLE `child_model` (
  `name` varchar(200) NOT NULL,
  `birth` varchar(200) DEFAULT NULL,
  `sex` int(1) DEFAULT NULL,
  `IDCard` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `qq_or_weixin` varchar(100) DEFAULT NULL,
  `area` varchar(30) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `councelor` varchar(50) DEFAULT NULL,
  `specilty` varchar(500) DEFAULT NULL,
  `school` varchar(300) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `remark` varchar(3000) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matchId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of child_model
-- ----------------------------
INSERT INTO `child_model` VALUES ('冯绍博', '2010-4-1', '1', '123456789987654321', '13208031222', 'we@sdf.cs', '2324', '杭州', '1', '盛大', '按时打算', '撒打算', '啊飒飒的', '啊啊', '20', '1');
INSERT INTO `child_model` VALUES ('苗芳', null, null, null, '13567686261', null, null, null, null, null, null, null, null, null, '21', '1');
INSERT INTO `child_model` VALUES ('陈建华', null, null, null, '13588484199', null, null, null, null, null, null, null, null, null, '22', '1');
INSERT INTO `child_model` VALUES ('丛佳辉', null, '1', '370205200704192518', '13455208845', null, '137', '青岛', '2', null, null, null, null, null, '23', null);
INSERT INTO `child_model` VALUES ('刘曼琪', null, '0', '230203200602041029', '13616397815', null, '127', '青岛', '2', null, null, null, null, null, '24', null);
INSERT INTO `child_model` VALUES ('董芯妤', null, '0', '37020220080107002X', '13583258110', null, '135', '青岛', '2', null, null, null, null, null, '25', null);
INSERT INTO `child_model` VALUES ('陈雨林', null, '0', '370212200701261227', '13583258110', null, '136', '青岛', '2', null, null, null, null, null, '26', null);
INSERT INTO `child_model` VALUES ('陈思宇', null, '0', '37020520070321552X', '13583258110', null, '136', '青岛', '2', null, null, null, null, null, '27', null);
INSERT INTO `child_model` VALUES ('于德淏', null, '1', '370203200809117917', '13583258110', null, '123', '青岛', '2', null, null, null, null, null, '28', null);
INSERT INTO `child_model` VALUES ('叶怡瑞', null, '0', '37021420080924304X', '13583258110', null, '120', '青岛', '2', null, null, null, null, null, '29', null);
INSERT INTO `child_model` VALUES ('宋梓萌', null, '0', '370205200903151524', '13583258110', null, '126', '青岛', '2', null, null, null, null, null, '30', null);
INSERT INTO `child_model` VALUES ('何浩铭', null, '1', '330902200910301414', '13758048715', null, '127', '舟山', '0', null, null, null, null, null, '31', null);
INSERT INTO `child_model` VALUES ('严伟国', null, '1', '340323200609253733', '13059865968', null, '137', '舟山', '1', null, null, null, null, null, '32', null);
INSERT INTO `child_model` VALUES ('张译尹', null, '0', '330902200709061025', '13506601842', null, '120', '舟山', '1', null, null, null, null, null, '33', null);
INSERT INTO `child_model` VALUES ('郑博文', null, '1', '350128200805160051', '13325905518', null, '120', '舟山', '1', null, null, null, null, null, '34', null);
INSERT INTO `child_model` VALUES ('茅思远', null, '1', '330102200709212416', '13634186643', null, '122', '杭州', '1', null, null, null, null, null, '35', null);
INSERT INTO `child_model` VALUES ('程禹祎', null, '1', '331024200711194214', '13600511290', null, '132', '杭州', '1', null, null, null, null, null, '36', null);
INSERT INTO `child_model` VALUES ('王雅茜', null, '0', '330881201001010040', '13185030308', null, '110', '杭州', '0', null, null, null, null, null, '37', null);
INSERT INTO `child_model` VALUES ('高语汀', null, '0', '33010920100331302X', '13758101537', null, '110', '杭州', '0', null, null, null, null, null, '38', null);
INSERT INTO `child_model` VALUES ('丁锐涵', null, '1', '330109200903024915', '13967168506', null, '122', '杭州', '0', null, null, null, null, null, '39', null);
INSERT INTO `child_model` VALUES ('朱泰合', null, '1', 'H10399443(港澳）2011.7.13', '15057966888', null, '82', '杭州', '0', null, null, null, null, null, '40', null);
INSERT INTO `child_model` VALUES ('许缤王', null, '1', '330109201007071910', '13208031222', null, '105', '杭州', '0', null, null, null, null, null, '41', null);
INSERT INTO `child_model` VALUES ('张  璇', null, '0', '330127200404180043', '15062251955', null, '173', '杭州', '2', null, null, null, null, null, '42', null);
INSERT INTO `child_model` VALUES ('张哲铭', null, '1', '431222201002010319', '17711756605', null, '115', '杭州', '0', null, null, null, null, null, '43', null);
INSERT INTO `child_model` VALUES ('林妙妙', null, '0', '330381200905158249', '18867751539', null, '125', '温州', '0', null, null, null, null, null, '44', null);
INSERT INTO `child_model` VALUES ('吴跃玄铠', null, '1', '330303200902071851', '13506663225', null, '118', '温州', '0', null, null, null, null, null, '45', null);
INSERT INTO `child_model` VALUES ('王雅煊', null, '0', '330327201110231867', '13958935328', null, '106', '温州', '0', null, null, null, null, null, '46', null);
INSERT INTO `child_model` VALUES ('李晨萱', null, '0', '330326200901114324', '13587999166', null, '120', '温州', '0', null, null, null, null, null, '47', null);
INSERT INTO `child_model` VALUES ('陈  晗', null, '0', '330326200809170040', '15858031206', null, '125', '温州', '0', null, null, null, null, null, '48', null);
INSERT INTO `child_model` VALUES ('谢琳烁', null, '0', '330326201003080024', '13868505656', null, '120', '温州', '0', null, null, null, null, null, '49', null);
INSERT INTO `child_model` VALUES ('罗莹谕', null, '0', '331102200506226923', '15557821889', null, '132', '丽水', '2', null, null, null, null, null, '50', null);
INSERT INTO `child_model` VALUES ('季晨阳', null, '1', '33110220100520021X', '13600600755', null, '111', '丽水', '0', null, null, null, null, null, '51', null);
INSERT INTO `child_model` VALUES ('李晗瑄', null, '0', '331102201109275726', '13857078555', null, '110', '丽水', '0', null, null, null, null, null, '52', null);
INSERT INTO `child_model` VALUES ('梅家畅', null, '1', '331102201108120810', '15990889392', null, '103', '丽水', '0', null, null, null, null, null, '53', null);
INSERT INTO `child_model` VALUES ('麻亦馨', null, '0', '332526200408050024', '13906784558', null, '0', '丽水', '2', null, null, null, null, null, '54', null);
INSERT INTO `child_model` VALUES ('林辰希', null, '0', '331124200709140028', '13754266137', null, '126', '丽水', '1', null, null, null, null, null, '55', null);
INSERT INTO `child_model` VALUES ('陈馨语', null, '0', '33110220051017082x', '13905888670', null, '135', '丽水', '2', null, null, null, null, null, '56', null);
INSERT INTO `child_model` VALUES ('朱俊哲', null, '1', '331121200704188058\r\n', '15024618558', null, '120', '丽水', '2', null, null, null, null, null, '57', null);
INSERT INTO `child_model` VALUES ('叶楚盈', null, '0', '332501200402272825', '18606782755', null, '145', '丽水', '2', null, null, null, null, null, '58', null);
INSERT INTO `child_model` VALUES ('何梓煊', null, '0', '331102200505152424', null, null, '140', '丽水', '2', null, null, null, null, null, '59', null);
INSERT INTO `child_model` VALUES ('吴紫涵', null, '0', '330326200703261825', null, null, '140', '丽水', '1', null, null, null, null, null, '60', null);
INSERT INTO `child_model` VALUES ('高  轩', null, '1', null, '15801831335', null, '140', '上海', '1', null, null, null, null, null, '61', null);
INSERT INTO `child_model` VALUES ('黄天乐', null, '1', null, '18650216188', null, '107', '上海', '0', null, null, null, null, null, '62', null);
INSERT INTO `child_model` VALUES ('赵施玥珊', null, '0', null, '13918319118', null, '105', '上海', '0', null, null, null, null, null, '63', null);
INSERT INTO `child_model` VALUES ('黄若童', null, '0', null, '13816676021', null, '113', '上海', '0', null, null, null, null, null, '64', null);
INSERT INTO `child_model` VALUES ('陈奕霖', null, '1', null, '13621616514', null, '109', '上海', '0', null, null, null, null, null, '65', null);
INSERT INTO `child_model` VALUES ('松村和美', null, '0', null, '18017583232', null, '120', '上海', '0', null, null, null, null, null, '66', null);
INSERT INTO `child_model` VALUES ('林冠宇', null, '1', null, '13336045681', null, '97', '上海', '0', null, null, null, null, null, '67', null);
INSERT INTO `child_model` VALUES ('钱程', null, '0', null, '13817860262', null, '120', '上海', '0', null, null, null, null, null, '68', null);
INSERT INTO `child_model` VALUES ('黄传祺', null, '1', null, '13524203772', null, '140', '上海', '1', null, null, null, null, null, '69', null);
INSERT INTO `child_model` VALUES ('黄心如', null, '0', null, '13524203773', null, '166', '上海', '2', null, null, null, null, null, '70', null);
INSERT INTO `child_model` VALUES ('王梓涵', null, '1', null, '15000126799', null, '120', '上海', '0', null, null, null, null, null, '71', null);
INSERT INTO `child_model` VALUES ('奥黛丽', null, '0', null, '13391183378', null, '110', '上海', '0', null, null, null, null, null, '72', null);
INSERT INTO `child_model` VALUES ('李心冉', null, '0', null, '18501626439', null, '125', '上海', '0', null, null, null, null, null, '73', null);
INSERT INTO `child_model` VALUES ('张语轩', null, '0', null, '15901809998', null, '128', '上海', '1', null, null, null, null, null, '74', null);
INSERT INTO `child_model` VALUES ('张雨欣', null, '0', null, '15901809998', null, '115', '上海', '0', null, null, null, null, null, '75', null);
INSERT INTO `child_model` VALUES ('虞昊霖', null, '1', null, '13564016005', null, '144', '上海', '0', null, null, null, null, null, '76', null);
INSERT INTO `child_model` VALUES ('Emma Harbers', null, '0', null, '13917387368', null, '120', '上海', '0', null, null, null, null, null, '77', null);
INSERT INTO `child_model` VALUES ('孙雨苏', null, '0', null, '13764380162', null, '130', '上海', '1', null, null, null, null, null, '78', null);
INSERT INTO `child_model` VALUES ('陈思睿', null, '0', null, '18019476851', null, '145', '上海', '2', null, null, null, null, null, '79', null);
INSERT INTO `child_model` VALUES ('谢馨怡', null, '0', null, '13391497185', null, '138', '上海', '1', null, null, null, null, null, '80', null);
INSERT INTO `child_model` VALUES ('张源', null, '1', null, '13816944772', null, '120', '上海', '0', null, null, null, null, null, '81', null);
INSERT INTO `child_model` VALUES ('龚诗瑶', null, '0', null, '18964564195', null, '120', '上海', '0', null, null, null, null, null, '82', null);
INSERT INTO `child_model` VALUES ('王思佳', null, '0', null, '13564575119', null, '144', '上海', '2', null, null, null, null, null, '83', null);
INSERT INTO `child_model` VALUES ('徐宇瞳', null, '0', null, '15214329708', null, '120', '上海', '1', null, null, null, null, null, '84', null);
INSERT INTO `child_model` VALUES ('罗捷', null, '1', null, '13611801388', null, '125', '上海', '1', null, null, null, null, null, '85', null);
INSERT INTO `child_model` VALUES ('孙雅瞳', null, '0', null, '13641996250', null, '105', '上海', '0', null, null, null, null, null, '86', null);
INSERT INTO `child_model` VALUES ('王艺诺', null, '0', null, '18817731855', null, '130', '上海', '0', null, null, null, null, null, '87', null);
INSERT INTO `child_model` VALUES ('于越', null, '1', null, '13262281008', null, '121', '上海', '0', null, null, null, null, null, '88', null);
INSERT INTO `child_model` VALUES ('王亭亭', null, '0', null, '18721115506', null, '119', '上海', '0', null, null, null, null, null, '89', null);
INSERT INTO `child_model` VALUES ('黄千容', null, '0', null, '13918258841', null, '115', '上海', '0', null, null, null, null, null, '90', null);
INSERT INTO `child_model` VALUES ('张亦航', null, '1', null, '15201855608', null, '105', '上海', '0', null, null, null, null, null, '91', null);
INSERT INTO `child_model` VALUES ('胡云茜', null, '0', null, '13818912588', null, '145', '上海', '2', null, null, null, null, null, '92', null);
INSERT INTO `child_model` VALUES ('朱颖瑄', null, '0', null, '18621873161', null, '145', '上海', '2', null, null, null, null, null, '93', null);
INSERT INTO `child_model` VALUES ('李嘉馨', null, '0', null, '13321881031', null, '105', '上海', '0', null, null, null, null, null, '94', null);
INSERT INTO `child_model` VALUES ('杨俊毅', null, '1', null, '13501788429', null, '123', '上海', '0', null, null, null, null, null, '95', null);
INSERT INTO `child_model` VALUES ('朱怡冰', null, '0', null, '13917651376', null, '130', '上海', '1', null, null, null, null, null, '96', null);
INSERT INTO `child_model` VALUES ('李佳琦', null, '0', null, '13902433921', null, '125', '上海', '1', null, null, null, null, null, '97', null);
INSERT INTO `child_model` VALUES ('李文韬', null, '1', null, '13902433921', null, '120', '上海', '0', null, null, null, null, null, '98', null);
INSERT INTO `child_model` VALUES ('何苗鸿', null, '1', null, '13918033408', null, '135', '上海', '1', null, null, null, null, null, '99', null);
INSERT INTO `child_model` VALUES ('张一驰', null, '1', null, '13671671697', null, '113', '上海', '0', null, null, null, null, null, '100', null);
INSERT INTO `child_model` VALUES ('赵懿', null, '0', null, '15221001989', null, '121', '上海', '0', null, null, null, null, null, '101', null);
INSERT INTO `child_model` VALUES ('孙艺程', null, '1', null, '18019491896', null, '100', '上海', '0', null, null, null, null, null, '102', null);
INSERT INTO `child_model` VALUES ('沈建森', null, '1', null, '13601994988', null, '130', '上海', '1', null, null, null, null, null, '103', null);
INSERT INTO `child_model` VALUES ('郭紫涵', null, '0', null, '15618389389', null, '118', '上海', '0', null, null, null, null, null, '104', null);
INSERT INTO `child_model` VALUES ('徐芷洁', null, '0', null, '13681780800', null, '0', '上海', '0', null, null, null, null, null, '105', null);
INSERT INTO `child_model` VALUES ('金灿佑', null, '1', null, '13501841266', null, '120', '上海', '1', null, null, null, null, null, '106', null);
INSERT INTO `child_model` VALUES ('安德鲁', null, '1', null, '13248150839', null, '141', '上海', '2', null, null, null, null, null, '107', null);

-- ----------------------------
-- Table structure for `classic_case`
-- ----------------------------
DROP TABLE IF EXISTS `classic_case`;
CREATE TABLE `classic_case` (
  `name` varchar(200) DEFAULT NULL,
  `directory` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classic_case
-- ----------------------------

-- ----------------------------
-- Table structure for `matchs`
-- ----------------------------
DROP TABLE IF EXISTS `matchs`;
CREATE TABLE `matchs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `matcharea` varchar(200) DEFAULT NULL,
  `matchrules` varchar(200) DEFAULT NULL,
  `matchgroup` varchar(200) DEFAULT NULL,
  `publicize` varchar(200) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of matchs
-- ----------------------------
INSERT INTO `matchs` VALUES ('1', '2015闪耀之城IMI国际超级童模大赛', '北京,上海,青岛,烟台,威海,济南,杭州,温州,舟山', null, null, 'upload/temp/logo_imi.png', '为了挖掘和培育优秀的少儿艺术人才，搭建国际少年儿童文化艺术交流平台，由国际青少年文化交流促进会、国际闪耀之城旅游文化艺术联盟共同主办的2015国际闪耀之城超级童模大赛在全国已经拉开了帷幕。经2015国际闪耀之城超级童模大赛组委会决定，现面向北京、上海、山东、浙江等赛区开展超级童模大赛赛事活动。为增进国际城市之间的脉动、搭建城市旅游文化与艺术赛事的桥梁、提供少年儿童的全方位交流的舞台。“闪耀之城”代表着“真诚与友爱、互动与沟通、时尚与艺术”的完美结合。');
INSERT INTO `matchs` VALUES ('11', '2015闪耀之城IMI国际超级童模大赛', null, null, null, 'upload/temp/news_1452440328405.jpg', '为了挖掘和培育优秀的少儿艺术人才，搭建国际少年儿童文化艺术交流平台，由国际青少年文化交流促进会、国际闪耀之城旅游文化艺术联盟共同主办的2015国际闪耀之城超级童模大赛在全国已经拉开了帷幕。经2015国际闪耀之城超级童模大赛组委会决定，现面向北京、上海、山东、浙江等赛区开展超级童模大赛赛事活动。为增进国际城市之间的脉动、搭建城市旅游文化与艺术赛事的桥梁、提供少年儿童的全方位交流的舞台。“闪耀之城”代表着“真诚与友爱、互动与沟通、时尚与艺术”的完美结合。');
INSERT INTO `matchs` VALUES ('12', '江永利&方芜莲12123', null, null, null, 'upload/temp/news_1452440978563.jpg', '大法师大法是地方');

-- ----------------------------
-- Table structure for `match_area`
-- ----------------------------
DROP TABLE IF EXISTS `match_area`;
CREATE TABLE `match_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `matchId` int(11) DEFAULT NULL,
  `areaId` int(11) DEFAULT NULL,
  `areaDesc` varchar(2000) DEFAULT NULL,
  `areaImage` varchar(200) DEFAULT NULL,
  `voteStart` varchar(200) DEFAULT NULL,
  `voteEnd` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of match_area
-- ----------------------------
INSERT INTO `match_area` VALUES ('1', '1', '2', null, null, '2015-07-01', '2015-08-31');
INSERT INTO `match_area` VALUES ('2', '1', '3', null, null, '2015-07-01', '2015-08-31');
INSERT INTO `match_area` VALUES ('3', '1', '4', null, null, '2015-07-01', '2015-08-18');
INSERT INTO `match_area` VALUES ('4', '1', '5', '', null, '2015-07-01', '2015-08-18');
INSERT INTO `match_area` VALUES ('5', '1', '6', null, null, '2015-07-01', '2015-08-18');
INSERT INTO `match_area` VALUES ('7', '1', '8', null, null, '2015-07-01', '2015-08-18');
INSERT INTO `match_area` VALUES ('8', '1', '9', null, null, '2015-07-01', '2015-08-18');

-- ----------------------------
-- Table structure for `match_links`
-- ----------------------------
DROP TABLE IF EXISTS `match_links`;
CREATE TABLE `match_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `matchId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of match_links
-- ----------------------------
INSERT INTO `match_links` VALUES ('1', '赛事说明', 'http://u.eqxiu.com/s/U8i5ZT2B?eqrcode=1', '1');
INSERT INTO `match_links` VALUES ('2', '导师评委', 'http://i.eqxiu.com/s/1cIeeTb2?eqrcode=1', '1');
INSERT INTO `match_links` VALUES ('3', '联盟介绍', 'http://x.eqxiu.com/s/1cIeeTb2?eqrcode=1', '1');

-- ----------------------------
-- Table structure for `mentor_group`
-- ----------------------------
DROP TABLE IF EXISTS `mentor_group`;
CREATE TABLE `mentor_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `title` varchar(2000) DEFAULT NULL,
  `tags` varchar(200) DEFAULT NULL,
  `introduction` varchar(2000) DEFAULT NULL,
  `images` varchar(200) DEFAULT NULL,
  `summary` varchar(2000) DEFAULT NULL,
  `sort` int(11) DEFAULT '100',
  `isShow` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mentor_group
-- ----------------------------
INSERT INTO `mentor_group` VALUES ('1', '陈建力', 'teacher/chenjianli.jpg', '权威媒体记者', '闪耀之城,新华社高级记者,新闻奖', 'Imodel百人平面摄影计划第一季潜力新星，以甜美性感著称。来自山东的王晓倩，外表不如印象中山东女孩的豪爽奔放，她拥有南方女生羡慕的甜美面容，更拥有北方女生惹人嫉妒的火辣身材，甜美与性感兼具，甜而不腻，性感魅惑，戏路广阔，可塑性强。擅长不同风格的表演拍摄活动，曾参与多个走秀、车展、影视等演艺拍摄活动，于Imodel展示大厅内点击量高达近50万，大有持续飙升趋势，人气超高！\r\n\r\n王晓婷、王晓倩，双胞胎姐妹花，现任北京新丝路有限公司模特。\r\n新华社高级记者，摄影部新闻采访室副主任，中国新闻摄影学会副秘书长，新闻奖获得者。\r\n\r\n网络资料：\r\n出生于山西省新州市。80年代从大学毕业后被分配到新华社工作至今。现在为新华社摄影部主任摄影记者。曾先后两次被派往东京分社工作。现主要采访财经、时尚、教育等领域重大事件和活动。摄影作品曾多次获得代表中国摄影最高奖项的中国新闻奖，2004年被评为“中国最佳时装摄影师”和“时尚人物”。', null, '新华社高级记者，摄影部新闻采访室副主任，中国新闻摄影学会副秘书长，新闻奖获得者。', '100', '1');
INSERT INTO `mentor_group` VALUES ('2', '陈闻', 'teacher/chenwen.jpg', '知名服装设计师', '闪耀之城,时装设计师,艺术总监', '亚洲时尚联合会中国委员会常务理事，中国服装设计师协会常务理事、时装艺术委员会主任委员，中国著名时装设计师、上海陈闻服装创作工作室艺术总监。\r\n\r\n设计总监陈闻先生是亚洲时尚联合会中国委员会常务理事；中国服装设计师协会常务理事、时装艺术委员会主任委员; 1996年毕业于中国纺织大学服装学院，获硕士学位。1998年获得中国十佳时装设计师称号。2014年荣获中国最佳女装设计师大奖。自1997年首次赴法国参加国际博览会并举办首场时装发布会以来，曾于美国、日本、韩国、泰国、埃及等国家举行服装发布、作品展示及主题演讲。多次在中国国际时装周代表行业及品牌举行品牌装流行趋势、牛仔装流行趋势、色彩流行趋势等发布。', null, '亚洲时尚联合会中国委员会常务理事，中国服装设计师协会常务理事、时装艺术委员会主任委员，中国著名时装设计师、上海陈闻服装创作工作室艺术总监。', '100', '1');
INSERT INTO `mentor_group` VALUES ('3', '毛立辉', 'teacher/maolihui.jpg', '时尚评论专家', '闪耀之城,最佳时装评论员,纺织服装品牌战略专家', '中国著名时尚评论专家，“中国新闻奖”、“中国最佳时装评论员”获得者，中国纺织服装品牌战略委员会专家，武汉纺织大学特聘教授，江西服装学院、中南民族大学客座教授。\r\n\r\n网络资料：\r\n毛立辉 男 1957.3 武汉服装设计师协会副会长兼秘书长、主任记者\r\n湖北省国家职业资格艺术设计专家委员会服装设计专业委员\r\n个人简历：\r\n1985年----1995年 任中国纺织报社记者\r\n1996年----2004年 任中国服饰报社记者\r\n2000年----2003年 任中外服饰杂志社总编辑\r\n2004年----至今 任武汉服装设计师协会副会长兼秘书长、北京ESMOD高级时装艺术学院兼职教授\r\n主要成就：\r\n1、1993年获“中国新闻奖”\r\n2、1998年、1999年、2000年连续荣获“中国时装文化奖最佳时装评论员称号”\r\n3、有百余篇时装评论文章在国家级报刊发表，先后荣获省市以上论文奖、新闻奖、摄影奖、征文奖50多项，时装评论专著《时尚是种情感的演绎》2004年由上海科技文献出版社出版发行。', null, '中国著名时尚评论专家，“中国新闻奖”、“中国最佳时装评论员”获得者，中国纺织服装品牌战略委员会专家，武汉纺织大学特聘教授，江西服装学院、中南民族大学客座教授。', '100', '1');
INSERT INTO `mentor_group` VALUES ('4', '田占国', 'teacher/tianzhanguo.jpg', '国家级专业评委', '闪耀之城,最佳时尚评论员,时尚摄影记者', '中国最佳时尚评论员、资深时尚摄影记者《服装时报》总编助理、时尚新闻部主任。\r\n\r\n网络资料：\r\n《服装时报》设计部主任，2003中国国际时装周时尚大奖——最佳时装评论员，十佳时装评论员。\r\n服装的商业价值，大抵是现在所有的人都明白了，服装终是要穿在人身上，并彰显没得。衣服终究是消费品，他不是也不应该是只能挂在人台或墙壁上只供欣赏的物品。', null, '中国最佳时尚评论员、资深时尚摄影记者《服装时报》总编助理、时尚新闻部主任。', '100', '1');
INSERT INTO `mentor_group` VALUES ('5', '张崇伟', 'teacher/zhangchongwei.jpg', '时装设计师', '闪耀之城,时装艺术委员会委员,十佳时装设计师', '中国服装设计师协会时装艺术委员会委员\r\n中国十佳时装设计师\r\n青岛时装设计师协会副主席兼秘书长。', null, '中国服装设计师协会时装艺术委员会委员\r\n中国十佳时装设计师\r\n青岛时装设计师协会副主席兼秘书长', '100', '1');
INSERT INTO `mentor_group` VALUES ('6', '王晓倩', 'teacher/wangxiaoqian.jpg', '模特，第一超模', '闪耀之城,第一超模,模特,新丝路', 'Imodel百人平面摄影计划第一季潜力新星，以甜美性感著称。来自山东的王晓倩，外表不如印象中山东女孩的豪爽奔放，她拥有南方女生羡慕的甜美面容，更拥有北方女生惹人嫉妒的火辣身材，甜美与性感兼具，甜而不腻，性感魅惑，戏路广阔，可塑性强。擅长不同风格的表演拍摄活动，曾参与多个走秀、车展、影视等演艺拍摄活动，于Imodel展示大厅内点击量高达近50万，大有持续飙升趋势，人气超高！\r\n\r\n王晓婷、王晓倩，双胞胎姐妹花，现任北京新丝路有限公司模特。\r\n旅游卫视大型时尚真人秀节目《第一超模》王晓倩夺冠。', 'teacher/wangxiaoqian2.jpg;teacher/wangxiaoqian3.jpg', '现任北京新丝路有限公司模特，Imodel百人平面摄影计划第一季潜力新星，以甜美性感著称。\r\n旅游卫视大型时尚真人秀节目《第一超模》冠军。', '100', '1');
INSERT INTO `mentor_group` VALUES ('7', '胡楚南', 'teacher/huchunan.jpg', '董事长，太平绅士', ' 闪耀之城,胡良利,太平绅士', '广东潮阳人，香港太平绅士。曾任香港中西区区议会主席、香港舞蹈总会会长兼执行主席、中西区扑灭罪行委员会主席、中西区文化艺术协会主席、第五届中西区区节统筹委员会主席等职，现任上海第十届政协委员、香港中西区区议会副主席、投诉警方独立监察委员会观察员、香港潮阳同乡会会长、香港潮州商会会董等职务。\r\n\r\nNative in Chanyang, Guandong province, \" J.P \". The posts he once hold are as follows, the president of C.W. Council of Hong Kong, the executive president of Hong Kong General Dance Association, the chairman of Extinguish Crime Commission, C.W., the chairman of Association of Cultural & Arts C.W., the chairman of the 5th Festival Coordinating Committee C.W.. He currently acts as the committee member of the 10th Shanghai CPPCC, vice chairman of Central& Western District Council of Hong Kong, observer of the Independent Police Complaint Council, the president of Chaoyang Fellowship Association of Hong Kong, director of Chiu Chow Chamber of Commerce of Hong Kong。', null, '广东潮阳人，香港太平绅士。曾任香港舞蹈总会会长兼执行主席、中西区文化艺术协会主席等职，现任上海第十届政协委员、香港中西区区议会副主席等职务。', '100', '0');
INSERT INTO `mentor_group` VALUES ('8', '温元凯', 'teacher/wenyuankai.jpg', '教授，留学专家', '闪耀之城,南洋林德,罗斯福', '江苏无锡人，1946年生。是中国著名经济学家、化学家 、金融投资专家、澳门城市大学特聘教授 、亚洲投资论坛董事，中国改革风云人物之一，现任北京南洋林德投资顾问有限公司总裁。1968年毕业于南京大学化学系。1977年，出席中国“科学与教育工作座谈会”时，向邓小平提出恢复高考和开放出国留学制度的建议。1982年呼吁进行教育体制的改革。1984年专著《中国大趋势》问世 。1988年被评为“中国改革十大风云人物之一” 。1992年，受邀前往美国加州理工学院做访问学者 。1993年应邀出任华尔街罗斯福对华投资公司副总裁。2002年担任IPM国际职业经理人资质认证专家委员会副主任委员。先后担任中国科技大学化学系主任、安徽省教委副主任、中国科技大学副校长、全国人大代表。', null, '中国著名经济学家、化学家、金融投资专家、澳门城市大学特聘教授、亚洲投资论坛董事，中国改革风云人物之一，现任北京南洋林德投资顾问有限公司总裁。', '100', '1');
INSERT INTO `mentor_group` VALUES ('9', '韩清源', 'teacher/hanqingyuan.jpg', '博士，执行会长', '闪耀之城,美国华人全国委员会,美国华人科教文中心', '韩清源博士，美国华人全国委员会执行会长、美国华人科教文中心主任。哈尔滨工业大学毕业，赴美留学获明尼苏达大学机械工程博士学位，现任美国半导体设备制造商亚舍立技术公司高级工程师，杭州汇萃智能科技有限公司总经理。他所在的美国华人全国委员会是一个非政治性、非盈利性的NGO组织，总部设在美国华盛顿。其宗旨是为所有美国华人华侨服务；促进和保障华人华侨的政治权益、社会福利和经济利益；认同、保护、传承并发扬光大中华文化和精神遗产以及人文价值；增进与美国所有人民之间的了解和友谊，尊从民主原则，并致力于世界和平；为加强中美两国之间在教育、文化、科技、经济等方面的民间交流，起到桥梁和纽带作用。', null, '美国华人全国委员会执行会长、美国华人科教文中心主任。哈尔滨工业大学毕业，赴美留学获明尼苏达大学机械工程博士学位，现任公司高级工程师及公司总经理。', '100', '1');

-- ----------------------------
-- Table structure for `model`
-- ----------------------------
DROP TABLE IF EXISTS `model`;
CREATE TABLE `model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` varchar(200) DEFAULT NULL,
  `popularity` int(11) DEFAULT NULL,
  `matchId` int(11) DEFAULT NULL,
  `createDate` varchar(200) DEFAULT NULL,
  `createUser` varchar(200) DEFAULT NULL,
  `videourl` varchar(200) DEFAULT NULL,
  `description` varchar(2000) DEFAULT NULL,
  `iHeight` int(11) DEFAULT NULL,
  `ageGroup` varchar(200) DEFAULT NULL,
  `modelId` varchar(200) DEFAULT NULL,
  `contact` varchar(200) DEFAULT NULL,
  `contactPhone` varchar(200) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `votes` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=259 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of model
-- ----------------------------
INSERT INTO `model` VALUES ('1', '曾湉', 'upload/model/zhentian.jpg', '10', '女', '0', '1', '2015-07-26 23:58', 'admin', null, '舞蹈', '138', '2', null, null, null, '5', '7');
INSERT INTO `model` VALUES ('2', '曾文卓', 'upload/model/zengwenzhuo.jpg', '11', '女', '0', '1', '2015-07-26 23:58', 'admin', null, '舞蹈', '140', '2', null, null, null, '5', '4');
INSERT INTO `model` VALUES ('3', '陈诺', 'upload/model/chennuo.jpg', '6', '女', '0', '1', '2015-07-26 23:58', 'admin', null, null, '113', '0', null, null, null, '5', '3');
INSERT INTO `model` VALUES ('4', '冯绍博', 'upload/model/fengshaobo.jpg', '4', '男', '0', '1', '2015-07-26 23:58', 'admin', null, '唱歌', '102', '0', null, null, null, '5', '3');
INSERT INTO `model` VALUES ('5', '黄可豪', 'upload/model/huangkehao.jpg', '8', '男', '0', '1', '2015-07-26 23:58', 'admin', null, '架子鼓', '130', '1', null, null, null, '5', '2');
INSERT INTO `model` VALUES ('6', '罗思佳', 'upload/model/luosijia.jpg', '9', '女', '0', '1', '2015-07-26 23:58', 'admin', null, null, '136', '1', null, null, null, '5', '0');
INSERT INTO `model` VALUES ('7', '毛振啸', 'upload/model/maozhengxiao.jpg', '10', '男', '0', '1', '2015-07-26 23:58', 'admin', null, '武术', '140', '2', null, null, null, '5', '0');
INSERT INTO `model` VALUES ('8', '庞淑粲', 'upload/model/pangshujie.jpg', '8', '男', '0', '1', '2015-07-26 23:58', 'admin', null, '架子鼓', '130', '1', null, null, null, '5', '0');
INSERT INTO `model` VALUES ('9', '钱语菡', 'upload/model/qianyuhan.jpg', '4', '女', '0', '1', '2015-07-26 23:58', 'admin', null, '舞蹈', '104', '0', null, null, null, '5', '0');
INSERT INTO `model` VALUES ('10', '任长航', 'upload/model/rengchanghang.jpg', '11', '男', '0', '1', '2015-07-26 23:58', 'admin', null, '武术', '140', '2', null, null, null, '5', '0');
INSERT INTO `model` VALUES ('11', '王睿', 'upload/model/wangrui.jpg', '10', '男', '0', '1', '2015-07-26 23:58', 'admin', null, '舞蹈、讲故事', '133', '2', null, null, null, '5', '1');
INSERT INTO `model` VALUES ('12', '温思慧', 'upload/model/wensihui.jpg', '5', '女', '0', '1', '2015-07-26 23:58', 'admin', null, '舞蹈', '118', '0', null, null, null, '5', '22');
INSERT INTO `model` VALUES ('13', '吴跃玄铠', 'upload/model/wuyuexuankai.jpg', '6', '男', '0', '1', '2015-07-26 23:58', 'admin', null, null, '118', '0', null, null, null, '5', '1');
INSERT INTO `model` VALUES ('14', '谢韵希', 'upload/model/xianyunxi.jpg', '5', '女', '0', '1', '2015-07-26 23:58', 'admin', null, '舞蹈、画画', '120', '0', null, null, null, '5', '0');
INSERT INTO `model` VALUES ('15', '杨程程', 'upload/model/yangchengcheng.jpg', '6', '女', '0', '1', '2015-07-26 23:58', 'admin', null, '舞蹈、唱歌', '119', '0', null, null, null, '5', '0');
INSERT INTO `model` VALUES ('16', '郑俊熙', 'upload/model/zhengjunxi.jpg', '4', '男', '0', '1', '2015-07-26 23:58', 'admin', null, '舞蹈、表演', '105', '0', null, null, null, '5', '0');
INSERT INTO `model` VALUES ('17', '茅思远', 'upload/model/1maosiyuan.jpg', '8', '男', '0', '1', '2015-08-02 16:09', 'admin', null, null, '122', '1', null, null, '13634186643', '4', '1');
INSERT INTO `model` VALUES ('18', '程禹祎', 'upload/model/2chengyuyi.jpg', '8', '男', '0', '1', '2015-08-02 16:09', 'admin', null, null, '132', '1', null, null, '13600511290', '4', '4');
INSERT INTO `model` VALUES ('19', '王雅茜', 'upload/model/3wangyaqian.jpg', '5', '女', '0', '1', '2015-08-02 16:09', 'admin', null, null, '110', '0', null, null, '13185030308', '4', '0');
INSERT INTO `model` VALUES ('20', '高语汀', 'upload/model/4gaoyuting.jpg', '5', '女', '0', '1', '2015-08-02 16:09', 'admin', null, null, '110', '0', null, null, '13758101537', '4', '357');
INSERT INTO `model` VALUES ('21', '朱泰合', 'upload/model/5zhutaihe.jpg', '4', '男', '0', '1', '2015-08-02 16:09', 'admin', null, null, '82', '0', null, null, '15057966888', '4', '0');
INSERT INTO `model` VALUES ('22', '许缤王', 'upload/model/6xubinwang.jpg', '5', '男', '0', '1', '2015-08-02 16:09', 'admin', null, null, '105', '0', null, null, '13208031222', '4', '2');
INSERT INTO `model` VALUES ('23', '张璇', 'upload/model/7zhangxuan.jpg', '11', '女', '0', '1', '2015-08-02 16:09', 'admin', null, null, '173', '2', null, null, '15062251955', '4', '0');
INSERT INTO `model` VALUES ('24', '汪施琦', 'upload/model/8wangshiqi.jpg', '11', '女', '0', '1', '2015-08-02 16:09', 'admin', null, null, '153', '2', null, null, '13858189347', '4', '3');
INSERT INTO `model` VALUES ('25', '胡梦如', 'upload/model/9humengru.jpg', '10', '女', '0', '1', '2015-08-02 16:09', 'admin', null, null, '150', '2', null, null, '13777833731', '4', '1');
INSERT INTO `model` VALUES ('26', '丁锐涵', 'upload/model/dingruihan.jpg', '6', '男', '0', '1', '2015-08-02 16:09', 'admin', null, null, '122', '0', null, null, '13967168506', '4', '0');
INSERT INTO `model` VALUES ('27', '李宣颐', 'upload/model/lixuanyi.jpg', '6', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, '120', '0', null, null, '13615806687', '3', '9');
INSERT INTO `model` VALUES ('28', '何浩铭', 'upload/model/hehaomin.jpg', '6', '男', '0', '1', '2015-08-04 01:53', 'admin', null, null, '127', '0', null, null, '13758048715', '3', '2');
INSERT INTO `model` VALUES ('29', '胡庭慧', 'upload/model/hutinghui.jpg', '6', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, '115', '0', null, null, '13567659868', '3', '1');
INSERT INTO `model` VALUES ('30', '应梦娴', 'upload/model/yingmengxian.jpg', '4', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, '111', '0', null, null, '13967219870', '3', '2');
INSERT INTO `model` VALUES ('31', '刘晋瑜', 'upload/model/liujinyu.jpg', '5', '男', '0', '1', '2015-08-04 01:53', 'admin', null, null, '112', '0', null, null, '13575618140', '3', '7');
INSERT INTO `model` VALUES ('32', '柳立鸿', 'upload/model/liulihong.jpg', '5', '男', '0', '1', '2015-08-04 01:53', 'admin', null, null, '117', '0', null, null, '18657213108', '3', '1');
INSERT INTO `model` VALUES ('33', '贺筱婷', 'upload/model/hexiaoting.jpg', '6', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, '120', '0', null, null, '13575638668', '3', '201');
INSERT INTO `model` VALUES ('34', '韩静瑜', 'upload/model/hanjingyu.jpg', '6', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, '110', '0', null, null, '13666709985', '3', '1');
INSERT INTO `model` VALUES ('35', '蒋雨诺', 'upload/model/jiangyunuo.jpg', '5', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, '117', '0', null, null, '13750724896', '3', '1');
INSERT INTO `model` VALUES ('36', '邵榆然', 'upload/model/shaoyuran.jpg', '5', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, '110', '0', null, null, '13665808118', '3', '1');
INSERT INTO `model` VALUES ('37', '孔子玉', 'upload/model/kongziyu.jpg', '5', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, '114', '0', null, null, '13386691551', '3', '1');
INSERT INTO `model` VALUES ('38', '张译尹', 'upload/model/zhangyiyin.jpg', '7', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, '120', '1', null, null, '13506601842', '3', '3');
INSERT INTO `model` VALUES ('39', '严伟国', 'upload/model/yanweiguo.jpg', '9', '男', '0', '1', '2015-08-04 01:53', 'admin', null, null, '137', '1', null, null, '13059865968', '3', '0');
INSERT INTO `model` VALUES ('40', '潘科润', 'upload/model/pankerun.jpg', null, '男', '0', '1', '2015-08-04 01:53', 'admin', null, null, null, '1', null, null, '18005805880', '3', '1');
INSERT INTO `model` VALUES ('41', '祝嘉遥', 'upload/model/zhujiayao.jpg', '8', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, '140', '1', null, null, '18906805292', '3', '2');
INSERT INTO `model` VALUES ('42', '张舜皓', 'upload/model/zhangshunhao.jpg', '6', '男', '0', '1', '2015-08-04 01:53', 'admin', null, null, '117', '1', null, null, '13735021698', '3', '58');
INSERT INTO `model` VALUES ('43', '袁子宸', 'upload/model/yuanzichen.jpg', '6', '男', '0', '1', '2015-08-04 01:53', 'admin', null, null, '124', '1', null, null, '13505808957', '3', '0');
INSERT INTO `model` VALUES ('44', '颜弋植', 'upload/model/yanyizhi.jpg', '8', '男', '0', '1', '2015-08-04 01:53', 'admin', null, null, '128', '1', null, null, '13868231618', '3', '0');
INSERT INTO `model` VALUES ('45', '贺嘉楠', 'upload/model/hejainan.jpg', '9', '男', '0', '1', '2015-08-04 01:53', 'admin', null, null, '115', '1', null, null, '13665808118', '3', '0');
INSERT INTO `model` VALUES ('46', '王晨旭', 'upload/model/wangchenxu.jpg', '11', '男', '0', '1', '2015-08-04 01:53', 'admin', null, null, '148', '2', null, null, '13867222930', '3', '0');
INSERT INTO `model` VALUES ('47', '王淑涵', 'upload/model/wangshuhan.jpg', '9', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, '148', '2', null, null, '13758011898', '3', '0');
INSERT INTO `model` VALUES ('48', '邬昱晨', 'upload/model/wuyuchen.jpg', '11', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, '150', '2', null, null, '18072653016', '3', '0');
INSERT INTO `model` VALUES ('49', '俞姝灵', 'upload/model/yushuling.jpg', '11', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, '140', '2', null, null, '13396800038', '3', '0');
INSERT INTO `model` VALUES ('50', '孙贝与然', 'upload/model/sunbeiyuran.jpg', '10', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, '150', '2', null, null, '15858083500', '3', '0');
INSERT INTO `model` VALUES ('98', '李妍妮', 'upload/model/liyanni.jpg', '5', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, '118', '0', null, null, '13967087879', '7', '819');
INSERT INTO `model` VALUES ('99', '杨雨轩', 'upload/model/yangyuxuan.jpg', '4', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, '105', '0', null, null, '15925763890', '7', '64');
INSERT INTO `model` VALUES ('100', '梅家畅', 'upload/model/meijiachang.jpg', '4', '男', '0', '1', '2015-08-04 01:53', 'admin', null, null, '103', '0', null, null, '15990889392', '7', '32');
INSERT INTO `model` VALUES ('101', '尤今', 'upload/model/youjin.jpg', '7', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, '120', '1', null, null, '15257826469', '7', '641');
INSERT INTO `model` VALUES ('102', '韩卓君', 'upload/model/hanzhuojun.jpg', '4', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, null, '0', null, null, '15205784909', '7', '29');
INSERT INTO `model` VALUES ('103', '陈欣悦', 'upload/model/chenxinyue.jpg', '8', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, '130', '1', null, null, '15988019056', '7', '125');
INSERT INTO `model` VALUES ('104', '吕卓益', 'upload/model/lvzhuoyi.jpg', '4', '男', '0', '1', '2015-08-04 01:53', 'admin', null, null, '105', '0', null, null, '15057866667', '7', '45');
INSERT INTO `model` VALUES ('105', '吴佳颖', 'upload/model/wujiaying.jpg', '6', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, null, '0', null, null, '13884326666', '7', '16652');
INSERT INTO `model` VALUES ('106', '俞佳怡', 'upload/model/yujiayi.jpg', '6', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, '115', '0', null, null, '13735912323', '7', '10424');
INSERT INTO `model` VALUES ('107', '潘星雨', 'upload/model/panxingyu.jpg', '6', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, '100', '0', null, null, '13732557330', '7', '51');
INSERT INTO `model` VALUES ('108', '朱诺研', 'upload/model/zhunuoyan.jpg', '4', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, '118', '0', null, null, '13957053398', '7', '33');
INSERT INTO `model` VALUES ('109', '胡雅诺', 'upload/model/huyanuo.jpg', '5', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, '115', '0', null, null, '13059628879', '7', '54');
INSERT INTO `model` VALUES ('110', '马雅静', 'upload/model/mayajing.jpg', '5', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, null, '0', null, null, '18857810273', '7', '54');
INSERT INTO `model` VALUES ('111', '王艺洁', 'upload/model/wangyijie.jpg', '5', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, '108', '0', null, null, '13626783836', '7', '1152');
INSERT INTO `model` VALUES ('112', '田宸夕', 'upload/model/tianchenxi.jpg', '5', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, '118', '0', null, null, '13575398660', '7', '5');
INSERT INTO `model` VALUES ('113', '留梓睿', 'upload/model/liuzirui.jpg', '7', '男', '0', '1', '2015-08-04 01:53', 'admin', null, null, '110', '1', null, null, '15925771719', '7', '30');
INSERT INTO `model` VALUES ('114', '王丽鸥', 'upload/model/wangliou.jpg', '8', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, '183', '1', null, null, '15058681858', '7', '45');
INSERT INTO `model` VALUES ('115', '季思霏', 'upload/model/jisifei.jpg', '5', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, '118', '1', null, null, '17757808029', '7', '32');
INSERT INTO `model` VALUES ('116', '朱俊哲', 'upload/model/zhujunzhe.jpg', '9', '男', '0', '1', '2015-08-04 01:53', 'admin', null, null, '120', '1', null, null, '15024618558', '7', '30');
INSERT INTO `model` VALUES ('117', '徐瑞', 'upload/model/xurui.jpg', '9', '男', '0', '1', '2015-08-04 01:53', 'admin', null, null, '145', '1', null, null, '13884367262', '7', '8');
INSERT INTO `model` VALUES ('118', '纪晨阳', 'upload/model/jichenyang.jpg', '5', '男', '0', '1', '2015-08-04 01:53', 'admin', null, null, '111', '1', null, null, '13600600755', '7', '9209');
INSERT INTO `model` VALUES ('119', '留若涵', 'upload/model/liuruohan.jpg', '10', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, '135', '2', null, null, '15857834920', '7', '25');
INSERT INTO `model` VALUES ('120', '徐欣昀', 'upload/model/xuxinyun.jpg', '11', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, null, '2', null, null, '15990411981', '7', '102');
INSERT INTO `model` VALUES ('121', '罗莹谕', 'upload/model/luoyingyu.jpg', '10', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, null, '2', null, null, '15557821889', '7', '6');
INSERT INTO `model` VALUES ('122', '赵千浔', 'upload/model/zhaoqianxun.jpg', '6', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, null, '1', null, null, '13957099025', '7', '5');
INSERT INTO `model` VALUES ('123', '徐浩锐', 'upload/model/xuhaoriu.jpg', '6', '男', '0', '1', '2015-08-04 01:53', 'admin', null, null, null, '1', null, null, '13575376122', '7', '3');
INSERT INTO `model` VALUES ('124', '邱子轩', 'upload/model/qiuzixuan.jpg', '6', '男', '0', '1', '2015-08-04 01:53', 'admin', null, null, '115', '1', null, null, '18605780724', '7', '1');
INSERT INTO `model` VALUES ('125', '张家瑞', 'upload/model/zhangjiarui.jpg', '6', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, '123', '1', null, null, '13957087718', '7', '34');
INSERT INTO `model` VALUES ('126', '徐思颖', 'upload/model/xusiying.jpg', '5', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, '127', '1', null, null, '13884323389', '7', '36');
INSERT INTO `model` VALUES ('127', '林若翾', 'upload/model/linruoxuan.jpg', '7', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, '121', '1', null, null, '13059699972', '7', '2');
INSERT INTO `model` VALUES ('128', '林宸希', 'upload/model/linchenxi.jpg', '7', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, '126', '1', null, null, '13754266137', '7', '2');
INSERT INTO `model` VALUES ('129', '雷茜贻', 'upload/model/leixiyi.jpg', '7', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, null, '1', null, null, '18705888999', '7', '11');
INSERT INTO `model` VALUES ('130', '夏芷璇', 'upload/model/xiazhixuan.jpg', '8', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, '147', '1', null, null, '13905880377', '7', '1');
INSERT INTO `model` VALUES ('131', '邹宜芷', 'upload/model/zouyizhi.jpg', '8', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, null, '1', null, null, '13606691551', '7', '2');
INSERT INTO `model` VALUES ('132', '范欣雅', 'upload/model/fanxinya.jpg', '9', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, null, '1', null, null, '13967062775', '7', '1');
INSERT INTO `model` VALUES ('133', '麻亦馨', 'upload/model/mayixin.jpg', '10', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, null, '2', null, null, '13906784558', '7', '2');
INSERT INTO `model` VALUES ('134', '陈馨语', 'upload/model/chenxinyu.jpg', '10', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, null, '2', null, null, '13905888670', '7', '2');
INSERT INTO `model` VALUES ('135', '何梓煊', 'upload/model/hezixuan.jpg', '10', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, '140', '2', null, null, '13857098223', '7', '1');
INSERT INTO `model` VALUES ('136', '徐佳琪', 'upload/model/xujiaqi.jpg', '6', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, '119', '1', null, null, '18657861511', '7', '68');
INSERT INTO `model` VALUES ('137', '梁素仟', 'upload/model/liangsuqian.jpg', '5', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, null, '1', null, null, '13059600212', '7', '7');
INSERT INTO `model` VALUES ('138', '陈思颖', 'upload/model/chensiying.jpg', '7', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, null, '1', null, null, '15356380188', '7', '1');
INSERT INTO `model` VALUES ('139', '叶曦贝', 'upload/model/yexibei.jpg', '7', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, '126', '1', null, null, '13884328864', '7', '1');
INSERT INTO `model` VALUES ('140', '叶楚盈', 'upload/model/yechuying.jpg', '11', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, '145', '2', null, null, '18606782755', '7', '7');
INSERT INTO `model` VALUES ('141', '叶楚阳', 'upload/model/yechuyang.jpg', '7', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, '118', '1', null, null, '18606777972', '7', '6');
INSERT INTO `model` VALUES ('142', '叶嘉妮', 'upload/model/yejiani.jpg', '6', '女', '0', '1', '2015-08-04 01:53', 'admin', null, null, '120', '0', null, null, '13884358889', '7', '1');
INSERT INTO `model` VALUES ('143', '高轩', 'upload/model/gaoxuan.jpg', '10', '男', '0', '1', '2015-08-08', 'admin', null, '', null, '2', null, '', '15801831335', '2', '11234');
INSERT INTO `model` VALUES ('144', '徐熙京', 'upload/model/xuxijing.jpg', '6', '男', '0', '1', '2015-08-08', 'admin', null, '', '100', '0', null, '徐熙京', '13524458568', '2', '93');
INSERT INTO `model` VALUES ('145', '黄天乐', 'upload/model/huangtianle.jpg', '5', '男', '0', '1', '2015-08-08', 'admin', null, '', '107', '0', null, '黄天乐', '18650216188', '2', '10247');
INSERT INTO `model` VALUES ('146', '赵施玥珊', 'upload/model/zhaoshiyueshan.jpg', '5', '女', '0', '1', '2015-08-08', 'admin', null, '', '105', '0', null, '赵施玥姗', '13918319118', '2', '175');
INSERT INTO `model` VALUES ('147', '俞米琦', 'upload/model/yumiqi.jpg', '6', null, null, '1', '2015-08-08', 'admin', null, null, null, null, null, null, null, '2', '511');
INSERT INTO `model` VALUES ('148', '黄若童', 'upload/model/huangruotong.jpg', null, '女', '0', '1', '2015-08-09 17:53', 'admin', null, null, '113', null, null, null, null, '2', '2139');
INSERT INTO `model` VALUES ('149', '陈奕霖', 'upload/model/chenyilin.jpg', null, '男', '0', '1', '2015-08-09 17:53', 'admin', null, null, '109', null, null, null, null, '2', '162');
INSERT INTO `model` VALUES ('150', '松村和美', 'upload/model/songcunhemei.jpg', '5', '女', '0', '1', '2015-08-09 17:53', 'admin', null, null, '120', '0', null, null, null, '2', '1443');
INSERT INTO `model` VALUES ('151', '林冠宇', 'upload/model/linguanyu.jpg', '4', '男', '0', '1', '2015-08-09 17:53', 'admin', null, null, '97', '0', null, null, null, '2', '420');
INSERT INTO `model` VALUES ('152', '钱程', 'upload/model/qiancheng.jpg', null, '女', '0', '1', '2015-08-09 17:53', 'admin', null, null, '120', null, null, null, null, '2', '1148');
INSERT INTO `model` VALUES ('153', '黄传祺', 'upload/model/huangchuanqi.jpg', '8', '男', '0', '1', '2015-08-09 17:53', 'admin', null, null, '140', null, null, null, null, '2', '18');
INSERT INTO `model` VALUES ('154', '黄心如', 'upload/model/huangxinru.jpg', '11', '女', '0', '1', '2015-08-09 17:53', 'admin', null, null, '166', null, null, null, null, '2', '22');
INSERT INTO `model` VALUES ('155', '王梓涵', 'upload/model/wangwangzihan.jpg', null, '女', '0', '1', '2015-08-09 17:53', 'admin', null, null, null, null, null, null, null, '2', '1673');
INSERT INTO `model` VALUES ('156', '奥黛丽', 'upload/model/aodaili.jpg', null, '女', '0', '1', '2015-08-09 17:53', 'admin', null, null, null, null, null, null, null, '2', '736');
INSERT INTO `model` VALUES ('157', '虞昊霖', 'upload/temp/1439188593840.JPG', '6', '男', null, '1', null, null, null, '', null, '0', '15', '虞', '18657182801', '2', '901');
INSERT INTO `model` VALUES ('158', '张雨欣', 'upload/temp/1439187027554.JPG', '5', '女', '0', '1', '2015-08-10', 'admin', null, '', null, '0', '16', '张', '18657182801', '2', '31');
INSERT INTO `model` VALUES ('161', '张语轩', 'upload/temp/1439187277458.JPG', '8', '女', '0', '1', '2015-08-10', 'admin', null, '', null, '1', '17', '张', '18657182801', '2', '49');
INSERT INTO `model` VALUES ('162', 'Emma Harbers', 'upload/temp/1439187449072.JPG', '5', '女', '0', '1', '2015-08-10', 'admin', null, '', null, '0', '18', '在', '18657182801', '2', '579');
INSERT INTO `model` VALUES ('163', '李心冉', 'upload/temp/1439187650065.jpg', '6', '女', '0', '1', '2015-08-10', 'admin', null, '', null, '0', '19', '李', '18501626439', '2', '501');
INSERT INTO `model` VALUES ('164', '孙雨苏', 'upload/temp/1439188490315.jpg', '7', '女', '0', '1', '2015-08-10', 'admin', null, '', null, '1', '20', '孙', '18657182801', '2', '114');
INSERT INTO `model` VALUES ('165', '陈思睿 ', 'upload/temp/1439199560109.jpg', '11', '女', '0', '1', '2015-08-10', 'admin', null, '', null, '2', '111', 'admin', '13000000000', '2', '605');
INSERT INTO `model` VALUES ('166', '谢馨怡', 'upload/temp/1439286200457.jpg', '8', '女', '0', '1', '2015-08-11', 'admin', null, '', null, '1', '21', '谢', '13391497185', '2', '12');
INSERT INTO `model` VALUES ('167', '张源', 'upload/temp/1439286324206.jpg', '5', '男', '0', '1', '2015-08-11', 'admin', null, '', null, '0', '22', '张', '13816944772', '2', '6');
INSERT INTO `model` VALUES ('168', '龚诗瑶', 'upload/temp/1439286371908.jpg', '6', '女', '0', '1', '2015-08-11', 'admin', null, '', null, '0', '23', '龚', '18964564195', '2', '251');
INSERT INTO `model` VALUES ('169', '王思佳', 'upload/temp/1439286470081.jpg', '10', '女', '0', '1', '2015-08-11', 'admin', null, '', null, '2', '24', '王', '13564575119', '2', '1236');
INSERT INTO `model` VALUES ('170', '徐宇瞳', 'upload/temp/1439286634395.jpg', '7', '女', '0', '1', '2015-08-11', 'admin', null, '', null, '1', '25', '徐', '15214329708', '2', '1180');
INSERT INTO `model` VALUES ('171', '丛佳辉', 'upload/temp/1439287032183.jpg', '8', '男', '0', '1', '2015-08-11', 'admin', null, '', null, '1', '1', '丛', '13455208845', '8', '1');
INSERT INTO `model` VALUES ('172', '董芯妤', 'upload/temp/1439287114492.JPG', '7', '女', '0', '1', '2015-08-11', 'admin', null, '', null, '1', '2', '董', '13583258110', '8', null);
INSERT INTO `model` VALUES ('173', '刘曼琪', 'upload/temp/1439287176578.JPG', '9', '女', '0', '1', '2015-08-11', 'admin', null, '', null, '1', '3', '刘', '13616397815', '8', null);
INSERT INTO `model` VALUES ('174', '陈雨林', 'upload/temp/1439287216879.JPG', '8', '女', '0', '1', '2015-08-11', 'admin', null, '', null, '1', '4', '陈', '13305325201', '8', '1');
INSERT INTO `model` VALUES ('176', '李娅菲', 'upload/temp/1439287958427.JPG', '6', '女', null, '1', null, null, null, '', null, '0', '5', '李', '15966896662', '8', null);
INSERT INTO `model` VALUES ('177', '于德淏', 'upload/temp/1439288261152.JPG', '6', '男', null, '1', null, null, null, '', null, '0', '6', '于', '13255321568', '8', null);
INSERT INTO `model` VALUES ('178', '叶怡瑞', 'upload/temp/1439287662146.jpg', '6', '女', '0', '1', '2015-08-11', 'admin', null, '', null, '0', '7', '叶', '13589216241', '8', null);
INSERT INTO `model` VALUES ('179', '宋梓萌', 'upload/temp/1439287906764.JPG', '6', '女', '0', '1', '2015-08-11', 'admin', null, '', null, '0', '8', '宋', '13864286511', '8', null);
INSERT INTO `model` VALUES ('180', '罗捷', 'upload/temp/1439359599557.jpg', '7', '男', null, '1', null, null, null, '', null, '1', '26', '罗', '13611801388', '2', '392');
INSERT INTO `model` VALUES ('181', '孙雅瞳', 'upload/temp/1439359794708.jpg', '4', '女', '0', '1', '2015-08-12', 'admin', null, '', null, '0', '27', '孙', '13641996250', '2', '718');
INSERT INTO `model` VALUES ('182', '叶鹏飞', 'upload/temp/1439373218865.jpg', '6', '男', '0', '1', '2015-08-12', 'admin', null, '', null, '0', '28', '叶', '15857483302', '2', '8');
INSERT INTO `model` VALUES ('183', '林妙妙', 'upload/temp/1439373899329.jpg', '5', '女', '0', '1', '2015-08-12', 'admin', null, '', null, '0', '17', '林', '18658189881', '5', '2');
INSERT INTO `model` VALUES ('184', '欧阳瑾瑜', 'upload/temp/1439373972867.jpg', '5', '女', '0', '1', '2015-08-12', 'admin', null, '', null, '0', '18', '欧阳', '18658189881', '5', null);
INSERT INTO `model` VALUES ('185', '肖欣诺', 'upload/temp/1439374902079.jpg', '5', '女', '0', '1', '2015-08-12', 'admin', null, '', null, '0', '19', '肖', '18658189881', '5', null);
INSERT INTO `model` VALUES ('186', '王雅煊', 'upload/temp/1439374981423.jpg', '5', '女', '0', '1', '2015-08-12', 'admin', null, '', null, '0', '20', '王', '18658189881', '5', '54');
INSERT INTO `model` VALUES ('187', '赵子萱', 'upload/temp/1439375152746.jpg', '5', '女', '0', '1', '2015-08-12', 'admin', null, '', null, '0', '21', '赵', '18658189881', '5', null);
INSERT INTO `model` VALUES ('188', '于越', 'upload/temp/1439449172626.jpg', '6', '男', null, '1', null, null, null, '', null, '0', '29', '于', '13262281008', '2', '53');
INSERT INTO `model` VALUES ('189', '任桐潼', 'upload/temp/1439380524932.jpg', '5', '女', null, '1', null, null, null, '', null, '0', '22', '任', '18658189881', '5', null);
INSERT INTO `model` VALUES ('190', '林子越', 'upload/temp/1439428495024.jpg', '5', '女', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '23', '林', '18658189881', '5', null);
INSERT INTO `model` VALUES ('191', '叶乔伊', 'upload/temp/1439428661312.jpg', '5', '女', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '24', '叶', '18658189881', '5', null);
INSERT INTO `model` VALUES ('192', '应禹哲', 'upload/temp/1439429174885.jpg', '5', '男', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '25', '应', '18658189881', '5', null);
INSERT INTO `model` VALUES ('193', '陈冠君', 'upload/temp/1439430251296.jpg', '5', '女', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '26', '陈', '18658189881', '5', null);
INSERT INTO `model` VALUES ('194', '朱锌诺', 'upload/temp/1439430322534.jpg', '5', '女', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '27', '朱', '18658189881', '5', '3');
INSERT INTO `model` VALUES ('195', '陈思妤', 'upload/temp/1439430409079.jpg', '5', '女', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '28', '陈', '18658189881', '5', null);
INSERT INTO `model` VALUES ('196', '许芷娴', 'upload/temp/1439431190003.jpg', '5', '女', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '29', '许', '18658189881', '5', null);
INSERT INTO `model` VALUES ('197', '王一涵', 'upload/temp/1439431281570.jpg', '5', '女', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '30', '王', '18658189881', '5', '1');
INSERT INTO `model` VALUES ('198', '董晶晶', 'upload/temp/1439431328353.jpg', '5', '女', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '31', '董', '18658189881', '5', null);
INSERT INTO `model` VALUES ('200', '林禹岑', 'upload/temp/1439431647315.jpg', '5', '女', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '32', '林', '18658189881', '5', null);
INSERT INTO `model` VALUES ('201', '周思成', 'upload/temp/1439432624447.jpg', '5', '女', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '33', '周', '18658189881', '5', null);
INSERT INTO `model` VALUES ('202', '季子璇', 'upload/temp/1439432695209.jpg', '5', '女', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '34', '季', '18658189881', '5', null);
INSERT INTO `model` VALUES ('203', '黄玉婷', 'upload/temp/1439433147313.jpg', '5', '女', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '35', '黄', '18658189881', '5', null);
INSERT INTO `model` VALUES ('204', '郑雅慧', 'upload/temp/1439433188576.jpg', '5', '女', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '36', '郑', '18658189881', '5', null);
INSERT INTO `model` VALUES ('205', '林子涵', 'upload/temp/1439434875018.jpg', '5', '女', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '37', '林', '18658189881', '5', '3');
INSERT INTO `model` VALUES ('206', '赖沁馫', 'upload/temp/1439434958746.jpg', '5', '女', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '38', '赖', '18658189881', '5', null);
INSERT INTO `model` VALUES ('207', '何佳蕊', 'upload/temp/1439435745489.jpg', '5', '女', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '39', '何', '18658189881', '5', null);
INSERT INTO `model` VALUES ('208', '陈幽颖', 'upload/temp/1439435776925.jpg', '5', '女', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '40', '陈', '18658189881', '5', null);
INSERT INTO `model` VALUES ('209', '饶子颖', 'upload/temp/1439436419080.jpg', '5', '女', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '41', '饶', '18658189881', '5', null);
INSERT INTO `model` VALUES ('210', '董昕妤', 'upload/temp/1439436527216.jpg', '5', '女', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '42', '董', '18658189881', '5', null);
INSERT INTO `model` VALUES ('211', '安子萱', 'upload/temp/1439438073965.jpg', '5', '女', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '43', '安', '18658189881', '5', null);
INSERT INTO `model` VALUES ('212', '徐婧琪', 'upload/temp/1439438129639.jpg', '5', '女', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '44', '徐', '18658189881', '5', null);
INSERT INTO `model` VALUES ('213', '项方豪', 'upload/temp/1439446057901.jpg', '5', '男', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '45', '项', '18658189881', '5', null);
INSERT INTO `model` VALUES ('214', '王俊鑫', 'upload/temp/1439446254878.jpg', '5', '男', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '46', '王', '18658189881', '5', null);
INSERT INTO `model` VALUES ('215', '杨家瑞', 'upload/temp/1439446774566.jpg', '5', '男', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '47', '杨', '18658189881', '5', null);
INSERT INTO `model` VALUES ('216', '戴熙桢', 'upload/temp/1439446817712.jpg', '5', '女', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '48', '戴', '18658189881', '5', null);
INSERT INTO `model` VALUES ('217', '蔡依楠', 'upload/temp/1439446867636.jpg', '5', '女', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '49', '蔡', '18658189881', '5', null);
INSERT INTO `model` VALUES ('218', '陈梓萱', 'upload/temp/1439448298849.jpg', '5', '女', null, '1', null, null, null, '', null, '0', '50', '陈', '18658189881', '5', null);
INSERT INTO `model` VALUES ('219', '陈可', 'upload/temp/1439448485704.jpg', '5', '女', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '51', '陈', '18658189881', '5', '1');
INSERT INTO `model` VALUES ('220', '肖云深', 'upload/temp/1439449151712.jpg', '5', '男', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '52', '肖', '18658189881', '5', null);
INSERT INTO `model` VALUES ('221', '张力也', 'upload/temp/1439449186746.jpg', '5', '男', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '53', '张', '18658189881', '5', null);
INSERT INTO `model` VALUES ('222', '潘可馨', 'upload/temp/1439449216172.jpg', '5', '女', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '54', '潘', '18658189881', '5', '1');
INSERT INTO `model` VALUES ('223', '吕益好', 'upload/temp/1439449250237.jpg', '5', '女', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '55', '吕', '18658189881', '5', null);
INSERT INTO `model` VALUES ('224', '张惠涵', 'upload/temp/1439449629817.jpg', '7', '女', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '1', '张', '13587190561', '7', '1');
INSERT INTO `model` VALUES ('227', '李晨萱', 'upload/temp/1439451015717.jpg', '5', '女', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '56', '李', '18658189881', '5', null);
INSERT INTO `model` VALUES ('228', '陈晗', 'upload/temp/1439451285752.jpg', '5', '女', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '57', '陈', '18658189881', '5', null);
INSERT INTO `model` VALUES ('229', '谢琳烁', 'upload/temp/1439451321748.jpg', '5', '女', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '58', '谢', '18658189881', '5', null);
INSERT INTO `model` VALUES ('230', '郑滢鑫', 'upload/temp/1439451487394.jpg', '5', '女', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '59', '郑', '18658189881', '5', null);
INSERT INTO `model` VALUES ('231', '温证图', 'upload/temp/1439451986267.jpg', '5', '男', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '60', '温', '18658189881', '5', null);
INSERT INTO `model` VALUES ('232', '吕楠楠', 'upload/temp/1439452415301.jpg', '5', '女', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '61', '吕', '18658189881', '5', '1');
INSERT INTO `model` VALUES ('233', '陈诗瑶', 'upload/temp/1439452534686.jpg', '5', '女', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '62', '陈', '18658189881', '5', null);
INSERT INTO `model` VALUES ('234', '罗逸', 'upload/temp/1439453438241.jpg', '5', '女', null, '1', null, null, null, '', null, '0', '71', '罗', '18658189881', '5', null);
INSERT INTO `model` VALUES ('235', '杨晨曦', 'upload/temp/1439453485364.jpg', '5', '女', null, '1', null, null, null, '', null, '0', '63', '杨', '18658189881', '5', '1');
INSERT INTO `model` VALUES ('236', '繆诗静', 'upload/temp/1439453727542.jpg', '5', '女', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '64', '缪', '18658189881', '5', null);
INSERT INTO `model` VALUES ('237', '蔡维浩', 'upload/temp/1439455296923.jpg', '5', '男', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '65', '蔡', '18658189881', '5', null);
INSERT INTO `model` VALUES ('238', '赵舒雅', 'upload/temp/1439455326605.jpg', '5', '女', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '66', '赵', '18658189881', '5', '1');
INSERT INTO `model` VALUES ('239', '王梓涵', 'upload/temp/1439455352915.jpg', '5', '女', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '67', '王', '18658189881', '5', null);
INSERT INTO `model` VALUES ('240', '薛家奇', 'upload/temp/1439456263353.jpg', '5', '女', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '68', '薛', '18658189881', '5', null);
INSERT INTO `model` VALUES ('241', '林紫萱', 'upload/temp/1439456509677.jpg', '5', '女', '0', '1', '2015-08-13', 'admin', null, '', null, '0', '69', '林', '18658189881', '5', null);
INSERT INTO `model` VALUES ('242', '金格伊', 'upload/temp/1439456683454.jpg', '5', '女', null, '1', null, null, null, '', null, '0', '70', '金', '18658189881', '5', '1');
INSERT INTO `model` VALUES ('244', '徐晨纾', 'upload/temp/1439518515373.jpg', '4', '女', '0', '1', '2015-08-14', 'admin', null, '', null, '0', '2', '徐', '13666566797', '7', null);
INSERT INTO `model` VALUES ('245', '王罗曼', 'upload/model/wangluoman.jpg', '4', '女', '0', '1', '2015-08-14', 'admin', null, '', null, '0', '3', '王', '13759400866', '7', null);
INSERT INTO `model` VALUES ('246', '王亭亭', 'upload/model/wangtingting.jpg', '6', '女', '0', '1', '2015-08-14', 'admin', '', '', '119', '0', '3', '王', '13759400866', '3', null);
INSERT INTO `model` VALUES ('247', '黄千容', 'upload/model/huangqianrong.jpg', '5', '女', '0', '1', '2015-08-14', 'admin', null, null, '115', '0', '1', null, '13918258841', '3', '0');
INSERT INTO `model` VALUES ('248', '张亦航', 'upload/model/zhangyihang.jpg', '4', '男', '0', '1', '2015-08-14', 'admin', null, null, null, null, '1', null, null, '3', '0');
INSERT INTO `model` VALUES ('249', '胡云茜', 'upload/model/huyunqian.jpg', '10', '女', '0', '1', '2015-08-14', 'admin', null, null, null, null, '1', null, null, '3', '0');
INSERT INTO `model` VALUES ('250', '朱颖瑄', 'upload/model/zhuyingxuan.jpg', '10', '女', '0', '1', '2015-08-14', 'admin', null, null, null, null, '1', null, null, '3', '0');
INSERT INTO `model` VALUES ('251', '黄千容', 'upload/temp/1439535643395.jpg', '5', '女', '0', '1', '2015-08-14', 'admin', null, '', null, '0', '30', '黄', '13918258841', '2', '15');
INSERT INTO `model` VALUES ('252', '胡云茜', 'upload/temp/1439535836791.jpg', '10', '女', null, '1', null, null, null, '', null, '2', '31', '胡', '13818912588', '2', '16');
INSERT INTO `model` VALUES ('253', '王亭婷', 'upload/temp/1439536288187.jpg', '6', '女', null, '1', null, null, null, '', null, '0', '32', '王', '18721115506', '2', '215');
INSERT INTO `model` VALUES ('254', '张亦航', 'upload/temp/1439536720301.jpg', '4', '男', '0', '1', '2015-08-14', 'admin', null, '', null, '0', '33', '张', '15201855608', '2', '10');
INSERT INTO `model` VALUES ('256', '何苗鸿', 'upload/temp/1439775381884.jpg', '8', '男', null, '1', null, null, null, '', null, '1', '34', '何', '18658189881', '2', '108');
INSERT INTO `model` VALUES ('257', '张一驰', 'upload/temp/1439775453963.jpg', '6', '男', '0', '1', '2015-08-17', 'admin', null, '', null, '0', '35', '张', '18658189881', '2', '9');
INSERT INTO `model` VALUES ('258', '赵懿', 'upload/temp/1439775535120.jpg', '5', '女', '0', '1', '2015-08-17', 'admin', null, '', null, '0', '36', '赵', '18658189881', '2', '4');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `pubDate` varchar(200) DEFAULT NULL,
  `matchId` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `addUser` varchar(200) DEFAULT NULL,
  `addDate` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '闪耀之城2015 IMI 国际超级童模大赛获奖选手高级定制', 'upload/temp/news_1439045548636.png', 'http://mp.weixin.qq.com/s?__biz=MzA4Njg2Nzc2Mw==&mid=207547635&idx=1&sn=98b671d962afcddaa4c9fcab12600e87&scene=0#rd', '2015-08-08', '1', '1', 'admin', '2015-08-08 22:52:32');
INSERT INTO `news` VALUES ('2', '发生的发生的', 'upload/temp/news_1452439040919.jpg', 'http://localhost:8080/admin/queryInfor.do?id=1&type=0&curPage=1', '2016-01-08', '1', '0', 'admin', '2016-01-10 23:17:47');

-- ----------------------------
-- Table structure for `rolerelations`
-- ----------------------------
DROP TABLE IF EXISTS `rolerelations`;
CREATE TABLE `rolerelations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rolerelations
-- ----------------------------
INSERT INTO `rolerelations` VALUES ('1', '1', '1');

-- ----------------------------
-- Table structure for `roles`
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', '管理员');
INSERT INTO `roles` VALUES ('2', '用户');

-- ----------------------------
-- Table structure for `sign`
-- ----------------------------
DROP TABLE IF EXISTS `sign`;
CREATE TABLE `sign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `signDate` varchar(200) DEFAULT NULL,
  `cmId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sign
-- ----------------------------
INSERT INTO `sign` VALUES ('3', '3', '陈建华', '13588484199', '2015-08-18', '22');
INSERT INTO `sign` VALUES ('4', '3', '苗芳', '13567686261', '2015-08-19', '21');
INSERT INTO `sign` VALUES ('5', '3', '陈建华', '13588484199', '2015-08-19', '22');
INSERT INTO `sign` VALUES ('6', '4', '陈建华', '13588484199', '2015-08-19', '22');
INSERT INTO `sign` VALUES ('7', '4', '苗芳', '13567686261', '2015-08-19', '21');

-- ----------------------------
-- Table structure for `sytemset`
-- ----------------------------
DROP TABLE IF EXISTS `sytemset`;
CREATE TABLE `sytemset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyValue` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sytemset
-- ----------------------------
INSERT INTO `sytemset` VALUES ('1', 'weixinmsg', '微信自动回复消息', '<p>赛后欧洲访问交流团</p><p>出访时间：2016年1月28日-2月5日</p><p>出访国家：荷兰、比利时、法国</p><p>出访人员对象：4-12岁</p><p>费用说明：</p><p>&nbsp;使者出访团费：19800元人民币；</p><p>&nbsp;陪同家长费用：18000元人民币；</p><p>&nbsp;以上费用不包含机票费、签证费和保险费用。</p><p>&nbsp;备注：参考价往返机票5800元左右，签证费1200元，保险费320元（按照实际费用结算）</p><p>&nbsp;特别说明：参加欧洲文化交流出访的家庭需在2015年10月底递交给主办单位负责人，提交相应的出国材料（护照等）。以方便出访前做签证的准备工作。</p><p>联系人：</p><p>&nbsp;郭老师：13819166156</p><p>&nbsp;俞老师：15957071468</p><p><br/></p>');
INSERT INTO `sytemset` VALUES ('2', 'allianceinfo', '联盟章程', '<p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"color: rgb(51, 51, 51); font-family: 宋体;\">一、联盟简介</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">国际闪耀之城旅游文化艺术联盟成立于2015年，本联盟创会以弘扬中华民族文化艺术为宗旨，致力于组织国际文化艺术交流、合作、传播于一体，推动多元文化发展的国际性联合体。通过“闪耀之城”品牌赛事先后与美国、德国、意大利、法国、荷兰、加拿大、韩国、新西兰、香港、台湾、北京、上海、青岛、浙江等地搭建艺术平台，与当地政府及文化管理部门，杰人代表，文化艺术界知名人士真诚合作，举办少年儿童文化艺术大赛及文化活动。&nbsp;</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">二、业务范围</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">国际闪耀之城旅游文化艺术联盟是由从事文化艺术的优秀企业、培训机构、旅游机构、媒体平台以及各类的留学的海归人才共同组合成的国际性精英团体。业务范围广泛，包含了艺术赛事、艺术培训、美术赛事、国际文化艺术交流、国外研学、游学等各个领域；广泛联合海内外艺术工作者和专家，发掘中华优秀传统艺术，开展闪耀之城品牌赛事等；定期组织各种形式的艺术竞赛和评选优秀作品活动，举办联盟盟员作品的展演等活动，推介优秀人才；积极组织艺术界人士开展国际艺术交流活动，增进中外艺术界的友谊和合作；建设维护联盟网站，宣传联盟单位，为盟员提供旅游、文化、艺术信息服务，搭建盟员间沟通信息，交流经验，不断地促进联盟的发展。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">三、组织机构</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">全体联盟盟员大表大会</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">理事会</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">常务理事会</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">分支机构</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">专家顾问团</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">会长</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">副会长</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">秘书长</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">理事会及常务理事组成人员名单：（按姓氏笔划排名）</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">四、联盟章程</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><strong style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">第一章总则</span></strong></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">第一条本会名称为：国际闪耀之城旅游文化艺术联盟，英文名称：&nbsp;International Shining City of Tourism and Cultural Aat Union缩写ICTCAU。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">第二条国际闪耀之城旅游文化艺术联盟是由从事文化艺术的优秀企业、培训机构、旅游机构、国内外媒体平台以及各类留学<a style=\"padding: 0px; margin: 0px; color: rgb(17, 17, 17);\" name=\"_GoBack\"></a>海归人才共同组合成的国际性精英团体。&nbsp;</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">第三条国际闪耀之城旅游文化艺术联盟遵守宪法、法律、法规及各项国家政策，遵守社联盟道德风尚，以马列主义毛泽东思想、邓小平理论和“三个代表”重要思想为指导，紧密团结在以习近平同志为首的党中央周围，通过开展各种形式的艺术赛事活动，努力提高我国的艺术教育、艺术欣赏水平，推动我国社联盟主义文艺事业的发展，进一步繁荣有中国特色的社联盟主义文艺。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><strong style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">第二章业务范围</span></strong></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">第四条广泛联合海内外艺术工作者和专家、学者、研究人员，同心同德，发掘中华优秀传统艺术，开展艺术品牌赛事和国际艺术交流，不断提高艺术队伍国际视野。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">第五条坚持旅游、文化、艺术的正确方向，树立品牌意识，实施精品战略；提倡形式多样化艺术交流，推动多种艺术风格的发展，不断提高艺术工作者的思想水平和艺术水平，多出优秀作品，贴近实际，贴近生活，贴近群众。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">第六条组织艺术界的艺术家和专家、学者、研究人员进行各种学习和讨论，召开各类艺术沙龙、座谈会等；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">第七条定期组织各种形式的艺术竞赛和评选优秀作品活动，举办联盟盟员作品的展演等活动，推介优秀人才，积极服务于联盟盟员。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">第八条积极组织艺术界人士开展国际艺术交流活动，增进中外艺术界的友谊和合作；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">第九条&nbsp;&nbsp;通过大型公益品牌赛事活动，积极组织盟员共同组织策划工作，开展创作头脑风暴等活动，发现和培养艺术创作、评论的新生力量，关心青年艺术家、企业家的成长，发展和壮大盟员的艺术队伍。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">第十条建设维护联盟网站，宣传联盟盟员，为盟员提供旅游、文化、艺术信息服务，搭建盟员间沟通信息，交流经验，不断地促进联盟的发展。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><strong style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">第三章联盟单位</span></strong></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">第十一条符合下列条件之一，可申请成为国际闪耀之城旅游文化艺术联盟盟员单位：</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">（一）在业界有一定知名度的海内外艺术工作者和专家、学者、教育人员；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">（二）在业界有一定优势、品牌、口碑良好的优秀企业；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">（三）对旅游、文化、艺术工作爱好，有共同目标的留学海归精英；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">（四）经本联盟审批，具有创作实力或艺术水平的人才；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">（五）本协联盟举办品牌赛事的参与企业、工作者。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">第十二条&nbsp;&nbsp;盟员加入联盟程序：</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">（一）提交加入联盟申请书；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">（二）经理事会讨论通过；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">（三）由理事会或理事会授权的机构颁发联盟盟员证。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">第十三条联盟盟员的权利：</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">（一）享有选举权、被选举权和表决权；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">（二）参加本联盟组织的各项活动，享有本联盟提供的服务、支持和奖励；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">（三）有权对本联盟的工作提出批评、建议和监督；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">（四）优先、优惠获得本联盟共享的第一时间信息；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">（五）有自愿退出协联盟的权利；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">第十四条联盟盟员可享受的服务和优惠：</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">（一）联盟盟员可踊跃向本联盟投稿，择优刊登在官方网站上。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">（二）颁发国际闪耀之城旅游文化艺术联盟盟员证等;&nbsp;</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">（三）为联盟盟员出国游学、访问、旅游等提供各种咨询和服务；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">（四）免费参加本联盟举办的参加联谊会、沙龙会、交流活动；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">第十五条联盟盟员的义务：</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">（一）遵守本联盟章程，履行本联盟决议，维护本联盟的声誉；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">（二）积极参加本联盟组织的各项活动，接受和完成本联盟委托的任务；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">（三）向本联盟提供稿件和资料，并积极主动与本联盟沟通；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">（四）按本联盟的加入联盟条件，推荐新联盟盟员；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">（五）每年按时交纳盟费。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">第十六条联盟盟员退出联盟应书面通知本联盟，并交回联盟盟员证。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">第十七条联盟盟员如一年不交纳会费，视为自动退出联盟。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">第十八条联盟盟员如果有严重违反本章程的行为，经主席团或理事会表决通过，予以除名。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><strong style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">第四章组织机构和负责人的产生、罢免</span></strong></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">第十九条国际闪耀之城旅游文化艺术联盟的最高权利机构是全体盟员代表大会，每年召开一次，必要时可提前或延期举行，全体盟员代表大会的职权是：</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">&nbsp;</span><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">（一）审议、修改和通过本联盟章程；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">&nbsp;</span><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">（二）讨论并决定本联盟的方针、任务和重大事项；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">&nbsp;</span><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">（三）审议、通过联盟工作报告；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">第二十条理事会是盟员代表大会的执行机构，领导联盟开展日常工作，对盟员代表大会负责。理事任期与盟员代表大会相同。因工作变动或其他原因需要更换理事代表时，由单位提出书面申请，经理事会审批。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">第二十一条主席、常务副主席、副主席、秘书长必须具备下列条件：</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">（一）热心艺术事业，从事艺术创作、研究、教育、评论、组织活动等方面的工作，取得显著成就或在海内外具有影响；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">（二）关注中国艺术的发展命运，对中国的艺术在未来全球化大潮中的发展前景有独到见解，并热心文艺活动，具有卓越组织才能者；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">（三）未受过剥夺政治权利的刑事处罚，并且身体健康，能坚持正常工作；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">（四）具有完全民事行为能力；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">第二十二条理事会须有2/3以上理事出席方能召开，其决议须经到会理事2/3以上表决通过方能生效。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">第二十三条常务副主席行使下列职权：</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">（一）召集和主持联盟理事会会议；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">（二）检查联盟盟员代表大会会议、决议的落实情况；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">（三）代表本联盟签署有关重要文件；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">第二十四条秘书长行使下列职权：</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">（一）主持办事机构秘书处的日常工作，组织实施年度工作计划；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">（二）协调各分支机构开展工作；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">（三）提名常务副秘书长或副秘书长及各分支机构主要负责人，交理事会或常务理事会决定；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">（四）决定办事机构专职工作人员的聘用；</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">（五）处理其他日常事务。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">第二十五条联盟可根据需要，可设立荣誉、名誉职务及聘请顾问。荣誉、名誉名衔和顾问人选，由常务理事会决定和推选，提请理事会确认。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><strong style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">第五章终止程序及清算</span></strong></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">第二十六条本联盟完成宗旨或自行解散或由于分立、合并等原因需要注销的，由常务理事会提出终止协议。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">第二十七条本联盟终止协议经盟员代表大会表决通过后，须报业务主管部门审查同意。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">第二十八条本联盟终止前，须在业务主管部门及有关机关指导下成立清算组织，处理债权债务及其他善后事宜。清算期间，不开展清算以外的活动。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">第二十九条本联盟经社团登记管理机关办理注销登记手续后即为终止。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">第三十条本联盟终止后的剩余财产，在业务主管单位和社团登记管理机关的监督下，按照国家有关规定，用于发展与本联盟宗旨相关的事业。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><strong style=\"padding: 0px; margin: 0px;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">第六章附则</span></strong></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">第三十一条本章程由2015年4月5日全体联盟盟员代表大会表决通过。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">第三十二条本章程解释权属国际闪耀之城旅游文化艺术联盟。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 10px; color: rgb(17, 17, 17); font-family: 微软雅黑, Arial, sans-serif; font-size: 14px; line-height: 22px; white-space: normal; background: white;\"><span style=\"padding: 0px; margin: 0px; font-family: 宋体; color: rgb(51, 51, 51);\">第三十三条本章程自通过之日起生效。</span></p><p><br/></p>');
INSERT INTO `sytemset` VALUES ('3', 'allianceabout', '联盟简介', '<p><span class=\"glyphicon glyphicon-home\" style=\"padding: 0px; margin: 0px 10px 0px 0px; position: relative; top: 1px; display: inline-block; font-family: &#39;Glyphicons Halflings&#39;; line-height: 1; -webkit-font-smoothing: antialiased;\"></span>联盟成立于2015年，是由文化界、艺术界、旅游界、学术界知名人士倡议下，由相关知名企业、旅游机构、专业媒体等组成。</p><p><span class=\"glyphicon glyphicon-flag\" style=\"padding: 0px; margin: 0px 10px 0px 0px; position: relative; top: 1px; display: inline-block; font-family: &#39;Glyphicons Halflings&#39;; line-height: 1; -webkit-font-smoothing: antialiased;\"></span><strong>联盟宗旨</strong><br style=\"padding: 0px; margin: 0px;\"/>弘扬中国旅游、文化、艺术为宗旨，推动城市与城市之间的脉动， 并致力于组织国际文化艺术交流与合作，推动多元文化发展。</p><p><span class=\"glyphicon glyphicon-flag\" style=\"padding: 0px; margin: 0px 10px 0px 0px; position: relative; top: 1px; display: inline-block; font-family: &#39;Glyphicons Halflings&#39;; line-height: 1; -webkit-font-smoothing: antialiased;\"></span><strong>运作模式</strong><br style=\"padding: 0px; margin: 0px;\"/>通过“闪耀之城”品牌赛事先后与美国、荷兰、法国、德国、意大利、加拿大、香港，新西兰、韩国，台湾，北京、上海，浙江、青岛等地搭建艺术平台，与当地政府及文化管理部门，杰人代表，文化艺术界知名人士真诚合作，举办少年儿童文化艺术大赛及文化活动。</p><p><br/></p>');

-- ----------------------------
-- Table structure for `userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(200) DEFAULT NULL,
  `passwd` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `sex` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', 'admin', 'admin', 'admin', 'admin@admin.com', '13800352222', '男');

-- ----------------------------
-- Table structure for `votes`
-- ----------------------------
DROP TABLE IF EXISTS `votes`;
CREATE TABLE `votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(200) DEFAULT NULL,
  `userType` varchar(200) DEFAULT NULL,
  `childId` int(11) DEFAULT NULL,
  `matchId` int(11) DEFAULT NULL,
  `voteDate` varchar(30) DEFAULT NULL,
  `voteTime` varchar(50) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of votes
-- ----------------------------
INSERT INTO `votes` VALUES ('16', 'admin', 'weixin', '2', '1', null, '2015-07-27', null);
INSERT INTO `votes` VALUES ('17', 'admin', 'weixin', '1', '1', null, '2015-07-27', null);
INSERT INTO `votes` VALUES ('18', 'oM939t7nJIT89caPfuq3tpCyiaKs', 'weixin', '1', '1', null, '2015-07-27', null);
INSERT INTO `votes` VALUES ('19', 'oM939t9jYlg0EBXqXaXquMsbrxGA', 'weixin', '2', '1', null, '2015-07-27', null);
INSERT INTO `votes` VALUES ('20', 'oM939t_MEP1BGJ1zoE0zDpwwEZZU', 'weixin', '3', '1', null, '2015-07-28', null);

-- ----------------------------
-- Table structure for `weixinuser`
-- ----------------------------
DROP TABLE IF EXISTS `weixinuser`;
CREATE TABLE `weixinuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) DEFAULT NULL COMMENT '昵称',
  `openid` varchar(30) DEFAULT NULL,
  `lastLogin` varchar(30) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `language` varchar(10) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `headimgurl` varchar(300) DEFAULT NULL,
  `subscribe_time` varchar(30) DEFAULT NULL,
  `unionid` varchar(50) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `groupid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of weixinuser
-- ----------------------------
INSERT INTO `weixinuser` VALUES ('13', 'KELLY', 'oM939txMQwFAmU2D2wnNRTKRd7Ko', '2015-11-11 13:57:48 848', '2', 'zh_CN', '深圳', '广东', '中国', 'http://wx.qlogo.cn/mmopen/5ZweYFTD6M87sGWKv4hryF2mdicbBia5ot0GHj0IfWxh8KB1N5WnS8XpsNYyN1bvj6db8XPsa9Hp2brAh3brLONjUq8fIL0unM/0', '1439920134', 'o-NuVwB-_Mc22D4ZxhN7p--qt2hc', '', '0');
INSERT INTO `weixinuser` VALUES ('16', '润润天国', 'oM939tzZLhRy8dWXXN-r7uk_MiF8', '2015-08-19 05:07:52 591', '1', 'zh_CN', '', '上海', '中国', '', '1439932339', 'o-NuVwKFw1co4J5kcSsx4CSQ-XuU', '', '0');
INSERT INTO `weixinuser` VALUES ('18', '韩莉君', 'oM939t2T8keOjIgc-XpLxW40leIk', '2015-08-19 06:24:36 171', '2', 'zh_CN', '杭州', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/OUicWJdJoz3EACjiauBDOSnucDCGsNezODWO9cCmg3kbIwLdnVxX8bnj7mySUPRPYovNSu1eReJsuibyictC8mvKP07HoZ5dB9Jib/0', '1439936942', 'o-NuVwPWlPLOADIgg0C2PncY7bmw', '', '0');
INSERT INTO `weixinuser` VALUES ('19', '欢', 'oM939tyNx-YacQf-NXfJ_gZ9OY5s', '2015-08-19 07:25:33 500', '1', 'zh_CN', '丽水', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/OUicWJdJoz3EACjiauBDOSnvibnbSs1gxvWRwgtIj3GYKbA6DxglHJeSDwVicykALsR6oFpHu1cpiczq2JicrRibJgia6e5pDL9maatz/0', '1439940600', 'o-NuVwNyb66aByTu41edURHFe1d0', '', '0');
INSERT INTO `weixinuser` VALUES ('20', '杨璐', 'oM939tzdcNZGXjasgUtuOMHUlUkE', '2015-08-19 07:58:28 985', '2', 'zh_CN', '青岛', '山东', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEIhAPVyUrKB95Yx2cvLuhkApZM9YsKUNLM7icCprnG9TPVbMxzlhWBq3CJInyPTAZnUXUiaicQACBgBA/0', '1439942575', 'o-NuVwFkNcEY3eCo-CTlzJ60FtGA', '', '0');
INSERT INTO `weixinuser` VALUES ('22', 'David', 'oM939t7nJIT89caPfuq3tpCyiaKs', '2015-08-19 09:32:49 204', '1', 'zh_CN', '深圳', '广东', '中国', 'http://wx.qlogo.cn/mmopen/5ZweYFTD6MibJaRoJaJ7QibGOkMtibAe8EvUfHAnR42uVicHibLNosAGrMPaRz2micLrXfjxdpjdSUiaEUxlpwQHgGibyGQVR3EZL1Mw/0', '1439948236', 'o-NuVwKzVRMSoCj6sKsHBWfKB29E', '', '0');
INSERT INTO `weixinuser` VALUES ('23', 'zero-z', 'oM939t6oF-poeQ6bNIQ58fp3bc10', '2015-08-19 09:33:12 158', '1', 'zh_CN', '虹口', '上海', '中国', 'http://wx.qlogo.cn/mmopen/OUicWJdJoz3EACjiauBDOSnnz6fgv8GUUiaAt9OutOkYlcjCxWSn87OPhK6SGicibaR4bd2QrsbgRZuebVzpvv4ibrbNpUq3ibIcSIo/0', '1439948259', 'o-NuVwIfSpv4SHsBgt8y64nwusOA', '', '0');
INSERT INTO `weixinuser` VALUES ('24', '你是我的唯一', 'oM939twM8E4xeH-7DgPiQeV8-Cno', '2015-08-19 09:33:40 533', '2', 'zh_CN', '丽水', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/fMr8ceP8ibyaqFemv9reRxqhIc6eUAwspNHc0pxKc0fhnnMB5mER0DGrsYYS2jn07ODIqGlAibx9YVuuQibtQH8PGnXw1pXv4B4/0', '1439948287', 'o-NuVwGAqGCJZ9woRNEGMPDCwWe0', '', '0');
INSERT INTO `weixinuser` VALUES ('25', '！', 'oM939tzphfJu7XWbSEXVQPdHghYQ', '2015-08-19 09:36:14 501', '1', 'zh_CN', '', '奥法利', '爱尔兰', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLD42CBib84UsTVCLylwKfzbyr76a9D4kuDegaNl3xP9sQpKP20lCRQTOprKqqOVIrjn48ezxvcVYsg/0', '1439948441', 'o-NuVwOrHhuYh3cZ1leTObVS-3Eo', '', '0');
INSERT INTO `weixinuser` VALUES ('26', '心梦天使', 'oM939t70pFtGC-Coki5wtXETjQcw', '2015-08-19 09:39:16 345', '2', 'zh_CN', '舟山', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/5ZweYFTD6MibDNO5P8fUwkM1Y3BZJfG96icD0pq3AXbcmbQ7OS7AnFRdj1hWTV9lSYCicKxqq5JF1gEFRN8YGWpDRhae5x0SibMU/0', '1439948623', 'o-NuVwNeTQCoqtco6KxSR104tHVI', '', '0');
INSERT INTO `weixinuser` VALUES ('27', '宋宋', 'oM939t-iwVLNSYce2lefYqg603oE', '2015-08-19 09:40:23 564', '0', 'zh_CN', '', '', '', 'http://wx.qlogo.cn/mmopen/5ZweYFTD6MibDNO5P8fUwkE3LSWEf50QaBsFTUsA0R7I4Cl7hRLPM1OSB1eicsf7Q79uuIHYbhdibacOyKOq3Zibzz88FFiczSef3/0', '1439948690', 'o-NuVwOexCH1Sqee16f7SOhu0Zxg', '', '0');
INSERT INTO `weixinuser` VALUES ('28', '张文海', 'oM939t_MEP1BGJ1zoE0zDpwwEZZU', '2015-09-01 21:31:38 523', '1', 'zh_CN', '深圳', '广东', '中国', 'http://wx.qlogo.cn/mmopen/fMr8ceP8ibyYbGzHMxpubnPwesX7hG2qYuXwpSfznU0SIrMSp6mgU7suXeNE0stic3hMt5fS9Mk9gNMrawhjlsP0ot9WckcypK/0', '1440254799', 'o-NuVwAWYqmtUS9oZmKWQbwplQAU', '', '0');
INSERT INTO `weixinuser` VALUES ('29', '程凤', 'oM939twfS3Au8VvW-xBH7bu_lsQQ', '2015-08-23 09:32:11 769', '2', 'zh_CN', '黄山', '安徽', '中国', 'http://wx.qlogo.cn/mmopen/OUicWJdJoz3GDuAQ5X79Bgaicon3NtE95PcNT94DmhnB7xJUfXTHkicaVYeHyLk7PegdaYWn67kZjBD0u2zcic3yJceN9ibbwW4Wq/0', '1440293808', 'o-NuVwN2aOF9t8zPW7nuQ398YGuo', '', '0');
INSERT INTO `weixinuser` VALUES ('31', '王曼', 'oM939tyZKPBo2rOIoS_rlPUGh8w0', '2015-08-23 10:30:13 378', '2', 'zh_CN', '孝感', '湖北', '中国', 'http://wx.qlogo.cn/mmopen/fMr8ceP8ibyaqFemv9reRxq10AibucIbrp396hvF2WLFkoQoibVV3rTk212w92hQmEgAzM2qglxSCbvHyoXeagmribty1EJZN6R6/0', '1440297290', 'o-NuVwMpqPBuBrbSk_EqiPQYJIg8', '', '0');
INSERT INTO `weixinuser` VALUES ('32', '花公子', 'oM939t8o8DUgVgOQqR23PJ1gyroM', '2015-08-23 10:41:57 457', '1', 'zh_CN', '广州', '广东', '中国', 'http://wx.qlogo.cn/mmopen/5ZweYFTD6M8sqXnWrTwAaF4uBDLgI76hD2KD6uvOdEmDclpBNRxhq1EBEuFDK98viaic7rySnicPFdbewOFD6JKoA/0', '1440297994', 'o-NuVwPqm48cGnOfRX5eTgJEdO2I', '', '0');
INSERT INTO `weixinuser` VALUES ('33', '爱宝贝', 'oM939txHdZrRXBB1yu1bgYhhLWXo', '2015-08-23 10:48:15 192', '2', 'zh_CN', '南宁', '广西', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLBzJfX9z26zJZl2xVO6gTiaEYicIOOfoXBsBHHZLwNEygAzI13UCWnWKyTlicn0otlQh979BVwyobMS3ibmmFYqub5X3HTib0xMViavk/0', '1440298372', 'o-NuVwJstaj_Om6Q7v2_XILfdK40', '', '0');
INSERT INTO `weixinuser` VALUES ('34', '玬', 'oM939t7m8tRcpozopHThaenH7mxI', '2015-08-23 12:04:38 161', '1', 'zh_CN', '', '巴黎', '法国', 'http://wx.qlogo.cn/mmopen/2WW6IXbkubT5hhISjNaL7ibaoiaGvVz092yo35YSFQZGkjKctNg7cbyP6wWf4ozuWtvrSUmwbicImQGdNLo3gAuhJx9zhI5aCbB/0', '1440302955', 'o-NuVwBSKGIBq7unP7UHQxTnemjw', '', '0');
INSERT INTO `weixinuser` VALUES ('36', '婷婷~汉川美奇汽车美容', 'oM939t72Ugfvt_VQi16i3xNb98_c', '2015-08-23 16:09:43 940', '2', 'zh_CN', '孝感', '湖北', '中国', 'http://wx.qlogo.cn/mmopen/OUicWJdJoz3EACjiauBDOSnmdTrPRSrDK945xFOcqcFn5iaYYibIk1wU7Hm2P99y9zkzmwnpz8picqg8iapqjKWMBoojicYEpHxPZ0S/0', '1440317661', 'o-NuVwB-6NTaZxsQDTtsstb3ReEM', '', '0');
INSERT INTO `weixinuser` VALUES ('37', '❤️Linda❤️【卡尼菲】', 'oM939tyyx6Q2hOdP_BkGDJItxQTE', '2015-08-23 19:40:06 336', '1', 'zh_CN', '', '马累', '马尔代夫', 'http://wx.qlogo.cn/mmopen/fMr8ceP8ibyaqFemv9reRxnr4V0vFa3yUKibV00ibdxzWxegicpwJWLRUrkgQp3P6phKHGwI6PlLbI8ibdiauDMQAic84oslIto5V3l/0', '1440330284', 'o-NuVwColkEAE2xs-UBrh-zX-0xU', '', '0');
INSERT INTO `weixinuser` VALUES ('38', 'RoseBaby', 'oM939t6M4lHSe-tpUfo44alL28S4', '2015-08-24 00:59:20 804', '0', 'zh_CN', '', '', '', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM5jZePKMOa9ouZ7SnvFlSgVzje7Z9eV6Hxhhu8etb4EHBd2GrP9f8aQKic4f9ErPWZaXgMXkBs5W9DmQicHdiciccl5qib42eKoLSXo/0', '1440349439', 'o-NuVwPht6r60W_ZXZNDPGrqvX3Y', '', '0');
INSERT INTO `weixinuser` VALUES ('39', '陶子✨', 'oM939t3Gn9LDzVHHOLVSnEQ2p818', '2015-08-24 01:12:37 649', '2', 'zh_CN', '', '巴黎', '法国', 'http://wx.qlogo.cn/mmopen/2WW6IXbkubRh6HKDTTqWrhYsqs0iaiaGyqMRhMSRBGP7juhIAVvZfWWpYrMwyNVX5icDKIZkj46G2FMAYnayZ4dFZHaXVax1WrE/0', '1440350236', 'o-NuVwAl08V-k9Oq5OPMhxaK53l8', '', '0');
INSERT INTO `weixinuser` VALUES ('40', '江姗姗', 'oM939tz1cK7EieSxD2bx8zUN7BkA', '2015-08-24 13:41:10 548', '2', 'zh_CN', '杭州', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM6L4iaKzkDeCxWuDyOEBc0RGJcXEPlVkjpzegeoWzia4cX9onhlFhLAYBV3LVVkHG6QAXcQUDnqgFlA/0', '1440395150', 'o-NuVwONkJMAuTwpui8XJKOajXTI', '', '0');
INSERT INTO `weixinuser` VALUES ('41', '西贡客', 'oM939t7oCu0x1rRAA5ecq9Ih7Tc4', '2015-08-24 21:20:43 678', '1', 'zh_CN', '黄浦', '上海', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLAeYnSU2ibfeDvtZzdUibpvesonkkCfEwHqUYVa1knd1NibFbE0gAAJgY35pLR7FKgFaTkot3LSPZ1zXZpiaDuJcC3HZb0x4P2xiamU/0', '1440422724', 'o-NuVwKSE0oeuAoTTi5aushoVb3k', '', '0');
INSERT INTO `weixinuser` VALUES ('44', '阳光路上', 'oM939tyDFCxJP6O6yJRvQtUia1Zs', '2015-08-25 19:06:40 785', '1', 'zh_CN', '金华', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/2WW6IXbkubRGL6MbOKql1ZfBWIz1lyLxY9MaAJGF7PfnZjvJnKc6Kb3A3LaVsGHBXLWgBDkgHzecqKMbPCpGUPp6yJ7RE7zl/0', '1440501083', 'o-NuVwIB-cDBDpP4ekqvypb_h9GI', '', '0');
INSERT INTO `weixinuser` VALUES ('45', '林阿勒', 'oM939tzQ5LHYazWV80P406QuWxLo', '2015-08-25 19:09:20 207', '1', 'zh_CN', '舟山', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/OUicWJdJoz3EACjiauBDOSnrAEkMb5Q6usvy6ibKHg6UWCGvCIAe9svhiaPlqFTxnJ8Z40fEqPjMAd5t7iaHvWpKKIibSiaBTMuiceoL/0', '1440501243', 'o-NuVwH5V46SYt9rrza1UATb3dXU', '', '0');
INSERT INTO `weixinuser` VALUES ('46', '哈迪斯', 'oM939t-KZiy7KFv2VTCXFtb0frN8', '2015-08-25 19:16:01 363', '1', 'zh_CN', '舟山', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/2WW6IXbkubRGL6MbOKql1QHYeHeGRIsRjds05hE78pRVhRkYhOTrhMVGMBQ5ibTDanyBiahmrria2hBElycP7VpKD9uVzEm0ZRG/0', '1440501644', 'o-NuVwOCnTshrSmITIkmrxou_aSM', '', '0');
INSERT INTO `weixinuser` VALUES ('47', 'Yu', 'oM939tx3QT2cDKW_AQ5m5GC0Z-as', '2015-08-25 19:28:56 710', '1', 'zh_CN', '舟山', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEJnDF9l4ySLTn9sicY9mJhJfM6lvNjsUicpicbvicOYo0XJAKFiaibHLCfJzX0cHecuK1BpsaQ6gQiaA80vg/0', '1440502420', 'o-NuVwHWIEmRRxIR8hMi3Zcdr850', '', '0');
INSERT INTO `weixinuser` VALUES ('49', '心情', 'oM939t-4VI6M9zSjf_I_DDaqiLqA', '2015-08-25 20:07:57 320', '2', 'zh_CN', '舟山', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEJxmAjposl2EbqEsTXSIa9E7yWLfzibzph87VnNyI3oGnS0KWznQe3T0KwwFG2uWicvEUfcTBBD8Kcw/0', '1440504760', 'o-NuVwMv2ULSYinrf2jvxrHJTfjI', '', '0');
INSERT INTO `weixinuser` VALUES ('50', '衣小瑜', 'oM939tzIDO19yX5mkJByUFRHs2n4', '2015-08-26 07:47:17 913', '2', 'zh_CN', '', '', '安提瓜岛和巴布达', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM7TicCYBHiaXgyawtzlS74EpDVHnZVNR2w7mOPuZEjrIm7PKiaCKkulya4fiae5arjmLm5gxYgO580dPw/0', '1440546722', 'o-NuVwPcYA7UOkwfQnOinhggpp9g', '', '0');
INSERT INTO `weixinuser` VALUES ('51', '思高艺校', 'oM939t3doqiyYmWeFggcDZNQcEb0', '2015-08-26 10:33:39 809', '2', 'zh_CN', '温州', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/fMr8ceP8ibyaqFemv9reRxqTPQJD5mykVuDSibcWDjK3zolZk5o9Fgoew0uqSdrYu0mlvVaTVBc3cs6NGjTOWQdHyYSPZc9eq4/0', '1440556704', 'o-NuVwCr8uxAJQidSS8mAJyRS8Mc', '', '0');
INSERT INTO `weixinuser` VALUES ('53', '郑笑燕', 'oM939t9V_rqtp221zuJcWWpc-W5k', '2015-08-27 11:43:26 303', '2', 'zh_CN', '丽水', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/2WW6IXbkubRGL6MbOKql1SGrs8Nnz4DanGSNjTl3FBUb387ApR4wnLhhfawTgNGzu4oRsZKCDcDkTyiayNQGHKgWtZliceSDCe/0', '1440647293', 'o-NuVwK558Iw0aa3X2i5VpeFkLX0', '', '0');
INSERT INTO `weixinuser` VALUES ('54', '陶子', 'oM939t7ZKJ3G-X9UzStRxGTK7uZE', '2015-08-27 15:14:05 768', '2', 'zh_CN', '杭州', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/fMr8ceP8ibyaqFemv9reRxgjWCR52nludMU6koahHZPye2RmUfSgQZogibaPhxbrJsiciaRe8GkGjhlZTQznfiabLE9mVZDiaXYic4B/0', '1440659933', 'o-NuVwLQAD9KYQiynQwbZOtzB4q4', '', '0');
INSERT INTO `weixinuser` VALUES ('55', 'matsumura', 'oM939twc6kOMUaAgP3lFmret1Zak', '2015-08-27 20:57:31 494', '1', 'zh_CN', '', '', '日本', 'http://wx.qlogo.cn/mmopen/5ZweYFTD6MibDNO5P8fUwkE4Ho9qtRwyxmKUSHTY1miaVLLMMCdmBBFgRWYg6Ahjj5MVjzBGtLeveU2aR6q6WC40tUqicpHYvlW/0', '1440680539', 'o-NuVwArimvNlwrWqgAXcGoHurd0', '', '0');
INSERT INTO `weixinuser` VALUES ('56', '顺子', 'oM939t294n9WKHvDXYFUQryWVOm8', '2015-08-28 06:59:50 933', '2', 'zh_CN', '青岛', '山东', '中国', 'http://wx.qlogo.cn/mmopen/5ZweYFTD6MibDNO5P8fUwkHvZITRBMyhUWzCVLt2n85D88cBVmW4ib4Tfo8T85Uib09ibUTwm7ibyMsDIXBdnHKUQib98F5oVUnVv5/0', '1440716680', 'o-NuVwDJH0L2DkPoLXAI5KRwC_6o', '', '0');
INSERT INTO `weixinuser` VALUES ('57', 'A@Rebecca', 'oM939t71c3xpmUIlqgzlfr68S8VE', '2015-08-28 07:18:40 007', '2', 'zh_CN', '青岛', '山东', '中国', 'http://wx.qlogo.cn/mmopen/5ZweYFTD6MibDNO5P8fUwkJHKbLanZSvJK62OGwAhUOFxia4sqHgHhjfibV8njAibF5vdxcFYicvFgN9YdEToWdUbE0LDbNusIN85/0', '1440717809', 'o-NuVwCGkS4-rDWu0uyBqg935_PE', '', '0');
INSERT INTO `weixinuser` VALUES ('59', '小岚', 'oM939tzr4oogG0-XKo3CM9UL2RNw', '2015-08-28 16:29:09 175', '2', 'zh_CN', '杭州', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/fMr8ceP8ibyZ2Dic7tDpTDlGZWgtaiaoKOQYXIE8ZWibI6z6BiaFIbygkMcCtlTPM7fvvxibdia0xoXAWH5dhg8JK3Mjx38uHp9qW2S/0', '1440750839', 'o-NuVwP-uXIblOVnLbcoTOTKMkMU', '', '0');
INSERT INTO `weixinuser` VALUES ('60', '艾琳', 'oM939t-MZz9mK6FgO2JDQOHUSKKs', '2015-08-28 23:25:42 425', '2', 'zh_CN', '浦东新区', '上海', '中国', 'http://wx.qlogo.cn/mmopen/fMr8ceP8ibyaqFemv9reRxt75HqRdiaqu27ltvc9S8iaq6Gsm2AU15bgeWl8OZz1T05oic6d546cc3PcAAjkGxLvPoicQIsR15PiaQ/0', '1440775833', 'o-NuVwB04BVV_x9YFYLQGUUX2dSk', '', '0');
INSERT INTO `weixinuser` VALUES ('61', '海尔厨房赵梅红', 'oM939t2lWTuZbZvezGH89X6zVEtQ', '2015-08-30 11:22:23 367', '2', 'zh_CN', '丽水', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/icTdicFWib28sLrMF7JngMNLYFuiaY2YibicI2JywyOUx6197BInmmiaPDhrTfulzhgLhJN2a5lwkBmlFQpkhc6Amo2Z4JdZOynTaTh/0', '1440905238', 'o-NuVwJURm3cvH3uRGnN-H2mWU2o', '', '0');
INSERT INTO `weixinuser` VALUES ('62', '闪耀童星学院', 'oM939tzjnvia4F082k47Lch87LDU', '2015-08-30 19:44:49 616', '2', 'zh_CN', '', '上海', '中国', 'http://wx.qlogo.cn/mmopen/fMr8ceP8ibyYbGzHMxpubnFXCQkh35TyksR0h4D4vYNzrOpc1hU410m7Qfq5DXBgesicMreLLMAbiaHmcPaias25wjsntqhL7Kl6/0', '1440935374', 'o-NuVwADVX3bWFPaGXedbwADZOMw', '', '0');
INSERT INTO `weixinuser` VALUES ('63', '闪耀童星学院', 'oM939tzjnvia4F082k47Lch87LDU', '2015-08-30 19:45:05 116', '2', 'zh_CN', '', '上海', '中国', 'http://wx.qlogo.cn/mmopen/fMr8ceP8ibyYbGzHMxpubnFXCQkh35TyksR0h4D4vYNzrOpc1hU410m7Qfq5DXBgesicMreLLMAbiaHmcPaias25wjsntqhL7Kl6/0', '1440935374', 'o-NuVwADVX3bWFPaGXedbwADZOMw', '', '0');
INSERT INTO `weixinuser` VALUES ('64', '闪耀童星学院', 'oM939tzjnvia4F082k47Lch87LDU', '2015-08-30 19:45:08 382', '2', 'zh_CN', '', '上海', '中国', 'http://wx.qlogo.cn/mmopen/fMr8ceP8ibyYbGzHMxpubnFXCQkh35TyksR0h4D4vYNzrOpc1hU410m7Qfq5DXBgesicMreLLMAbiaHmcPaias25wjsntqhL7Kl6/0', '1440935374', 'o-NuVwADVX3bWFPaGXedbwADZOMw', '', '0');
INSERT INTO `weixinuser` VALUES ('65', '恭喜发财', 'oM939t5YPzB6hPaNR-H3epldli1s', '2015-08-31 01:52:23 129', '0', 'zh_CN', '', '', '', 'http://wx.qlogo.cn/mmopen/fMr8ceP8ibyYGB8JrOMzYX1l3QGc7mItNdeL6KFSBDKkxDrWiaEX919v6vm4bCKeZQVjK87jNUZuaKsujg9L7bmpwxCwN5tic3G/0', '1440957439', 'o-NuVwOvaNqYXDG0fmSr8lTlQwug', '', '0');
INSERT INTO `weixinuser` VALUES ('66', '陈秋丽', 'oM939tx3RCfNkiHaE9NLwy9nY7zg', '2015-08-31 01:57:06 474', '2', 'zh_CN', '', '马德里', '西班牙', 'http://wx.qlogo.cn/mmopen/5ZweYFTD6M8k87FcXqtHHicICQcvJgdRbckLHgpHHC8ib8RicibeLJmyJBG1Jo8J9wXNVelDY5icz95icAhJ393RseEUDNc6TTIwgD/0', '1440957722', 'o-NuVwDilYWDHwLHZdHGT62dAOJM', '', '0');
INSERT INTO `weixinuser` VALUES ('67', '谢伟丹', 'oM939tzvFqarXqDOSiasEDQQ9Xh8', '2015-08-31 19:14:07 493', '2', 'zh_CN', '温州', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/5ZweYFTD6MibDNO5P8fUwkPmpYLEbm4E7qXs3psNHsDXckTt5ZVjhQr1ry2bX9foVztAYq4etIUoRV7PAviaG7Bejh2n2HG8Lk/0', '1441019945', 'o-NuVwJru3P_wjpaK5TszoAQVczo', '', '0');
INSERT INTO `weixinuser` VALUES ('69', '小辣椒', 'oM939t5mH9bbeMbk_Jk2krMIHYxE', '2015-09-11 12:15:05 465', '2', 'zh_CN', '绍兴', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/5ZweYFTD6MibDNO5P8fUwkGpDGVOUCV0njRhJ9HSLGTxdxTqphX7jibeG15rl42Picr4KiaENOFatPhucnXpjylD7C829ILvbqLR/0', '1441944892', 'o-NuVwHLF7UG-55GTKdIYvJcT0iY', '', '0');
INSERT INTO `weixinuser` VALUES ('70', '刘云', 'oM939tz1D6ZEWyu_4LQvirg98SdI', '2015-09-11 12:21:00 742', '2', 'zh_CN', '信阳', '河南', '中国', 'http://wx.qlogo.cn/mmopen/2WW6IXbkubTKib27ia5ZscXUicXvH3rc6wm1mLWNlBzXDcEMuJkEbJiaUsuTgfsR2afHVpRAZwLkiaqn8b5iaEsC9icNWET2kuHEmBH/0', '1441945247', 'o-NuVwKgVEznV_ZmHCE93LAHMN2c', '', '0');
INSERT INTO `weixinuser` VALUES ('71', 'Mr๓₯㎕♛魂淡', 'oM939twIAduVFyFb_n9U133T3OqA', '2015-09-11 16:18:21 214', '1', 'zh_CN', '杭州', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/2WW6IXbkubTKib27ia5ZscXcsicbc0YybS8Q7JDgWBY07IYEuianxMuQhniaVkia3ibyGXdDmJGLEgnHhgs2pLShHU789a09jjfZALN/0', '1441959486', 'o-NuVwNXyGdjqB5Wrn39xRa5Ctyw', '', '0');
INSERT INTO `weixinuser` VALUES ('72', '倪佳越', 'oM939t6TqQl03JL91Te_nDDsVwu8', '2015-09-11 23:42:33 281', '1', 'zh_CN', '', '上海', '中国', 'http://wx.qlogo.cn/mmopen/5ZweYFTD6MicnWzLM3FrcibAr7gCicv51wqUzhuibrzpibX9703E8TIu4lOqfMp5ly5YmzKOLRYylTfibUVlMpBXibBsmCjaHaTn1bV/0', '1441986134', 'o-NuVwLh18YW5rqwTv5ySaJ2fXTQ', '', '0');
INSERT INTO `weixinuser` VALUES ('75', '云淡风轻', 'oM939t1uYh71vszUmABsE-rGzkII', '2015-09-12 06:18:32 869', '2', 'zh_CN', '上饶', '江西', '中国', 'http://wx.qlogo.cn/mmopen/OUicWJdJoz3EACjiauBDOSnhibEae3WJH41vT9cB0eUch9uXzybribxDDfW5KXM6jgQE1e3WyvoRQvw20AcacXKzZeibQOSwF9Imw/0', '1442009891', 'o-NuVwOeK8qaLUp9aSzsjYop_b_A', '', '0');
INSERT INTO `weixinuser` VALUES ('76', '月牙微寒', 'oM939twvCXkskIo3ysccFHiZ89dA', '2015-09-12 08:59:50 795', '2', 'zh_CN', '浦东新区', '上海', '中国', 'http://wx.qlogo.cn/mmopen/5ZweYFTD6MibYD8rLBDqbWDZHNQo0mQRnE4fQeGEtCuTVxswr1pBy1jnNOBORZUiaNxiaNnzsJeE94iaXIwEptRcibQ/0', '1442019567', 'o-NuVwM6OhTPbaKJute7Ep8oNlPM', '', '0');
INSERT INTO `weixinuser` VALUES ('78', '沙', 'oM939t_TgZYfKGBqmBOdSSVFjBuQ', '2015-09-12 09:50:50 041', '2', 'zh_CN', '青岛', '山东', '中国', 'http://wx.qlogo.cn/mmopen/2WW6IXbkubTb3dI7UslrF1Mekp8vFzZVIA6OG1lx2gEADK74ibdMooxYhVkSIHNtEjSibIDa5qFgIFickQibw3nUSZZx5qJNlEZk/0', '1442022626', 'o-NuVwHG4uXpz2Ce-TsYJOplZMiw', '', '0');
INSERT INTO `weixinuser` VALUES ('79', '妮妮', 'oM939txzoQ_y9s01vHMENMZ7LSj8', '2015-09-12 12:19:18 953', '2', 'zh_CN', '长宁', '上海', '中国', 'http://wx.qlogo.cn/mmopen/2WW6IXbkubRGL6MbOKql1TXruibZ5ksvP5mJbWwicMcySNFNw1BIc8jBicrtibpKWJWFX7CT5F9mGEFTXQGsINszb59O2zB2tfVm/0', '1442031534', 'o-NuVwKiFJhosYQi3ySK_gTto_A4', '', '0');
INSERT INTO `weixinuser` VALUES ('80', ' . zrj', 'oM939t0v6d2wb2E3L7uYNpPATdBs', '2015-09-13 13:19:59 796', '2', 'zh_CN', '大兴', '北京', '中国', 'http://wx.qlogo.cn/mmopen/jobMCCzxNicZIgxPZSpibjbKibRTFhPqDI0Eo0b2Pczu1DZxrJA2Wd6LzLIDY4kiaSngjNNFS9Alyf7ShwUrfv7GtRDWzhv6mcBG/0', '1442121563', 'o-NuVwMiwwHtPeMGXzNYPKRvxxD0', '', '0');
INSERT INTO `weixinuser` VALUES ('81', '燕子', 'oM939ty9cLi2wbpDotAWMDPVq8H4', '2015-09-13 15:11:25 284', '2', 'zh_CN', '丽水', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/5ZweYFTD6MibDNO5P8fUwkKRKaqmcXEJwcT9VYyp6522ZHM4SkmHKvj2ib0VMk6dQVj7HSWaVHKEOibaaJMUG29nHy2s5QLxTSf/0', '1442128245', 'o-NuVwE_zj3q94y_TPu2_v0grBXE', '', '0');
INSERT INTO `weixinuser` VALUES ('82', '樱偌', 'oM939t-A16hrVPgnacdmp4TNYwe8', '2015-09-13 20:02:29 804', '0', 'zh_CN', '', '', '', '', '1442145710', 'o-NuVwNohxg2btx1qPwd3AyHvJrE', '', '0');
INSERT INTO `weixinuser` VALUES ('83', '若鱼', 'oM939t4XwaVm13L1Ot4ZppaqtWiQ', '2015-09-14 15:12:07 976', '1', 'zh_CN', '舟山', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/OUicWJdJoz3EACjiauBDOSno04djS1xJ1OibOCyyzsOaBPcSgfTnjXQ7PwJ3Ikv3MCAzCF9GicJnCLib076GMEUbooqkDmG1RPHUo/0', '1442214740', 'o-NuVwGE440a5D7pCF7zVNtcIinY', '', '0');
INSERT INTO `weixinuser` VALUES ('84', 'lxm（陈思乐（yue）妈咪）', 'oM939t-erc5Rwv_bV5DBLiiPUJ_0', '2015-09-14 16:43:33 569', '2', 'zh_CN', '丽水', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/fMr8ceP8ibyaqFemv9reRxiaD7SUkICYBSWk0Srq39oiaQlqPYI7iaJ9ED4ARyyP0Mx6iagmnFG2nKjfA50meyuianGPsEotwCzF6e/0', '1442220225', 'o-NuVwAiArX4ZMzUEPOC75qpDro8', '', '0');
INSERT INTO `weixinuser` VALUES ('85', '唯一', 'oM939t2zn4GvbQpaNcW7B1Ajo0es', '2015-09-14 18:15:32 090', '2', 'zh_CN', '丽水', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/5ZweYFTD6MibDNO5P8fUwkJnjuy3rPD6cVsbMsYVibJ2oYeNcRxFW0ybZo7HjnlCUV80ALMQ6OCyG6WNCyAQicp1heXxloLjubc/0', '1442225743', 'o-NuVwPXh51iD8GP_eKclOiUnKHU', '', '0');
INSERT INTO `weixinuser` VALUES ('86', '迎客来美发', 'oM939t5Dgq7bA99FDGBdre6_MDio', '2015-09-14 18:17:17 700', '1', 'zh_CN', '温州', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/OUicWJdJoz3EsydCPDLT9CSXFzyHf4DfJDBX3TVfwIarlSWFs0mW5l2vLYBDCFS9U72ic5H3zq8YvqU8zUH83CgMCrzZq7PWEQ/0', '1442225849', 'o-NuVwI4CYObPk3w9F5rX0P9aj8c', '', '0');
INSERT INTO `weixinuser` VALUES ('87', '雅诗', 'oM939txYMv-41sU90MVVd_sw8gys', '2015-09-14 19:49:43 523', '2', 'zh_CN', '杭州', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/fMr8ceP8ibyZ87ZIopdMjPkKu1p1equV5Xk9LZ5S6eIBGyua26jC0tZSl2saoCr7NjicDJdzic24U2eHIftG7fSB3aqhnewrryf/0', '1442231394', 'o-NuVwGTwmFBQk6T_D08-wz_Ue7Q', '', '0');
INSERT INTO `weixinuser` VALUES ('88', '畅妈', 'oM939t0Ma-mTOmZtXDtbaFUKwZP8', '2015-09-14 19:52:30 757', '2', 'zh_CN', '温州', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/5ZweYFTD6MibDNO5P8fUwkJMDdpiaNEA4PvJiaWnLD3WhSckkLcYiaaguHHo1x5pxibmXiakoBUlKSbL9ZnP9ctc8QSHnEQEJ7ez0g/0', '1442231561', 'o-NuVwHWZ6yQt3cj-C8xghsQ_TZY', '', '0');
INSERT INTO `weixinuser` VALUES ('91', '做最好的自己。', 'oM939twTph6Cv9oYdS10M_ZXLgVE', '2015-09-16 09:59:56 241', '1', 'zh_CN', '安阳', '河南', '中国', 'http://wx.qlogo.cn/mmopen/OUicWJdJoz3EACjiauBDOSnkpt6dVqK4GMVN9Gsemfh02DOAVjWsEe5WOTXIMOanXCg51MRFBVgZbgLFIfBK48FCfreHDCxsjP/0', '1442368789', 'o-NuVwOB8RddB82s9905bb_Ii6Jw', '', '0');
INSERT INTO `weixinuser` VALUES ('92', 'sunffylikesun', 'oM939tx_3Ivc33yYf5w9WBT1R5NI', '2015-09-17 19:52:56 632', '0', 'zh_CN', '', '上海', '中国', 'http://wx.qlogo.cn/mmopen/2WW6IXbkubRGL6MbOKql1TdIAQZVHkx2I0f6g01YFjJuqjUuVoTG3T6iaPBHH0dT7jo9ZHibqFE8AnWt0atZgrVIefcA9e1IG2/0', '1442490753', 'o-NuVwJqIXTlSMP-ilgLI7TaQ96k', '', '0');
INSERT INTO `weixinuser` VALUES ('93', '景', 'oM939t3ucaxQ8mOll7QPKx98X4fE', '2015-09-18 23:36:32 077', '2', 'zh_CN', '', '', '', 'http://wx.qlogo.cn/mmopen/fMr8ceP8ibyYbGzHMxpubnIWOQPSZWiaEhPAQvVB64826ku5RWfaJEBZfsI66yo1gGeg75RSibnh8H0b9o8PXN5g6USuTicQzswn/0', '1442590556', 'o-NuVwIR2dL1iH34WQmKShm8fmGg', '', '0');
INSERT INTO `weixinuser` VALUES ('94', '劉小偉', 'oM939t3-NhOY29OtX9FPmOISmctQ', '2015-09-20 07:48:35 499', '1', 'zh_CN', '丽水', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEIyiaKjVWQE6WG6N8FMia7TZV91ibXHKkRAqUA0iaW0syYlb0zBJDia4vGvQSibmVmYUVPLiav5OZHibibYvuQ/0', '1442706526', 'o-NuVwCBCSxt8W7HZFv2-EGeQ_JE', '', '0');
INSERT INTO `weixinuser` VALUES ('95', '王芳', 'oM939t3bnnKdjAwYifgBI-w9WWB4', '2015-09-20 16:32:27 039', '2', 'zh_CN', '', '北京', '中国', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM4MC0mhfz4mce8ascgnsGiboEZlIdkMk1ZUro8wEKQZeotJsiaGlNbH5sBQv2UHjKUiaXknVPysJVOXw/0', '1442737953', 'o-NuVwIvCCflcifNU3N_SZU8ecuU', '', '0');
INSERT INTO `weixinuser` VALUES ('96', '谢烬阳', 'oM939t6BWwmdeE6GKH0rVI56j_N4', '2015-09-21 04:41:14 818', '2', 'zh_CN', '南京', '江苏', '中国', 'http://wx.qlogo.cn/mmopen/fMr8ceP8ibybsXpbul9OS4LqtFZW2IFiaJibJ8icvyibfdd5UFBpxnJ8IYHdWwBmViahiaUBRE0FDOGeNlamcQqVzCEibxdfRib34Mjog/0', '1442781675', 'o-NuVwAotY6ejEA6gfaq8ihufQFQ', '', '0');
INSERT INTO `weixinuser` VALUES ('97', 'A男人本色专卖男装-本色私家烘焙', 'oM939t_4-hVk7dSZ1Wu3rl2W82_E', '2015-09-21 07:26:59 071', '2', 'zh_CN', '宁波', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/OUicWJdJoz3Fv2xZhpzCcY4W5hYS5NyibkUkXjGGHyM0dUVNaicNUianDUYibs5UUXyw6g30V8iafh8iaiau8xLZGtHGYw/0', '1442791619', 'o-NuVwBkVZbmJkyoNQAvPOsayB44', '', '0');
INSERT INTO `weixinuser` VALUES ('98', '潘潘', 'oM939tyZrlcjVYDGtWQo0XQGYdfM', '2015-09-21 12:28:09 595', '2', 'zh_CN', '丽水', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/2WW6IXbkubQ650UktIV6sgbjuHl4wCxLnpLtVRuCQK9SjBSR3IHic65Ov7ahLUC4nQaOPgqy6e5J50fgHic3xbxg/0', '1442809687', 'o-NuVwCYXdmE745H2HYQy0Ix7HBk', '', '0');
INSERT INTO `weixinuser` VALUES ('99', '美霞', 'oM939tzKq_G6FMh_hKr9xwevNDe0', '2015-09-21 15:18:57 969', '2', 'zh_CN', '丽水', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/5ZweYFTD6MibDNO5P8fUwkPSTSRDDgmc3T9CfJFSAvkicwibuf000PNAdLRt8bgxulQoIr7UAVtX6n1rQia8wQhaEzwTU2E70gia4/0', '1442819933', 'o-NuVwLWhKM8lZeAnlbn_GerWs30', '', '0');
INSERT INTO `weixinuser` VALUES ('100', '黄千容、妞妞（奶奶）', 'oM939t92Ru159JOLmkfCV5IXVHHo', '2015-09-21 15:22:52 313', '2', 'zh_CN', '长宁', '上海', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLD9icoiapNHzNibKpicqI7fxrkaNA1a4CxNnMyViaibox9aTFwelua6vOpzIXukxXNzvTP6zBwxaVqdtSgg/0', '1442820168', 'o-NuVwJxhX-j0cY9yuQKVih3cWqI', '', '0');
INSERT INTO `weixinuser` VALUES ('101', '蘑菇街 黄榕', 'oM939t2j5XXqs8f28BVPZWQP4ImY', '2015-09-22 10:15:44 252', '2', 'zh_CN', '杭州', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEIBvDRTTm85S3uia2IDH2icXR0SEqkaxGF1HfE36HqTG9Gyvcml8mssgCfia0hZBzN4fhSicJG5w3ePag/0', '1442888129', 'o-NuVwHjhSHD_Mp7dZ12LCL7hfiQ', '', '0');
INSERT INTO `weixinuser` VALUES ('102', '龚红', 'oM939tzxT72lJuvnhg0Mc_5Xmyxg', '2015-09-23 01:38:47 708', '2', 'zh_CN', '杭州', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/2WW6IXbkubRGL6MbOKql1cfMvPxoFh5mcV7nP2ic7yBqroVFhdULyeZicJ67DhBKU1UMvG1JPic8UoSgMwxLtFWXHD6bI8srh3g/0', '1442943508', 'o-NuVwDMjeK1YT6q_2jSH7K3iQJs', '', '0');
INSERT INTO `weixinuser` VALUES ('103', '陶翠玉', 'oM939txoFTeeVEQlcPqqpzOKANEI', '2015-09-24 00:29:40 062', '2', 'zh_CN', '', '中西区', '中国香港', 'http://wx.qlogo.cn/mmopen/icTdicFWib28sLrMF7JngMNLadh47BNL8icLrRiaAe4GHhSESN8IviaCLKtPicJ1Mg8gqp4CMpff5C52FjsdJiaIg6cCGaHz1ib4QfKic4/0', '1443025746', 'o-NuVwNSr3CvWw4o-Z2wqLqo3Ojk', '', '0');
INSERT INTO `weixinuser` VALUES ('104', '依人', 'oM939t5g-DrCnmlZpGFQPWUNHAS0', '2015-09-24 00:37:02 063', '2', 'zh_CN', '舟山', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaELXytNGCB9oRcNb3LsjasyDh2VqHd2GibF2f8jIGwQficTWQb0wAQHQwk8iaHxlia9lAuBia8PWo4cls6Q/0', '1443026182', 'o-NuVwMhYGN0lVoSTEHK5Eg_Lkvc', '', '0');
INSERT INTO `weixinuser` VALUES ('105', '依人', 'oM939t5g-DrCnmlZpGFQPWUNHAS0', '2015-09-24 00:37:08 923', '2', 'zh_CN', '舟山', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaELXytNGCB9oRcNb3LsjasyDh2VqHd2GibF2f8jIGwQficTWQb0wAQHQwk8iaHxlia9lAuBia8PWo4cls6Q/0', '1443026182', 'o-NuVwMhYGN0lVoSTEHK5Eg_Lkvc', '', '0');
INSERT INTO `weixinuser` VALUES ('106', 'grace gao', 'oM939t9kfaYz6-g5rdBCROxG5zXA', '2015-09-24 01:13:49 389', '2', 'zh_CN', '静安', '上海', '中国', 'http://wx.qlogo.cn/mmopen/2WW6IXbkubRGL6MbOKql1RvjzE1xrrHTGZCoGwj5Phz0MMf1hDI7jaMY1qic3ibmFh9UbxWHGCQBbUVzagI1hpOGQ833IXr956/0', '1443028395', 'o-NuVwNiljGwKdKGwOK-2-cMyUiI', '', '0');
INSERT INTO `weixinuser` VALUES ('107', '碧虹', 'oM939t_Wd_09zk5DJZVfWO2yI5f8', '2015-09-24 10:42:35 911', '2', 'zh_CN', '湛江', '广东', '中国', 'http://wx.qlogo.cn/mmopen/fMr8ceP8ibyalNzQIPx3MH7XWqsKjcbaNU4AwfOUHKMgKpRVHo6y3vcaHGXMLuzFMb9zrGPrbAPe3Siaefia3ce2WqCdzPWsNibh/0', '1443062580', 'o-NuVwCYaS-DcRX2uGfhyfXOjLIM', '', '0');
INSERT INTO `weixinuser` VALUES ('108', '筱兰芷韵-kelly', 'oM939t7_7dcy6deVwFitgJIy6jfY', '2015-09-24 16:17:23 771', '2', 'zh_CN', '杭州', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/OUicWJdJoz3FceJxRXh7CQg8HBTlSntsOY7hOeicYl3Ak6GMUw1jEHO3icW8BmfIpwdQHND7W6eCbQNkpiaJBd2c3A/0', '1443082663', 'o-NuVwNOGnv0VSjEUFTzFXN71Fhg', '', '0');
INSERT INTO `weixinuser` VALUES ('109', '赵杰(德国医疗&体检)', 'oM939t4QFHKzdq3NX2IRoRxi2MNY', '2015-09-25 11:35:47 620', '1', 'zh_CN', '松江', '上海', '中国', 'http://wx.qlogo.cn/mmopen/5ZweYFTD6MibDNO5P8fUwkIZiaK4002N2OSte8RafNInJjPOvdexc7MHVRiaS6uqiaCNclbsjM66CiaVhicKDsqmgmM0NtyBjNwtyc/0', '1443152156', 'o-NuVwCtg3EVuP_wr1zO2_B0EzyM', '', '0');
INSERT INTO `weixinuser` VALUES ('110', '童娟', 'oM939t9C0yCgIJZpwF9J-IWOWoi4', '2015-09-25 12:58:55 440', '2', 'zh_CN', '武汉', '湖北', '中国', 'http://wx.qlogo.cn/mmopen/2WW6IXbkubSsT4gcrXDHl294dPmMIDticTJELiahm1WLaNfOuh0Ts9S1sIliawnUk0EQWq3iaHAtxyvawVwC1aAAz6ILTgS5sAhV/0', '1443157149', 'o-NuVwDTDWbf6F9fE5zm3RVsiLN8', '', '0');
INSERT INTO `weixinuser` VALUES ('112', '小柠檬', 'oM939t3-SFo6rUw0GsRX6Zc3Pzck', '2015-09-26 21:27:03 010', '2', 'zh_CN', '浦东新区', '上海', '中国', 'http://wx.qlogo.cn/mmopen/2WW6IXbkubR61fV0Bo1LWkvtdQg6QCmzXukibzyL7UozY6IgZqHvNOhsAeODkCZHouTyvEWexOCCv0ibg3JqRpu88OwnG3LKYO/0', '1443274021', 'o-NuVwJea8z_4XNxqY1tWYgZXpN4', '', '0');
INSERT INTO `weixinuser` VALUES ('113', 'sammi.', 'oM939twOaT3DuNmLxwLJ_LTVtRx8', '2015-09-26 21:35:51 839', '2', 'zh_CN', '闵行', '上海', '中国', 'http://wx.qlogo.cn/mmopen/fMr8ceP8ibyaqFemv9reRxkF5XAatBNibdCLxeY0JlZibZkMsnrpV52ayCm31l7nGTcSibibK8jFqGx7Rj811SXXtEGDicIBbnibCse/0', '1443274549', 'o-NuVwLiofsaP4H8resp0_8PhC-Y', '', '0');
INSERT INTO `weixinuser` VALUES ('114', 'eleven', 'oM939t29Y2qKy7hpJmMvY9gkTPag', '2015-09-29 12:54:46 538', '2', 'zh_CN', '', '金奈', '印度', 'http://wx.qlogo.cn/mmopen/fMr8ceP8ibyaqFemv9reRxv4yzsEoWpMFS98FX8AYhlA1H9VfZTpqT6MFCEBeSGDh2rPIKZDkyx9DIibssbc2UIDBYAJZAZrhia/0', '1443502516', 'o-NuVwCJa-nE1lZaND1cyo2kt2zo', '', '0');
INSERT INTO `weixinuser` VALUES ('115', '陈怡萱', 'oM939t2o0nFwqQky9il124NW7cmU', '2015-10-02 14:37:34 914', '2', 'zh_CN', '', '圣安多尼堂区', '中国澳门', 'http://wx.qlogo.cn/mmopen/OUicWJdJoz3FrPcAA9tpqzjibiaL3drETXDmgdjf1dLdlGeQQlfqljpDpcI1VYxcEujWvhEvKXFiaqnEcqnxRHq4ic4EWJKLWgo2m/0', '1443767850', 'o-NuVwAUGMnCHsbpcOGArv2RgjUY', '', '0');
INSERT INTO `weixinuser` VALUES ('116', '让时光擦肩而过', 'oM939t4BFJdrOjMob3l8JZ8kXFm0', '2015-10-05 21:41:45 814', '2', 'zh_CN', '', '上海', '中国', 'http://wx.qlogo.cn/mmopen/5ZweYFTD6MibDNO5P8fUwkGxyWgfjZhVDH0g4WrX6PRvkPFodfJshBs1hcfwVqOurBbkpNZYK0vLcnaeQib1gA6l2lt6zicHRYh/0', '1444052525', 'o-NuVwKfKaQUCEsp1EYzkrbDCZfM', '', '0');
INSERT INTO `weixinuser` VALUES ('117', '陈宽义', 'oM939tyOVUHu_-YjAE-m2_NFOvSs', '2015-10-07 22:54:33 325', '1', 'zh_CN', '密云', '北京', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEL0mvuTe7qxKsn45Gu4pV8VMmaW43Z5wxUtia4z3Ud7iaicJrhicOYznCoo3icN06Y40NqwAI3YlKniabaw/0', '1444229670', 'o-NuVwNpsD6Nf6Hr3Lz6jxyFAdMY', '', '0');
INSERT INTO `weixinuser` VALUES ('118', '朱素萍', 'oM939t7c8DWqaCaB7ERiDr-q-UEQ', '2015-10-10 09:52:34 861', '2', 'zh_CN', '广州', '广东', '中国', 'http://wx.qlogo.cn/mmopen/5ZweYFTD6MibPC5xA38eENjxs2GY1mqDz6oxYehUw1YFAtkrzHrjlWOPUj9DlQ12poMMnBLBlbzmKiaE4VhYdeXD2E4wB4GZiaC/0', '1444441985', 'o-NuVwIZdh2BMT_vWjqefN5pFHI8', '', '0');
INSERT INTO `weixinuser` VALUES ('119', '武工队', 'oM939txrWTg4d_aKBAyz-lbkxKN8', '2015-10-10 10:42:57 260', '0', 'zh_CN', '宜春', '江西', '中国', 'http://wx.qlogo.cn/mmopen/ajNVdqHZLLCGRD4bQDJqhfqXncS5l4Y1L9ExA5AwO8mK5IVo1NuQlqBD7h6Eq69RJV8R0XXZKR5gX7fcckt67w/0', '1444445007', 'o-NuVwLVr5JjTCy7Omzpbjcd-5w0', '', '0');
INSERT INTO `weixinuser` VALUES ('122', 'ANN A BLE', 'oM939t4tZ8ET0tzxcXF3m_ZagraU', '2015-10-10 17:36:47 890', '2', 'zh_CN', '南京', '江苏', '中国', 'http://wx.qlogo.cn/mmopen/TGylTNiaXiaIibCus7zSY7DoVNkZVoib8Cq4iciaCXqVPVfU6wU2wLhS6icFGbaTGPw0btAI0FiccccXAUAiammjVTJW9yy4tgqfiarTRm/0', '1444469834', 'o-NuVwCMsPYDuLcEKSzDFt8kND8I', '', '0');
INSERT INTO `weixinuser` VALUES ('123', '赵锦华', 'oM939t-x0OkjKeiIyfretM3t9gdA', '2015-10-10 21:55:49 767', '0', 'zh_CN', '', '', '', 'http://wx.qlogo.cn/mmopen/2WW6IXbkubQZkDiayiaZnypHkLDjO4VyfkKsU0T4BfX4DgkKUDCE6aHvgj4X46SPKZVn2JNmXRs88An7XeoVcWUffD21GR7EqJ/0', '1444485374', 'o-NuVwHjgCIs2S0DPqRCW_-VOJN0', '', '0');
INSERT INTO `weixinuser` VALUES ('125', '萌主', 'oM939twtVc_8EKOgmRYTJm4_4l_0', '2015-10-11 08:33:26 218', '2', 'zh_CN', '舟山', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/OUicWJdJoz3EcYknVQuXps98nFQcn70a46mwN2fBHiahPqUL9TM8KGLibNzo1ia8icTHDL55cd0Qdb8dwkDQkyicNvYA/0', '1444523626', 'o-NuVwP_mFHEMj1QD-0ElVSaDofo', '', '0');
INSERT INTO `weixinuser` VALUES ('128', '横店影视城会务服务～王赛锋', 'oM939t4l4Da_ZnIOt7-7K00Yc-3Q', '2015-10-14 12:44:34 370', '1', 'zh_CN', '金华', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/fMr8ceP8ibyaqFemv9reRxkn0arheOP5ygbVykckUA5qdrEz0ruNCSRpTpCXOH3vrcS6Ush8H6yUz8BnkCvvGScaloyWFgiaXe/0', '1444797906', 'o-NuVwL5kpncGHoyinp0DJeV8vkM', '', '0');
INSERT INTO `weixinuser` VALUES ('129', '横店影视城会务服务～王赛锋', 'oM939t4l4Da_ZnIOt7-7K00Yc-3Q', '2015-10-14 12:44:53 636', '1', 'zh_CN', '金华', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/fMr8ceP8ibyaqFemv9reRxkn0arheOP5ygbVykckUA5qdrEz0ruNCSRpTpCXOH3vrcS6Ush8H6yUz8BnkCvvGScaloyWFgiaXe/0', '1444797906', 'o-NuVwL5kpncGHoyinp0DJeV8vkM', '', '0');
INSERT INTO `weixinuser` VALUES ('130', '横店影视城会务服务～王赛锋', 'oM939t4l4Da_ZnIOt7-7K00Yc-3Q', '2015-10-14 12:45:25 886', '1', 'zh_CN', '金华', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/fMr8ceP8ibyaqFemv9reRxkn0arheOP5ygbVykckUA5qdrEz0ruNCSRpTpCXOH3vrcS6Ush8H6yUz8BnkCvvGScaloyWFgiaXe/0', '1444797906', 'o-NuVwL5kpncGHoyinp0DJeV8vkM', '', '0');
INSERT INTO `weixinuser` VALUES ('131', '王子腾', 'oM939t7fKLGHjV9A4lfU87UY0GSs', '2015-10-14 16:58:59 917', '1', 'zh_CN', '宁波', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/nFkwXicciclib0BticMPpY7Q5QVCZB3fRCibf4wbLbAMwEYT1jupV58niaMWS6rfLO9ia2ONosKATws08dibBI0FqvyQsaGPV4Ky5kVw/0', '1444813180', 'o-NuVwF4H58yYnoFVVM3eH2cjjVI', '', '0');
INSERT INTO `weixinuser` VALUES ('132', '蔡新飞 ', 'oM939t5UfTg4Jhr5PMZCC86CI0F4', '2015-10-19 09:11:19 184', '1', 'zh_CN', '', '蒂罗尔', '奥地利', 'http://wx.qlogo.cn/mmopen/fMr8ceP8ibyYbGzHMxpubnPtA3ote6CkO9WhjJhBodFjYLxk0oFicWv4ms9aG6iaxeYAM5Js2eTVtdmYe0bysIIVx4aBC8WHM4r/0', '1445217132', 'o-NuVwOM3nJIJAQBGpiEaXmVaffw', '', '0');
INSERT INTO `weixinuser` VALUES ('133', 'ladyai', 'oM939t0LnsyRe15azlyRLRE-WZVk', '2015-10-19 11:32:18 247', '2', 'zh_CN', '杭州', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/PiajxSqBRaEKa3cbjOiaPTQskIbjbu1pHbUf3tGDY4EpTlEWjfUvrD6HAdnC3PhBBHHZfLlgRTmlcbw5CibREeXdg/0', '1445225590', 'o-NuVwNjYYE2_JQaw276ETAgKMks', '', '0');
INSERT INTO `weixinuser` VALUES ('134', '玄青', 'oM939t27p9bEGaeY12HmT4uV48hc', '2015-10-20 00:14:25 668', '2', 'zh_CN', '伦敦', '英格兰', '英国', 'http://wx.qlogo.cn/mmopen/2WW6IXbkubTW033ysz5M4aw8gUyIX0cyGbmpFcibsZPmdicbIeTdvrzD3iaMwIbAv1hpia1knaXECptiafSSGB12bUA/0', '1445271311', 'o-NuVwDd5MI3BjC3l9JssMNvy-tM', '', '0');
INSERT INTO `weixinuser` VALUES ('135', '（烨烨妈妈）黑色幽默', 'oM939tyFGUupt7F5ReY945tdVXXA', '2015-10-21 14:32:01 667', '2', 'zh_CN', '温州', '浙江', '中国', 'http://wx.qlogo.cn/mmopen/fMr8ceP8ibyaqFemv9reRxk1j69xSHJtxgytBEzcjB1AhFpcYlnQMqoSZbqPw59kO8DHTkNEiaQ7VUhRpYg1piaoP1wsca3odOM/0', '1445409149', 'o-NuVwEbqghNqM2qfYG6oWsi15AI', '', '0');
INSERT INTO `weixinuser` VALUES ('136', '一叶知秋', 'oM939twAwVt0P2Mxk6T4nfzMHF10', '2015-10-21 15:31:42 173', '2', 'zh_CN', '', '巴黎', '法国', 'http://wx.qlogo.cn/mmopen/Q3auHgzwzM5d8ZLMX3TicCnhk7wW1xUeMequsLeH4WBbJJqfaoD885L9ZWTicAVFr6vkX2xB85bMgX5OticuNu34IkZkgKT0fUS1fA4monbqQ8/0', '1445412729', 'o-NuVwCPStJ4yKs3oMDGzvfWRFdo', '', '0');
DROP TRIGGER IF EXISTS `vote_trigger`;
DELIMITER ;;
CREATE TRIGGER `vote_trigger` AFTER INSERT ON `votes` FOR EACH ROW begin 
        update model set votes=(CASE ISNULL(`votes`) when 1 then 1 else votes + 1 end) where id = NEW.childId;
    end
;;
DELIMITER ;
