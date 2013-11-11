# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready =>

	#for dashboard screen 

	if document.location.pathname == '/dashboard'
		subjectlist = []
		$.ajax({
			url:'/subjects.json'
			type: 'GET'
			success: (response, ev) ->
				$.each response, (key, item) =>
					subjectlist.push(item)
			})
		$("#subjects").tokenInput(subjectlist, 
			{searchDelay: 300, preventDuplicates: true, prePopulate: $("#name").data("pre"),
			tokenFormatter: (item) ->  "<li><p><a href='/subjects/#{item.id}/my_assignments'>#{item.name}</a></p></li>",
			onAdd: =>
				$('#edit_user_1').submit()
			onDelete: =>
				$('#edit_user_1').submit()
			});