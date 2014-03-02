$(document).ready(function(){
	$('.details').hide();

	$('.row').click(function(){
		$(this).next('.details').toggle();
	})
})