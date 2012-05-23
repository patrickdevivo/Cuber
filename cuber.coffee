global._ = require 'underscore'
_.str = require('underscore.string')
_.mixin(_.str.exports())
_.str.include('Underscore.string', 'string')
colorize = require 'colorize'
require('console-trace')
console.log = console.t.log

class Cube
	constructor: (@name = "Rubik\'s", @verbosity = true) ->
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
			constructor: (@color, @opposite) ->

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
		@w	= new Face 'w', 'y'
		@g	= new Face 'g', 'b'
		@o	= new Face 'o', 'r'
		@b	= new Face 'b', 'g'
		@r	= new Face 'r', 'o'
		@y	= new Face 'y', 'w'
		
		@history = {
			complete: []
			scramble: []
			algorithm: []
		}
		
		@perspective = {
			up: 'w'
			left: 'g'
			front: 'r'
			down: 'y'
			right: 'b'
			back: 'o'
		}
		
	change_perspective: (up, left, front) ->
		p = @perspective
		p.up = up
		p.left = left
		p.front = front
		p.down = this[p.up].opposite
		p.right = this[p.left].opposite
		p.back = this[p.front].opposite
		
	
	display: (log = true)-> # display cube to the console
		f = (piece) => this.fetch(piece)
		output ="          --+-+-+--\n" +
				"          | #{f('ogy').o} #{f('oy').o} #{f('oby').o} |\n" +
				"          | #{f('og').o} o #{f('ob').o} |\n" +
				"          | #{f('ogw').o} #{f('ow').o} #{f('obw').o} |\n" +
				
				"--+-+-+-- --+-+-+-- --+-+-+--\n" +
				"| #{f('gyo').g} #{f('go').g} #{f('gow').g}] | | #{f('wog').w} #{f('wo').w} #{f('wob').w} | | #{f('bow').b} #{f('bo').b} #{f('boy').b} |\n" +
				"| #{f('gy').g} g #{f('gw').g} | | #{f('wg').w} w #{f('wb').w} | | #{f('bw').b} b #{f('by').b} |\n" +
				"| #{f('gry').g} #{f('gr').g} #{f('gwr').g} | | #{f('wgr').w} #{f('wr').w} #{f('wbr').w} | | #{f('brw').b} #{f('br').b} #{f('byr').b} |\n" +
				"--+-+-+-- --+-+-+-- --+-+-+--\n"+
				
				"          | #{f('rgw').r} #{f('rw').r} #{f('rwb').r} |\n" +
				"          | #{f('rg').r} r #{f('rb').r} |\n" +
				"          | #{f('rgy').r} #{f('ry').r} #{f('ryb').r} |\n" +
				"          --+-+-+--\n" +
				"          | #{f('ryg').y} #{f('ry').y} #{f('ryb').y} |\n" +
				"          | #{f('gy').y} y #{f('yb').y} |\n" +
				"          | #{f('gyo').y} #{f('yo').y} #{f('byo').y} |\n" +
				"          --+-+-+--\n"
		
		colorize.ansicodes.g = '\u001b[32m'
		colorize.ansicodes.r = '\u001b[31m'
		colorize.ansicodes.w = '\u001b[37m'
		colorize.ansicodes.b = '\u001b[38;5;25m'
		colorize.ansicodes.y = '\u001b[38;5;142m'
		colorize.ansicodes.o = '\u001b[38;5;94m'
		
		output = output
			.replace(/g/gi, '#g[◙]')
			.replace(/r/gi, '#r[◙]')
			.replace(/w/gi, '#w[◙]')
			.replace(/b/gi, '#b[◙]')
			.replace(/y/gi, '#y[◙]')
			.replace(/o/gi, '#o[◙]')
				
		if log
			colorize.ansify(output)
			colorize.console.log output
		return output
		
	check: -> # check if cube is solved
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
		
		if @verbosity
			if final
				console.log "Cube is solved!"
			else
				console.log "Cube is not solved"
			
		return final
			
		
	get: (coordinates, key = true) -> # specify a piece on the cube as 'wg' or 'gw' or 'wgb', returns the name of the piece by default, an object with color values if key = false
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
			
	fetch: (piece) ->
		this.get(piece, false)
		
	color_to_perspective: (color) -> # takes a color and returns what perspective contains that color
		output = ''
		_.each(@perspective, (value, perspective)->
			if color is value
				output =  perspective.charAt(0)
		)

		output
		
	fetch_by_perspective: (piece) -> # returns an object (like fetch()) of piece color values but by perspective
		piece = _.chars(piece)
		fetch = ''
		output = {}
		_.each(piece, (perspective, index) =>
			perspective = perspective.toLowerCase()
			switch perspective
				when 'u'
					face = 'up'
				when 'd'
					face = 'down'
				when 'r'   
					face = 'right'
				when 'l'   
					face = 'left'
				when 'f'   
					face = 'front'
				when 'b'
					face = 'back'
			fetch += this.perspective[face]
			output[perspective] = ''
		)

		_.each(this.fetch(fetch), (value, key) =>
			index = this.color_to_perspective(key)
			output[index] = this.color_to_perspective(value)
		)
		
		output
		
	set: (piece, color_key, value) -> # set the value of 'color_key' on 'piece' to 'value'
		piece = this.get(piece)
		switch _.size(_.chars(piece))
			when 2
				type = 'edges'
			when 3
				type = 'corners'
			else
				console.log 'Enter two or three colors to select a position on the cube'
		
		this[type][piece][color_key] = value
	
	turn_by_perspective: (turn) ->
		turn = turn.charAt(0)

		switch turn
			when turn.toLowerCase() # if face is uppercase
				direction = 'cw'
			when turn.toUpperCase() # if face is lowercase
				direction = 'ccw'
						
		turn = turn.toLowerCase()
		switch turn
			when 'u'
				face = @perspective.up
			when 'd'
				face = @perspective.down
			when 'r'
				face = @perspective.right
			when 'l'
				face = @perspective.left
			when 'f'
				face = @perspective.front
			when 'b'
				face = @perspective.back
		
		if typeof face == 'string'
			this.turn(face, direction)
		
		
	turn: (face, direction, history = true) ->
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
		
		if !/[wgrbyoWGRBYO]/.test(face)
			console.log 'Invalid face'
		
		
		
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
				console.log "Incorrect face: " + face
		
		# comes in handy a little later for navigating the order array above
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
			other_colors = _.reject(_.chars(corner), (color) -> return color == face) # ['g', 'o']
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
		
		if history
			history_input = if direction == 'cw' then face else if direction == 'ccw' then face.toUpperCase()
			this.history.complete.push(history_input)
		
		if @verbosity
			console.log "Turned " + face + " " + direction
		
		return this
		
	import_turns: (turns) -> # takes a string of turns and executes them in order (from left to right) ex: 'wgRbBoYGw'
		if typeof turns != 'string'
			console.log 'Error: import a string of turns to do'
		turns = _.chars(turns)
		_.each(turns, (element, index) =>
			this.turn(element)
		)
		
	cheat: () -> # reverse all moves in the cube turn history (cube.history)
		reverse = _.clone(this.history.complete).reverse()
		_.each(reverse, (element, index)=>
			switch element
				when element.toUpperCase() # when uppercase...
					move = element.toLowerCase() # make lowercase
				when element.toLowerCase() # when lowercase...
					move = element.toUpperCase() # make uppercase
			this.turn(move)
		)
		
		return this
	
	reset: () ->
		this.cheat()
		
	scramble: (n = 100, return_only = false) -> # scranbles a cube with n random turns
		scrambles = ''
		_.times(n, () =>
			faces = ['white', 'green', 'orange', 'blue', 'red', 'yellow']
			random_face = _.shuffle(faces)[0]
			directions = ['cw', 'ccw']
			random_direction = _.shuffle(directions)[0]
			switch random_direction
				when 'cw'
					random_face = random_face.charAt(0).toLowerCase()
				when 'ccw'
					random_face = random_face.charAt(0).toUpperCase()
			if !return_only
				this.turn(random_face)
				this.history.scramble.push([random_face, random_direction])
			
			scrambles = scrambles + random_face
		)
		
		return scrambles
		
	interface: =>
		prompt = require 'prompt'
		console.log('\u001B[2J\u001B[0;0f') # clear screen
		this.display()
		cube = this
		prompt.start()
		screen = ()->
			console.log('\u001B[2J\u001B[0;0f')
			cube.display()
		ask = ()-> 
			prompt.get(['turn'], (err, result) =>
				if /[wgrbyoWGRBYO]/.test(result.turn) and result.turn.length is 1 # valid turn and one character
					cube.turn(result.turn)
					screen()
					ask()
				else if result.turn is 'reset'
					cube.reset()
					screen()
					ask()
				else if result.turn is 'scramble'
					###
					scrambles = _.chars(cube.scramble(500, true))
					_.each(scrambles, (turn, index) =>
						cube.turn(turn)
						screen()
						ask()
					)
					###
					cube.scramble()
					screen()
					ask()

				else if err
					console.log err
				else
					console.log 'Invalid turn'
					ask()
			)
		ask()
		
		
class Solver # a solver is a holder for a sequence of algorithms
	constructor: (@cube = cube, @perspective = false) ->
		@queue = [] # algorithm queue

	add_algorithm: (turns, condition) -> # add an algorithm to the solver queue
		@queue.push([turns, condition])

	run_algorithm: (turns, condition) -> # run an algorithm -> check if condition is true, execute turns
		check_turn = (turn) =>
			if !@perspective
				return /[wgrbyoWGRBYO]/.test(turn)
			if @perspective
				return /[udrlfbUDRLFB]/.test(turn)

		execute_turn = (turn) =>
			if check_turn(turn)
				if !@perspective
					this.cube.turn(turn)
					this.cube.history.algorithm.push(turn)
				if @perspective
					this.cube.turn_by_perspective(turn)
					this.cube.history.algorithm.push(turn)

		if typeof turns == 'string'
			turns = _.chars(turns)

		if typeof condition == 'function'
			if condition(@cube)
				_.each(turns, (turn, index) =>
					# this.cube.turn(turn)
					execute_turn(turn)
				)

		if typeof condition == 'object'
			checker = true
			if !@perspective
				_.each(condition, (colors, piece) =>
					_.each(colors, (value, key) =>
						if @cube.get(piece, false)[key] != value
							checker = false
					)
				)
			if @perspective
				_.each(condition, (perspectives, piece) =>
					_.each(perspectives, (value, key) =>
						if @cube.fetch_by_perspective(piece)[key] != value
							checker = false
					)
				)
				
			if checker
				_.each(turns, (turn, index)=>
					# this.cube.turn(turn)
					execute_turn(turn)
				)
		
	go: () -> # run thru algorithm queue and run each in order
		_.each(@queue, (element, index) =>
			this.run_algorithm(element[0], element[1])
		)
		return this.cube.check()
		
	export_turns: () -> # returns a string of all moves solver will execute when go() is called
		output = ''
		_.each(@queue, (element, index) =>
			console.log element[1]
			if element[1]
				output = output + element[0]
		)
		
		return output
		
	import_algorithms: (algorithms)->
		if typeof algorithms != 'object'
			console.log 'Invalid algorithms input'
		
		_.each(algorithms, (element, index) => # loop through algorithms
			conditions = element[0]
			turns = element[1]
			this.add_algorithm(turns, conditions)
		)

module.exports.Cube = Cube
module.exports.Solver = Solver