doctype 5
html ->
	head ->
		title @title
		script src: 'https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js'
		coffeescript ->
			$ ->
				$('#scrambled').click(()->
					$.get('/scrambled', (data)->
						$('#output').html(data)
					)
				)

	body ->
		button '#scrambled', 'Scrambled'
		
		form ->
			textarea '#output', ''