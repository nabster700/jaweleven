$(document).on('click','.unsubcomm',function(){
	ShowLoading();
	var $this = $(this);
	$.post(dle_root+"engine/ajax/subscribe.php",{post_id:$('#post_id').val()},function(d){
		HideLoading();
		if(d.error) DLEalert(d.error,"Ошибка");
		else $this.html(d.html);
	},"json");
});
