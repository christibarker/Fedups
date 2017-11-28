# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->
	# $('.new_boat_job').on 'submit', ->
	# 		window.job_section = $(this).closest('.job').attr('id')

	$('.new_job').on 'submit', ->
		window.job_section = $(this).closest('.job').attr('id')

	$('.destroy_job').on 'ajax:success', ->
		# console.log('worked')
		$(this).closest('.job').remove()

