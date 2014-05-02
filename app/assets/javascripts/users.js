$(document).ready(function(){


	$('.info').click(function(){
		$(this).parent().parent().next('.details').toggleClass('show');
	})
})