
/**
 * 生成分页控件
 * 
 * @param obj 分页组件ul
 * @param curPage 当前页数
 * @param countPage 总页数
 * @param totalData 总记录数
 */
function gePager(obj, curPage, countPage, totalData){
	var pager = $(obj);
	
	pager.empty();
	
	if(curPage <= 1){
		pager.append('<li class="am-disabled"><a href="javascript:;">«</a></li>');
	}else{
		pager.append('<li ><a href="javascript:;" onclick="toPage('+ (curPage - 1)+')">«</a></li>');
	}
	pager.append('<li class="am-active"><a href="javascript:;">'+curPage+'</a></li>');
	
	if(curPage >= countPage){
		pager.append('<li class="am-disabled"><a href="javascript:;">»</a></li>');
	}
	else{
		pager.append('<li><a href="javascript:;" onclick="toPage('+ (curPage + 1)+')">»</a></li>');
	}
}

