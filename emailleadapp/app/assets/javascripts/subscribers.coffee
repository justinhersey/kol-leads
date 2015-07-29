# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#subscribe form submit
$(document).ready ->
	$("#new_subscriber").on("ajax:success", (e, data, status, xhr) ->
		$("#subscriber_email").val("")
		$(".modal-dialog").fadeIn()
	).on "ajax:error", (e, xhr, status, error) ->
		$("#subscriber_email").css("background:red")

	$(".modal-dialog").find(".close").on "click", (event) ->
		$(this).parents(".modal-dialog").fadeOut()
		event.preventDefault()
