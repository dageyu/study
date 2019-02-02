$(function(){
	var show_per_page = $('#sel_page_codes').val(); //每页显示记录数
	var numbers = $('table tbody tr').length; //总记录数
	$('#current_page').val(1);//当前页
	page_load(numbers,show_per_page,$('#page_navigation'),$('table tbody tr'));
})
//开始加载  搜索和选择记录数加载分页
function page_load(nums,per_page,pageobj,tbobj){
	var pages = Math.ceil(nums/per_page); 
	var navigation_html = '';
	if(pages <= 1){
		navigation_html = '<a href="javascript:;" class="page-disabled">上一页</a><span class="page-laypage-curr"><em class="page-laypage-em"></em><em>1</em></span><a href="javascript:;" class="page-disabled">下一页</a>';
	}
	else{
		navigation_html = '<a href="javascript:;" class="page-disabled">上一页</a><span class="page-laypage-curr"><em class="page-laypage-em"></em><em>1</em></span>';
		var current_link = 1;
		while(pages > current_link){
			if(current_link == 5 && (pages - current_link > 1)){
				navigation_html += '<span class="">…</span><a href="javascript:go_to_page('+pages+');" title="尾页" data-page="'+pages+'">'+pages+'</a>';
				break;
			} else {
				navigation_html += '<a href="javascript:go_to_page(' + (current_link + 1) +')" data-page="' + (current_link + 1) +'">'+ (current_link + 1) +'</a>';
			}
			current_link++;
		}
		navigation_html += '<a href="javascript:next();" >下一页</a>';
	}
	pageobj.html(navigation_html);//分页样式
	tbobj.hide().slice(0, per_page).show();//数据全部隐藏 显示第一页数据
}
//搜索
function searchFun(obj) {
	var show_per_page = $('#sel_page_codes').val(); //每页显示记录数
	page_change(obj,show_per_page);
}
// 选择每页显示记录数
function pageFun(per_page,obj){
	var show_per_page = per_page; //每页显示记录数
	page_change(obj,show_per_page);
}
//搜索 选择记录数改变分页
function page_change(obj,show_per_page){
	$('#current_page').val(1);//当前页
	if($(obj).val() == '' || $.trim($(obj).val()).length == 0){
		var numbers = $('table tbody tr').length; //总记录数
		page_load(numbers,show_per_page,$('#page_navigation'),$('table tbody tr'));
	} else {
		$("tbody tr").each(function(){
			$(this).children('td:eq(2)').each(function(){
				if($(this).find("input").val().indexOf($(obj).val()) >= 0){
					$(this).find("input").parent().parent().show();
				}
				else{
					$(this).find("input").parent().parent().hide();
				}
			})
		});
		var numbers = $("#kbTable").find("tr[style='display: table-row;']").length; //总记录数
		page_load(numbers,show_per_page,$('#page_navigation'),$("#kbTable").find("tr[style='display: table-row;']"));
	}
}
//上一页
function previous(){
	new_page = parseInt($('#current_page').val()) - 1;
	go_to_page(new_page);
}
//下一页
function next(){
	new_page = parseInt($('#current_page').val()) + 1;
	go_to_page(new_page);
}
//跳转某一页
function go_to_page(page_num){
	var show_per_page 	= parseInt($('#sel_page_codes').val());//每页记录数
	var current_page 	= parseInt($('#current_page').val());//当前页
	var start_from 		= (page_num -1) * show_per_page;//开始显示位置
	var end_on 			= start_from + show_per_page;//结束显示位置
	var numbers			= $('table tbody tr').length;//总记录数
	var pages 			= Math.ceil(numbers/show_per_page); //分页数
	var content			= $.trim($('#sel_text').val());
	if(content == '' || content.length == 0){
		$('table tbody tr[style="display: table-row;"]').hide();
		$('table tbody tr[style="display: none;"]').slice(start_from, end_on).show();
		jump_pages(page_num,pages,current_page);
	}
	else{
		var a = 0;
		$("tbody tr").each(function(){
			$(this).children('td:eq(2)').each(function(){
				if($(this).find("input").val().indexOf($('#sel_text').val()) >= 0){
					$(this).find("input").parent().parent().show();
					$(this).find("input").parent().parent().attr('data-obj','1');
					a += $(this).find("input").parent().parent().length;
				}
			});
		});
		$("#kbTable").find("tr[data-obj='1']").hide();
		$("#kbTable").find("tr[data-obj='1']").slice(start_from, end_on).show(); //总记录数
		jump_pages(page_num,Math.ceil(a/show_per_page),current_page);
	}
	$('#current_page').val(page_num);
}
//点击上一页 样式是否改变
function page_prev(state,tableid){
	if(state == 1){
		$('#'+tableid+'').children('a:first-child').replaceWith('<a href="javascript:previous();" >上一页</a>');
	} else {
		$('#'+tableid+'').children('a:first-child').replaceWith('<a href="javascript:;" class="page-disabled" >上一页</a>');
	}
}
//点击下一页 样式是否改变
function page_next(state,tableid){
	if(state == 1){
		$('#'+tableid+'').children('a:last-child').replaceWith('<a href="javascript:next();" >下一页</a>');
	} else {
		$('#'+tableid+'').children('a:last-child').replaceWith('<a href="javascript:;" class="page-disabled" >下一页</a>');
	}
}
//跳转某一页
function jump_pages(page_num,pages,current_page){
	//总页数 < 7
	if(pages < 7){
		if(page_num == 1){
			page_prev(0,'page_navigation');
			page_next(1,'page_navigation');
		}
		else if(page_num == pages){
			page_prev(1,'page_navigation');
			page_next(0,'page_navigation');
		}
		else {
			page_prev(1,'page_navigation');
			page_next(1,'page_navigation');
		}
		$('.page-laypage-curr').replaceWith('<a href="javascript:go_to_page(' + current_page +')" data-page="' + current_page +'">'+ current_page +'</a>');
		$('a[data-page=' + page_num +']').replaceWith('<span class="page-laypage-curr"><em class="page-laypage-em"></em><em>'+page_num+'</em></span>');
	}
	else{
		//跳到第1页
		if(page_num == 1){
			page_change('#sel_text',parseInt($('#sel_page_codes').val()));
		}
		else if(page_num <= 3){
			var navigation_html = '', current_link = 3;
			if(page_num == 2){
				navigation_html = '<a href="javascript:previous();" >上一页</a><a href="javascript:go_to_page(1)" data-page="1">1</a><span class="page-laypage-curr"><em class="page-laypage-em"></em><em>2</em></span>';
			}
			else{
				navigation_html = '<a href="javascript:previous();" >上一页</a><a href="javascript:go_to_page(1)" data-page="1">1</a><a href="javascript:go_to_page(2)" data-page="2">2</a><span class="page-laypage-curr"><em class="page-laypage-em"></em><em>3</em></span>';
				current_link++;
			}
			while(7 > current_link){
				if(current_link == 6){
					navigation_html += '<span class="">…</span><a href="javascript:go_to_page('+pages+');" title="尾页" data-page="'+pages+'">'+pages+'</a>';
					break;
				} else {
					navigation_html += '<a href="javascript:go_to_page(' + current_link +')" data-page="' + current_link  +'">'+ current_link +'</a>';
				}
				current_link++;
			}
			navigation_html += '<a href="javascript:next();" >下一页</a>';
			$('#page_navigation').html(navigation_html);
		}
		else if(pages >= 7 && page_num > 3){
			var navigation_html = '';
			navigation_html = '<a href="javascript:previous();" >上一页</a><a href="javascript:go_to_page(1)" data-page="1">1</a><span class="">…</span>';
			if((pages - page_num) > 3 ){
				navigation_html += '<a href="javascript:go_to_page('+(page_num - 1)+')" data-page="'+(page_num - 1)+'">'+(page_num - 1)+'</a><span class="page-laypage-curr"><em class="page-laypage-em"></em><em>'+page_num+'</em></span><a href="javascript:go_to_page('+(page_num + 1)+')" data-page="'+(page_num + 1)+'">'+(page_num + 1)+'</a>';
				navigation_html += '<span class="">…</span><a href="javascript:go_to_page('+pages+');" title="尾页" data-page="'+pages+'">'+pages+'</a><a href="javascript:next();" >下一页</a>';
			}
			else{
				if((pages - page_num) == 3 ){
					navigation_html += '<a href="javascript:go_to_page('+(page_num - 1)+')" data-page="'+(page_num - 1)+'">'+(page_num - 1)+'</a><span class="page-laypage-curr"><em class="page-laypage-em"></em><em>'+page_num+'</em></span><a href="javascript:go_to_page('+(page_num + 1)+')" data-page="'+(page_num + 1)+'">'+(page_num + 1)+'</a>';
					navigation_html += '<a href="javascript:go_to_page('+(page_num + 2)+')" data-page="'+(page_num + 2)+'">'+(page_num + 2)+'</a><a href="javascript:go_to_page('+pages+');" title="尾页" data-page="'+pages+'">'+pages+'</a><a href="javascript:next();" >下一页</a>';
				}
				else if((pages - page_num) == 2 ){
					navigation_html += '<a href="javascript:go_to_page('+(page_num - 2)+')" data-page="'+(page_num - 2)+'">'+(page_num - 2)+'</a><a href="javascript:go_to_page('+(page_num - 1)+')" data-page="'+(page_num - 1)+'">'+(page_num - 1)+'</a><span class="page-laypage-curr"><em class="page-laypage-em"></em><em>'+page_num+'</em></span>';
					navigation_html += '<a href="javascript:go_to_page('+(page_num + 1)+')" data-page="'+(page_num + 1)+'">'+(page_num + 1)+'</a><a href="javascript:go_to_page('+pages+');" title="尾页" data-page="'+pages+'">'+pages+'</a><a href="javascript:next();" >下一页</a>';
				}
				else if((pages - page_num) == 1 ){
					navigation_html += '<a href="javascript:go_to_page('+(page_num - 3)+')" data-page="'+(page_num - 3)+'">'+(page_num - 3)+'</a><a href="javascript:go_to_page('+(page_num - 2)+')" data-page="'+(page_num - 2)+'">'+(page_num - 2)+'</a><a href="javascript:go_to_page('+(page_num - 1)+')" data-page="'+(page_num - 1)+'">'+(page_num - 1)+'</a>';
					navigation_html += '<span class="page-laypage-curr"><em class="page-laypage-em"></em><em>'+page_num+'</em></span><a href="javascript:go_to_page('+pages+');" title="尾页" data-page="'+pages+'">'+pages+'</a><a href="javascript:next();" >下一页</a>';
				}
				else{
					navigation_html += '<a href="javascript:go_to_page('+(page_num - 4)+')" data-page="'+(page_num - 4)+'">'+(page_num - 4)+'</a><a href="javascript:go_to_page('+(page_num - 3)+')" data-page="'+(page_num - 3)+'">'+(page_num - 3)+'</a><a href="javascript:go_to_page('+(page_num - 2)+')" data-page="'+(page_num - 2)+'">'+(page_num - 2)+'</a>';
					navigation_html += '<a href="javascript:go_to_page('+(page_num - 1)+')" data-page="'+(page_num - 1)+'">'+(page_num - 1)+'</a><span class="page-laypage-curr"><em class="page-laypage-em"></em><em>'+page_num+'</em></span><a href="javascript:;" class="page-disabled">下一页</a>';
				}
			}
			$('#page_navigation').html(navigation_html);
		}
	}
}