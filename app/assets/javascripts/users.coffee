# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->
$('.edit_user').on 'submit', ->
		# console.log(this)
		window.user_section $(this).closest('.user').find('.user').attr('id')