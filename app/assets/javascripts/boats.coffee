# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->
	# $('.new_job_boat').on 'submit', ->
	# 		window.boat_section = $(this).closest('.boat').attr('id')

	# $('.new_boat').on 'submit', ->
	# 	window.boat_section = $(this).closest('.boat').attr('id')

	$('.destroy_boat').on 'ajax:success', ->
			# console.log('worked')
		$(this).closest('.boat').remove()
