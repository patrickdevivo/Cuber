###
Cuber.coffee Rubik's Cube Solver

Orientation of cube:
Looking down, white on top (facing viewer), orange north of white, blue east of white, green west of white, red south of white, yellow facedown.
To change orientation to a face, make shortest move of cube e.g. to get to green from starting orientation turn whole cube east so that white is on the right
For yellow face, flip cube once from white so that blue is on right, green left
###

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
				
			get_row: (num) -> # returns array of rows of a face on a cube - if no/improper row, returns array of all rows
				num = num - 1
				rows = [] for row in [3..1]
				rows[0] = [@face[0], @face[1], @face[2]]
				rows[1] = [@face[3], @face[4], @face[5]]
				rows[2] = [@face[6], @face[7], @face[8]]
				
				if num == 0 or num == 1 or num == 2
					row = rows[num]
				else
					row = rows
				return row
					
			get_col: (num) -> # returns array of columns of a face on a cube - if no/improper column, returns array of all columns
				num = num - 1
				cols = [] for col in [3..1]
				cols[0] = [@face[0], @face[3], @face[6]]
				cols[1] = [@face[1], @face[4], @face[7]]
				cols[2] = [@face[2], @face[5], @face[8]]
				
				if num == 0 or num == 1 or num == 2
					col = cols[num]
				else
					col = cols
				return col
				
			set_row: (num, input) -> # set a row on a face of the cube
				if !input or !num
					console.log "Error"
				else
					if num == 1
						@face[0] = input[0]
						@face[1] = input[1]
						@face[2] = input[2]
					else if num == 2
						@face[3] = input[0]
						@face[4] = input[1]
						@face[5] = input[2]
					else if num == 3
						@face[6] = input[0]
						@face[7] = input[1]
						@face[8] = input[2]
					else
						console.log 'Input row out of range'
				
			set_col: (num, input) -> # set a column on a face of the cube
				if !input or !num
					console.log "Error"
				else
					if num == 1
						@face[0] = input[0]
						@face[3] = input[1]
						@face[6] = input[2]
					else if num == 2
						@face[1] = input[0]
						@face[4] = input[1]
						@face[7] = input[2]
					else if num == 3
						@face[2] = input[0]
						@face[5] = input[1]
						@face[8] = input[2]
					else
						console.log 'Input column out of range'
						
			display: () ->
				console.log @face
		
		# initiate the six faces on a cube
		@white	=	new Face "White", cube
		@green	=	new Face "Green", cube
		@red	=	new Face "Red", cube
		@blue	=	new Face "Blue", cube
		@orange	=	new Face "Orange", cube
		@yellow	=	new Face "Yellow", cube
	
	turn: (color, direction) ->
		if !color
			console.log "Error: enter a color (white, green...)"
		else if !direction
			consolore.log "Error: enter a direction (cw or ccw)"
		else if color and direction
			color = color.toLowerCase()
			short = color.toUpperCase().charAt 0
			face = this[color]
			row = [face.get_row(1), face.get_row(2), face.get_row(3)]
			
			if short == 'W' # face is white
				left = @green
				top = @orange
				right = @blue
				bottom = @red
				opposite = @yellow
			else if short == 'G' # face is green
				left = @yellow
				top = @orange
				right = @white
				bottom = @red
				opposite = @blue
			else if short == 'B' # face is blue
				left = @white
				top = @orange
				right = @yellow
				bottom = @red
				opposite = @green
			else if short == 'O' # face is orange
				left = @green
				top = @yellow
				right = @blue
				bottom = @white
				opposite = @red
			else if short == 'R' # face is red
				left = @green
				top = @white
				right = @blue
				bottom = @yellow
				opposite = @orange
			else if short == 'Y' # face is yellow
				left = @green
				top = @red
				right = @blue
				bottom = @orange
				opposite = @white
			else
				console.log "Uh oh"
	
			if direction == 'cw' # turn the face clockwise

				# change the face being turned
				face.set_col(3, row[0]) # row 1 -> col 3
				face.set_col(2, row[1]) # row 2 -> col 2
				face.set_col(1, row[2]) # row 3 -> col 1
				
				# change the other faces effected by the turn
				before_turn = [
					left.get_col(3)
					top.get_row(3)
					right.get_col(1)
					bottom.get_row(1)
				]
				
				left.set_col(3, before_turn[3])
				top.set_row(3, before_turn[0])
				right.set_col(1, before_turn[1])
				bottom.set_row(1, before_turn[2])
				
				

			# else if direction == 'ccw'
			
	display: => # outputs the arrangement of the six faces of the cube
		console.log "White: " + @white.face
		console.log "Green: " + @green.face
		console.log "Red: " + @red.face
		console.log "Blue: " + @blue.face
		console.log "Orange: " + @orange.face
		console.log "Yellow: " + @yellow.face


c = new Cube "Rubik's"
c.white.cw()

c.display()