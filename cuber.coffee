_und = require "./underscore.min"

class Cube
	constructor: (@name) ->
	
	class Face
		constructor: (@color) ->
			short = color.toUpperCase().charAt 0
			@face = (short for sqs in [9..1])
			
			# @row = ([] for rows in [3..1])
			# @row[0] = [@face[0], @face[1], @face[2]]
			# @row[1] = [@face[3], @face[4], @face[5]]
			# @row[2] = [@face[6], @face[7], @face[8]]
			# 
			# @col = ([] for cols in [3..1])
			# @col[0] = [@face[0], @face[3], @face[6]]
			# @col[1] = [@face[1], @face[4], @face[7]]
			# @col[2] = [@face[2], @face[5], @face[8]]
						
		cw: (@color) ->
			
			# @col[2] = @row[0]
			# @col[1] = @row[1]
			# @col[0] = @row[2]

		
	white	:	new Face "White"
	green	:	new Face "Green"
	red		:	new Face "Red"
	blue	:	new Face "Blue"
	orange	:	new Face "Orange"
	yellow	:	new Face "Yellow"
	
	display: =>
		console.log @white.face
		console.log @green.face
		console.log @red.face
		console.log @blue.face
		console.log @orange.face
		console.log @yellow.face

cube = new Cube("Rubik's")

cube.white.cw()