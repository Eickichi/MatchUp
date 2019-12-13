$(function() {
			$('.join').on('click',function(e) {
				e.preventDefault();
				$(this).removeClass('join').addClass('joined');
				$(this).text('REQUEST SENT...');
			});
			$('.thumbnail').on('mouseover',function() {
				$(this).find('.img-holder').css('top','-30px');
			});
			$('.thumbnail').on('mouseout',function() {
				$(this).find('.img-holder').css('top','-20px');
			});
});