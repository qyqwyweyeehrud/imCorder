/**
 * 
 */

let goPage = function(nowPage){
	$('#nowPage').val(nowPage);
	$('#frm').attr('action','select.mm').submit();
}