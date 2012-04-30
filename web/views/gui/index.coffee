doctype 5
html ->
	head ->
		title @title
		script src: 'https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js'
		coffeescript ->
			$ ->
				$('#scrambled').click(()->
					$.get('/scrambled', (data)->
						cube = data
						$('#output').html('').html(JSON.stringify(cube))
					)
				)

				$('#new').click(()->
					$.get('/new', (data)->
						cube = data
						$('#output').html('').html(JSON.stringify(cube))
					)
				)
				
				$('#test').click(()->
					$.get('/solver', (data)->
						cube = data
						$('#output').html('').html(JSON.stringify(cube))
					)
				)

	body ->
		button '#scrambled', 'Scrambled'
		button '#new', 'New'
		button '#test', 'Test'
		
		form ->
			textarea '#output', ''