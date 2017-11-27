# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->
$('.new_job').on 'submit', ->
		# console.log(this)
		# window.job_section = $(this).closest('.jobs').find('.job').attr('id')


		$(document).on 'turbolinks:load', ->
			$('.destroy').on 'ajax:sucess', ->
# 		# console.log('worked')
				$(this).closest('.job').remove