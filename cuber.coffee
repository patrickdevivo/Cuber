_ = require './underscore.min.js'
_.str = require './underscore.string.min.js'
_.mixin(_.str.exports())
_.str.include('Underscore.string', 'string')
# $ = require 'jquery'

class Cube
	constructor: (@name, @empty = false) ->
		@id = _.uniqueId()
		cube = this
		class Edge
			constructor: (id) ->
				if id.length == 2
					# @position = {}
					# @position[id.charAt 0] = id.charAt 0
					# @position[id.charAt 1] = id.charAt 1
					this[id.charAt 0] = id.charAt 0
					this[id.charAt 1] = id.charAt 1
				else
					console.log "Invalid edge id"
				
		class Corner
			constructor: (id) ->
				if id.length == 3
					# @position = {}
					# @position[id.charAt 0] = id.charAt 0
					# @position[id.charAt 1] = id.charAt 1
					# @position[id.charAt 2] = id.charAt 2
					this[id.charAt 0] = id.charAt 0
					this[id.charAt 1] = id.charAt 1
					this[id.charAt 2] = id.charAt 2
				else
					console.log "Invalid corner id"
		class Face
			constructor: (@color) ->

				
			display: ->
				# TODO: display values on face
				
			cw: () ->
				cube.turn(this.color, 'cw')
				
			ccw: () ->
				cube.turn(this.color, 'ccw')
				
		# edges
		@edges = {}	
		@edges['wg'] = new Edge 'wg'
		@edges['wo'] = new Edge 'wo'
		@edges['wb'] = new Edge 'wb'
		@edges['wr'] = new Edge 'wr'

		@edges['yg'] = new Edge 'yg'
		@edges['yr'] = new Edge 'yr'
		@edges['yb'] = new Edge 'yb'
		@edges['yo'] = new Edge 'yo'

		@edges['go'] = new Edge 'go'
		@edges['ob'] = new Edge 'ob'
		@edges['br'] = new Edge 'br'
		@edges['rg'] = new Edge 'rg'

		# corners
		@corners = {}
		@corners['wgo'] = new Corner 'wgo'
		@corners['wob'] = new Corner 'wob'
		@corners['wbr'] = new Corner 'wbr'
		@corners['wrg'] = new Corner 'wrg'

		@corners['ygr'] = new Corner 'ygr'
		@corners['yrb'] = new Corner 'yrb'
		@corners['ybo'] = new Corner 'ybo'
		@corners['yog'] = new Corner 'yog'
	
		# faces
		@white	= new Face 'white'
		@green	= new Face 'green'
		@orange	= new Face 'orange'
		@blue	= new Face 'blue'
		@red	= new Face 'red'
		@yellow	= new Face 'yellow'
		
	display: ->
		console.log this.edges
		console.log this.corners
		
	check: ->
		# check = true
		# _.each this.edges, (element, index, list)->
		# 	if index != element
		# 		check = false
		# 
		# _.each this.corners, (element, index, list)->
		# 	if index != element
		# 		check = false
		# 	
		# if check = true then console.log 'Good'
		# else console.log 'Bad'
		
	get: (coordinates, key = true) ->
		if typeof coordinates == 'string'
			coordinates = _.chars(coordinates)
			
		switch _.size(coordinates)
			when 2
				type = 'edges'
			when 3
				type = 'corners'
			else
				console.log 'Enter two or three colors to select a position on the cube'
		
		possibles = this[type]
		output = 'No piece with those coordinates'
		
		_.each possibles, (value, key)->
			# console.log 'Possible ' + _.chars key
			# console.log 'Coordinates ' + coordinates
			# console.log 'Intersection ' + _.intersection _.chars(key), coordinates
			
			overlap = _.intersection(_.chars(key), coordinates)
			
			if _.size(overlap) == _.size(coordinates)
				output = key
				
		if key
			return output
		else
			return this[type][output]
		
	set: (piece, color_key, value) =>
		piece = this.get(piece)
		
		switch _.size(_.chars(piece))
			when 2
				type = 'edges'
			when 3
				type = 'corners'
			else
				console.log 'Enter two or three colors to select a position on the cube'
		
		this[type][piece][color_key] = value
		
		
	turn: (face, direction) ->
		cube = this
		# refer to face by first character of color
		face = face.charAt 0
		
		# find edges to turn
		edges_to_turn = []
		_.each this.edges, (value, key, list) ->
			if key.indexOf(face) != -1
				edges_to_turn.push key
		
		# store edges
		previous_edges = {}
		_.each edges_to_turn, (element, index, list) =>
			previous_edges[element] = _.clone(this.edges[element])
			
		# find corners to turn
		corners_to_turn = []
		_.each this.corners, (value, key, list) ->
			if key.indexOf(face) != -1
				corners_to_turn.push key
				
		# store corners
		previous_corners = {}
		_.each corners_to_turn, (element, index, list) =>
			previous_corners[element] = _.clone(this.corners[element])
		
		# define order of other faces changed by turn
		switch face
			when 'w'
				order = ['green', 'orange', 'blue', 'red']
			when 'g'
				order = ['yellow', 'orange', 'white', 'red']
			when 'o'
				order = ['green', 'yellow', 'blue', 'white']
			when 'b'
				order = ['white', 'orange', 'yellow', 'red']
			when 'r'
				order = ['green', 'white', 'blue', 'yellow']
			when 'y'
				order = ['blue', 'orange', 'green', 'red']
			else
				console.log "Incorrect face"
				
		switch direction
			when 'cw'
				rotate = 1
			when 'ccw'
				rotate = -1
			else
				console.log "Incorrect direction"
		
		# reduce colors to first letter
		_.each order, (element, index, list)=>
			order[index] = element.charAt 0		
		
		for edge in edges_to_turn # turn edges
			outer_color = _.reject(_.chars(edge), (color) -> return color == face)[0]
			order_location = _.indexOf order, outer_color # location of outer color in order array
			cw_color = if order_location + 1 == _.size order then _.first order else order[order_location + 1]
			ccw_color = if order_location - 1 == -1 then _.last order else order[order_location - 1]
			input_color = if direction == 'cw' then ccw_color else if direction == 'ccw' then cw_color
			input_edge = _.filter(edges_to_turn, (edge)-> edge.indexOf(input_color) != -1)
			
			this.set(edge, face, previous_edges[input_edge][face])
			this.set(edge, outer_color, previous_edges[input_edge][input_color])
			
		for corner in corners_to_turn # turn corners
			other_colors = _.reject(_.chars(corner), (color) -> return color == face)
			order_location = [_.indexOf(order, other_colors[0]), _.indexOf(order, other_colors[1])]
			cw_colors = [
				if order_location[0] + 1 == _.size order then _.first order else order[order_location[0] + 1],
				if order_location[1] + 1 == _.size order then _.first order else order[order_location[1] + 1]				
			]
			ccw_colors = [
				if order_location[0] - 1 == -1 then _.last order else order[order_location[0] - 1],
				if order_location[1] - 1 == -1 then _.last order else order[order_location[1] - 1]
			]
			input_colors = [
				if direction == 'cw' then ccw_colors[0] else if direction == 'ccw' then cw_colors[0],
				if direction == 'cw' then ccw_colors[1] else if direction == 'ccw' then cw_colors[1]
			]
			input_corner = _.filter(corners_to_turn, (corner)-> corner.indexOf(input_colors[0]) != -1 and corner.indexOf(input_colors[1]) != -1)
			
			this.set(corner, face, previous_corners[input_corner][face])
			this.set(corner, other_colors[0], previous_corners[input_corner][input_colors[0]])
			this.set(corner, other_colors[1], previous_corners[input_corner][input_colors[1]])
					
		# console.log "turned " + face + " " + direction
		
		return this
		
	scramble: () ->
		_.times(20, ()->
			faces = ['white', ]
			random_face = 
		)
				

c = new Cube "Rubik's"
c.scramble()
c.display()