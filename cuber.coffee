_ = require './underscore.min.js'
_.str = require './underscore.string.min.js'
_.mixin(_.str.exports())
_.str.include('Underscore.string', 'string')
# $ = require 'jquery'

class Cube
	constructor: (@name = "Rubik\'s") ->
		@id = _.uniqueId()
		cube = this
		class Edge
			constructor: (id) ->
				if id.length == 2
					this[id.charAt 0] = id.charAt 0
					this[id.charAt 1] = id.charAt 1
				else
					console.log "Invalid edge id"
				
		class Corner
			constructor: (id) ->
				if id.length == 3
					this[id.charAt 0] = id.charAt 0
					this[id.charAt 1] = id.charAt 1
					this[id.charAt 2] = id.charAt 2
				else
					console.log "Invalid corner id"
		class Face
			constructor: (@color) ->
				
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
		
		@history = []
		
	display: ->
		f = (piece) => this.get(piece, false)
		output ="          --+-+-+--\n" +
				"          | #{f('oby').o} #{f('oy').o} #{f('oby').o} |\n" +
				"          | #{f('og').o} o #{f('ob').o} |\n" +
				"          | #{f('ogw').o} #{f('ow').o} #{f('obw').o} |\n" +
				
				"--+-+-+-- --+-+-+-- --+-+-+--\n" +
				"| #{f('gyo').g} #{f('go').g} #{f('gow').g} | | #{f('wog').w} #{f('wo').w} #{f('wob').w} | | #{f('bow').b} #{f('bo').b} #{f('boy').b} |\n" +
				"| #{f('gy').g} g #{f('gw').g} | | #{f('wg').w} w #{f('wb').w} | | #{f('bw').b} b #{f('by').b} |\n" +
				"| #{f('gry').g} #{f('gr').g} #{f('gwr').g} | | #{f('wgr').w} #{f('wr').w} #{f('wbr').w} | | #{f('brw').b} #{f('br').b} #{f('byr').b} |\n" +
				"--+-+-+-- --+-+-+-- --+-+-+--\n"+
				
				"          | #{f('rgw').r} #{f('rw').r} #{f('rwb').r} |\n" +
				"          | #{f('rg').r} r #{f('rb').r} |\n" +
				"          | #{f('rgw').r} #{f('ry').r} #{f('ryb').r} |\n" +
				"          --+-+-+--\n" +
				"          | #{f('ryg').y} #{f('ry').y} #{f('ryb').y} |\n" +
				"          | #{f('gy').y} y #{f('yb').y} |\n" +
				"          | #{f('gyo').y} #{f('yo').y} #{f('byo').y} |\n" +
				"          --+-+-+--\n"
				
		
		console.log output
		return this
		
	check: ->
		edges_good = true
		_.each(this.edges, (value, key)->
			_.each(value, (position, color)->
				if color isnt position
					edges_good = false
			)
		)
		
		corners_good = true
		_.each(this.corners, (value, key)->
			_.each(value, (position, color)->
				if color isnt position
					corners = false
			)
		)
		
		final = edges_good and corners_good
		
		if final
			console.log "Cube is solved!"
		else
			console.log "Cube is not solved"
			
		return final
			
		
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
		
	set: (piece, color_key, value) ->
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
		face = face.charAt(0)
		
		if !direction # if no direction is specificifed, get direction from face case (capitialized or not)
			switch face
				when face.toLowerCase() # if face is uppercase
					direction = 'cw'
				when face.toUpperCase() # if face is lowercase
					direction = 'ccw'
					
		face = face.toLowerCase()
				
		
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
		
		history_input = if direction == 'cw' then face else if direction == 'ccw' then face.toUpperCase()
		this.history.push(history_input)
		
		console.log "Turned " + face + " " + direction
		
		return this
		
	cheat: ()->
		reverse = _.clone(this.history).reverse()
		_.each(reverse, (element, index)=>
			switch element
				when element.toUpperCase() # when uppercase...
					move = element.toLowerCase() # make lowercase
				when element.toLowerCase() # when lowercase...
					move = element.toUpperCase() # make uppercase
			this.turn(move)
		)
		
		return this
		
	scramble: (n = 100) ->
		_.times(n, () =>
			faces = ['white', 'green', 'orange', 'blue', 'red', 'yellow']
			random_face = _.shuffle(faces)[0]
			directions = ['cw', 'ccw']
			random_direction = _.shuffle(directions)[0]
			this.turn(random_face, random_direction)
			# this.display()
		)
		
		return this

module.exports = Cube