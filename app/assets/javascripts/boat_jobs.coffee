# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->
	$('.new_boat_job').on 'submit', ->
			window.job_section = $(this).closest('.job').attr('id')

	$('.new_job_boat').on 'submit', ->
			window.boat_section = $(this).closest('.boat').attr('id')
			

	$(document).on 'ajax:success', '.delete_j', ->
		# console.log('worked')
		$(this).closest('.list-group-item').remove()

	$(document).on 'ajax:success', '.delete_b', ->
	# console.log('worked')
		$(this).closest('.list-group-item').remove()