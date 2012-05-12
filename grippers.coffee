positions = {
	A: ''
	B: ''
	C: ''
	D: ''
	E: ''
	F: ''
}

machine_moves = ''

execute = (turns) ->
	if typeof turns == 'string'
		turns = _.chars(turns)
	
	_.each(turns, (face, index)->
		face = face.charAt(0)
		switch face
			when face.toLowerCase() # if face is uppercase
				direction = 'cw'
			when face.toUpperCase() # if face is lowercase
					direction = 'ccw'	
		face = face.toLowerCase()
		
	)