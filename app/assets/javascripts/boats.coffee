# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->
	$('.new_job_boat').on 'submit', ->
			window.boat_section = $(this).closest('.boat').attr('id')

	$('.new_boat').on 'submit', ->
		window.job_section = $(this).closest('.job').attr('id')

	$('.destroy').on 'ajax:sucess', ->
			# console.log('worked')
		$(this).closest('.boat').remove()
