// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets

$(function(){
	$('#cancel').click(function(){
		$('#modal-id .glyphicon').each(function(index,element){
			$(element).removeClass('glyphicon-remove').removeClass('glyphicon-ok');
		});
		$('#modal-id .form-group').each(function(){
			$(this).removeClass('has-success').removeClass('has-error');
		});
		$('#success-alert').addClass('hidden');
	});
	$('#save').click(function(){
		var formValid= true;

		$('input').each(function(){
			// find the form group to set our success/error
			var formGroup = $(this).parents('.form-group');
			//find the glyphicon to show our check or X
			var glyphicon  = formGroup.find('.glyphicon');

			// use HTML5 checkValidity function
			if(this.checkValidity()) {
				// show green, remove referenced
				formGroup.addClass('has-success').removeClass('has-error');
				// show check, remove X
				glyphicon.addClass('glyphicon-ok').removeClass('glyphicon-remove');
			} else {
				// show red, remove green
				formGroup.addClass('has-error').removeClass('has-success');
				// show X, remove check
				glyphicon.addClass('glyphicon-remove').removeClass('glyphicon-ok');
				formValid = false;
			}
		});

		if(formValid) {
			// hide modal dialog
			$('#modal-id').modal('hide');
			// showkalert
			$('#success-alert').removeClass('hidden');
		}
	});
})
