class Cube
	@id : Math.random()*Math.random() # maybe unnecessary, but in case there are multiple cubes floating around
	constructor: (@name) ->
		this.initiate_faces(this)
	
	initiate_faces: =>
		cube = this # important
		class Face
			constructor: (@color, @cube) ->
				short = color.toUpperCase().charAt 0
				@face = (short for sqs in [9..1])

			cw: () -> # turn the face clockwise by calling the turn method on the cube object
				@cube.turn(@color, 'cw')
				
			ccw: () -> # turn the face counter-clockwise by calling the turn method on the cube object
				@cube.turn(@color, 'ccw')
				
			fetch_row: (num) => # returns array of rows of a face on a cube - if no/improper row, returns array of all rows
				num = num - 1
				rows = [] for row in [3..1]
				rows[0] = [@face[0], @face[1], @face[2]]
				rows[1] = [@face[3], @face[4], @face[5]]
				rows[2] = [@face[6], @face[7], @face[8]]
				
				if num == 1 or num == 2 or num == 3
					row = rows[num]
				else
					row = rows
				return {
					row: row
				}
				
			fetch_col: (num) => # returns array of columns of a face on a cube - if no/improper column, returns array of all columns
				num = num - 1
				cols = [] for col in [3..1]
				cols[0] = [@face[0], @face[3], @face[6]]
				cols[1] = [@face[1], @face[4], @face[7]]
				cols[2] = [@face[2], @face[5], @face[8]]
				
				if num == 1 or num == 2 or num == 3
					col = cols[num]
				else
					col = cols
				return {
					col: col
				}
				
			set_row: (num) =>
				
			set_col: (num) =>
		
		# initiate the six faces on a cube
		@white	=	new Face "White", cube
		@green	=	new Face "Green", cube
		@red	=	new Face "Red", cube
		@blue	=	new Face "Blue", cube
		@orange	=	new Face "Orange", cube
		@yellow	=	new Face "Yellow", cube
	
	turn: (color, direction) =>
		if !color
			console.log "Error: enter a color (white, green...)"
		if !direction
			consolore.log "Error: enter a direction (cw or ccw)"
		if color and direction
			color = color.toLowerCase()
			short = color.toUpperCase().charAt 0
			face = this[color].face
			
			#TODO: track faces relative to face being turned and make turns below
			
			if direction == "cw"
				console.log "Turn face " + face + " cw"
			if direction == "ccw"
				console.log "Turn face " + face + " ccw"
			
	display: => # outputs the arrangement of the six faces of the cube
		console.log @white.face
		console.log @green.face
		console.log @red.face
		console.log @blue.face
		console.log @orange.face
		console.log @yellow.face


c = new Cube "Rubik's"

console.log c.white.fetch_col()