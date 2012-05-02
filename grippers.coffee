positions = {
	A: ''
	B: ''
	C: ''
	D: ''
	E: ''
	F: ''
}

execute = (face) ->
	face = face.charAt(0)
	if !direction # get direction from face case (capitialized or not)
		switch face
			when face.toLowerCase() # if face is uppercase
				direction = 'cw'
			when face.toUpperCase() # if face is lowercase
				direction = 'ccw'
				
	face = face.toLowerCase()