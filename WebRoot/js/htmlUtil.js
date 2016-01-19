/**
 * 拼接HTML的合集文件
 * 
 * 主要处理Ajax后台获取到的数据，进行html的拼接
 * 
 * 
 * @author wenky
 * @since 2016-1-4
 */



/**
 * 合作伙伴
 * 
 * @param data
 * @param len
 * @returns {String}
 */ 
function getHTMLForParters(data,len){
	if(!data){
		return '';
	}
	
	var arr = data;
	var html = '';
	if(!len)
	{
		len = arr.length+1;
	}
	for(var i=0;i<arr.length;i++){
		if(i >= len){
			break;
		}
		html+='<div class="col-md-4 t-5 b-5"><a href="' + arr[i].parterUrl + '" target="_blank"><img src="images/' + arr[i].logo + '" alt="' + arr[i].parterName + '" /></a></div>';
	}
	
	return html;
}


/**
 * 导师信息 
 * 
 * @param data
 * @returns {String}
 */
function getHTMLForTeachers(data){
	if(!data){
		return '';
	}
	
	var arr = data;
	var html = '';
	
	var idx = 0;
	for(var i=0;i<arr.length;i++){
		if(!arr[i].isShow && arr[i].isShow == 0){
			continue;
		}
		html+='<div class="video-list b-30 pull-left pr-'+ (idx%4==3 ? 18 : 20 )+'">';
		html+='	<div class="clearfix"><div class="video-img"><a href="queryTeacher.do?id='+arr[i].id+'" title="'+arr[i].name+'" target="_blank" rel="bookmark"> ';
		html+='		<img class="lazyloadimg" src="'+arr[i].photo+'" alt="'+arr[i].name+'" /></a></div></div>';
		html+='	<div style="margin-top: 8px;"><h1><a href="queryTeacher.do?id='+arr[i].id+'" title="'+arr[i].name+'" rel="bookmark" target="_blank">'+arr[i].name+'</a></h1></div>';
		html+='	<div class="myxm"><span class="two">'+arr[i].title+'</span></div>';
		html+='	<p class="fc666 t-5" style="margin-bottom: 0px; height: 134px;">'+arr[i].summary+'</p>';
		html+='</div>';
		idx += 1;
	}
	
	return html;
}

/**
 * 联盟单位
 * 
 * @param data
 * @returns {String}
 */
function getHTMLForUnits(data, len){
	if(!data){
		return '';
	}
	
	var arr = data;
	var html = '';
	
	if(len == undefined || len  == null){
		len = arr.length;
	}
	
	var length = arr.length > len ? len : arr.length;
	for(var i=0;i<length;i++){
		
		html += '<div class="topic-list b-20">';
		html += '   <div class="clearfix">';
		html += '	    <div class="span1 pull-left"><a href="javascript:;" rel="bookmark" title="'+arr[i].name +'" target="_blank"> <img class="lazyloadimg" alt="'+arr[i].name +'" src="'+arr[i].logo+'" /></a></div>';
		html += '	    <div class="offset1 intro"><h1><a href="' + arr[i].url + '" title="'+arr[i].name +'" rel="bookmark" target="_blank">'+arr[i].name+'</a></h1></div>';
		html += '   </div>';
		html += '   <div class="intro l-20"><p class="t-15 fc666 mmbuttom">'+arr[i].title +'<br/>'+arr[i].services +'</p></div>';
		html += '</div>';
	}
	
	return html;
}

/**
 * 赛事列表
 * 
 * @param data
 * @param len 数字，要拼接的内容长度
 * @returns {String}
 */
function getHTMLForUnits2(data){
    if(!data){
        return '';
    }
    
    var html = '';
    for(var i=0;i < data.length; i++){
        html+='<div class="span12 border-b small b-20">'
        	+'  <div class="span4">'
		    +'    <img src="/'+data[i].logo+'" alt="'+data[i].name +'" style="width:50%" class="img-responsive" />'
		    +'  </div>'
		    +'  <div class="span7">'
		    +'    <h1 class="b-10"><a href="' + data[i].url + '" title="'+data[i].name +'" target="_blank">'+data[i].name+'</a></h1>'
		    +'    <p><span class="glyphicon glyphicon-bullhorn"></span> ' + data[i].philosophy + '&nbsp;&nbsp; <span class="glyphicon glyphicon-bookmark"></span> '+data[i].words+'</p>'
		    +'    <p>'+data[i].title+'<br/>'
		    +'       '+data[i].services+'<br/>'
		    +'       '+data[i].qualification+'</p>'
		    +'  </div>'
        	+'</div>';
    }
    
    return html;
}

/**
 * 生成新闻html
 * 
 * 赛程报道 / 欧洲游学
 * 
 * @param data
 * @returns {String}
 */
function getHTMLForInformation(data){
	if(!data){
		return '';
	}
	
	var arr = data;
	var html = '';
	
	if(arr.length == 0){
		return '还没有相关记录。敬请期待！';
	}
	
	for(var i=0;i < arr.length; i++){
		html+='<div><span class="glyphicon glyphicon-bullhorn" style="margin-right:5px;"></span><a href="'
			+ arr[i].url+'" target="_blank">'+arr[i].name + '</a> -- ' + arr[i].pubDate
			+ '</div>';
	}
	
	return html;
}

/**
 * 新闻信息 
 * 
 * @param data
 * @param len 数字，要拼接的内容长度
 * @returns {String}
 */
function getHTMLForNews(data, len){
    if(!data){
        return '';
    }
    
    var html = '';
    for(var i=0;i < len; i++){
        if(i >= data.length){
            break;
        }
        html+='<div title="'+data[i].title+'"><span class="glyphicon glyphicon-bullhorn" style="margin-right:5px;"></span><a href="'
            + data[i].url+'" target="_blank">'+sub(data[i].title, 30) + '</a> -- ' + data[i].publisher
            + '</div>';
    }
    
    return html;
}

/**
 * 赛事列表
 * 
 * @param data
 * @param len 数字，要拼接的内容长度
 * @returns {String}
 */
function getHTMLForMatchs(data, len){
    if(!data){
        return '';
    }
    
    var html = '';
    for(var i=0;i < len; i++){
        if(i >= data.length){
            break;
        }
        html+='<div class="span4">'
		    +'    <img src="images/'+data[i].publicize+'" alt="国际闪耀之城" style="margin-bottom:30px;" class="img-responsive" />'
		    +'</div>'
		    +'<div class="span7">'
		    +'    <h1><a href="childModel/index.jsp" target="_blank">'+data[i].name+'</a></h1>'
		    +'    <p><span class="glyphicon glyphicon-user"></span> 举办方 <a href="#">国际闪耀之城</a>&nbsp;&nbsp; <span class="glyphicon glyphicon-calendar"></span> 1<sup>th</sup>June 2015 &nbsp;&nbsp; <span class="glyphicon glyphicon-bookmark"></span> <a href="#">闪耀之城</a>,<a href="#">童模</a></p>'
		    +'    <p>'+sub(data[i].description, 150)+'</p>'
		    +'</div>';
    }
    
    return html;
}
/**
 * 首页赛事列表，只显示前3个
 * 
 * @param data
 * @param len 数字，要拼接的内容长度
 * @returns {String}
 */
function getHTMLForMatchsInIndex(data, len){
	if(!data){
		return '';
	}
	
	var html = '';
	var i = data.length - 1;
	for(;i >= 0; i--){
		if(i < (data.length - len)){
			break;
		}
		html+=	'<div class="news-list b-30 clearfix">'
			+'	<div class="spanm3 pull-left" style="padding-top: 7px;">'
			+'		<a href="javascript:;" rel="bookmark" title="'+data[i].name+'"'
			+'			style="display: block;" target="_blank"> <img'
			+'			src="images/'+data[i].publicize+'" />'
			+'		</a>'
			+'	</div>'
			+'	<div class="offsetindex3 intro">'
			+'		<h1>'
			+'			<a href="javascript:;" title="'+data[i].name+'" rel="bookmark"'
			+'				target="_blank">'+data[i].name+'</a>'
			+'		</h1>'
			+'		<p class="t-5 fc666" style="margin-bottom: 0px;">'+data[i].description+'</p>'
			+'		<div class="myxm">'
			+'			<span><a href="">北京</a></span> <span class="two"><a'
			+'				href="">项目分类</a></span> 2013/03/02'
			+'		</div>'
			+'		<div class="clearfix">'
			+'			<a class="follow-btn pr-10 ie6png news-follow-btn"'
			+'				href="javascript:void(0);" title="1人关注	2人分享	3人评论"'
			+'				data-id="104423" data-type="news">6人</a> <a'
			+'				class="read-btn ie6png" href="javascript:void(0);"'
			+'				title="370次阅读">370次</a>'
			+'		</div>'
			+'	</div>'
			+'</div>';
	}
	
	return html;
}

/**
 * 组装国际联动html
 * @param data
 * @param len
 */
function getHTMLForInternal(data, len){
	if(!data){
		return '';
	}
	
	var html = '';
	var i = data.length - 1;
	for(;i >= 0; i--){
		if(i < (data.length - len)){
			break;
		}
		html+='<div class="span12 b-30">'
			+'	<div class="span4">'
			+'		<img src="/' + data[i].logo + '" alt="' + data[i].name + '" class="img-responsive" />'
			+'	</div>'
			+'	<div class="span7">'
			+'		<h1><a href="/queryInternal.do?id=' + data[i].id + '" target="_blank">' + data[i].name + '</a></h1>'
			+'		<p><span class="glyphicon glyphicon-bookmark"></span>' + data[i].words + '</p>'
			+'		<p>' + sub(data[i].title, 200) + '</p>'
			+'	</div>'
			+'</div>';
	}
	
	return html;
}

/**
 * 组装国际联动html
 * @param data
 * @param len
 */
function getHTMLForCase(data, len){
	if(!data){
		return '';
	}
	
	var html = '';
	var i = data.length - 1;
	for(;i >= 0; i--){
		if(i < (data.length - len)){
			break;
		}
		html+='<div class="span6 embed-responsive embed-responsive-16by9 center b-15">'
			+'	<iframe id="video_iframe1" class="embed-responsive-item" src="' + data[i].url + '" style="width: 100%;height: 400px;"></iframe>'
			+'	<span style="font-size:24px;">' + data[i].title + '</span>'
			+'</div>';
	}
	
	return html;
}

/**
 * 字符串截取函数
 * @param str  要截取的字符串
 * @param len  要保留的长度
 * @returns
 */
function sub(str, len){
	
	if(str.length > len){
		return str.substring(0,len) + "...";
	}
	return str;
}