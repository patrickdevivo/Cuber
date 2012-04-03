_ = require './underscore.min.js'
_.str = require './underscore.string.min.js'
_.mixin(_.str.exports())
_.str.include('Underscore.string', 'string')
# $ = require 'jquery'

class Cube
	constructor: (@name, @empty = false) ->
		@id = _.uniqueId()
		cube = this
		@cache = {
			edges: {}
			corners: {}
		}
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
		
	get: (coordinates) ->
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
				
		# return output
		return this[type][output]
		
	turn: (face, direction) ->		
		# refer to face by first character of color
		face = face.charAt 0
		
		# find edges to turn
		edges_to_turn = []
		_.each this.edges, (value, key, list) ->
			if key.indexOf(face) != -1
				edges_to_turn.push key
		
		# store edges
		_.each edges_to_turn, (element, index, list) =>
			this.cache.edges[element] = this.edges[element]
			
		# find corners to turn
		corners_to_turn = []
		_.each this.corners, (value, key, list) ->
			if key.indexOf(face) != -1
				corners_to_turn.push key
				
		# store corners
		_.each corners_to_turn, (element, index, list) =>
			this.cache.corners[element] = this.corners[element]
		
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
		
		_.each edges_to_turn, (element, index, list) =>
			outer_color = _.reject(_.chars(element), (color)-> return color == face)
			outer_color = outer_color[0] # non face color
			order_location = _.indexOf order, outer_color # location of outer color in order array
			cw_color = if order_location + 1 == _.size order then _.first order else order[order_location + 1]
			ccw_color = if order_location - 1 == -1 then _.last order else order[order_location - 1]			
			next_color = if direction == 'cw' then cw_color else if direction == 'ccw' then ccw_color
			next_edge = _.find(list, (edge)-> edge.indexOf(next_color) != -1)
			
			# console.log cw_color + ' ' + outer_color + ' ' + ccw_color
			# console.log element + ' ' + next_edge
			# console.log outer_color + ' ' + next_color
			
			console.log this.edges[next_edge][next_color]
			
			this.edges[next_edge][face] = this.cache.edges[element][face]
			this.edges[next_edge][next_color] = this.cache.edges[element][outer_color]


c = new Cube "Rubik's"
c.white.cw()
console.log c