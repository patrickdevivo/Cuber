# translates a sequence of cube turns into servo turns on Cuber Robot
Cuber = require './cuber.coffee'
grippers = [true, true]

rotators = [0, 0]

faces = {
	u: 'w'
	l: 'g'
	f: 'r'
	d: 'y'
	r: 'b'
	b: 'o'	
}

translate = (turns, perspective) ->
	faces = perspective
	turns = _.chars(turns)
	output = ''
	_.each(turns, (turn, index)=>
		face = turn.toLowerCase()
		for perspective, color of faces
			if color == face
				key = perspective
		input_faces = _.clone(faces)
		switch turn
			when turn.toLowerCase()
				direction = 'cw'
				switch key
					when 'u'
						output += 'UCVEBFUCVEBFXUYU'
						faces.d = input_faces.u
						faces.u = input_faces.d
						faces.r = input_faces.l
						faces.l = input_faces.r
					when 'd'
						output += 'XUYV'
					when 'l'
						output += 'EAFUBVCEBF'
						faces.b = input_faces.l
						faces.l = input_faces.f
						faces.f = input_faces.r
						faces.r = input_faces.b
					when 'r'
						output += 'ECFUBVCEBF'
						faces.b = input_faces.r
						faces.l = input_faces.b
						faces.f = input_faces.l
						faces.r = input_faces.f
					when 'f'
						output += 'EAFUBVEAFUBVCEBF'
						faces.b = input_faces.f
						faces.f = input_faces.b
						faces.r = input_faces.l
						faces.l = input_faces.r
					when 'b' 
						output += 'CEBF'
					
			when turn.toUpperCase()
				direction = 'ccw'
				switch key
					when 'u'
						output += 'UCVEBFUCVEBFZUYV'
						faces.d = input_faces.u
						faces.u = input_faces.d
						faces.r = input_faces.l
						faces.l = input_faces.r
					when 'd'
						output += 'ZUYV'
					when 'l'
						output += 'EAFUBVAEBF'
						faces.b = input_faces.l
						faces.l = input_faces.f
						faces.f = input_faces.r
						faces.r = input_faces.b
					when 'r'
						output += 'ECFUBVAEBF'
						faces.b = input_faces.r
						faces.l = input_faces.b
						faces.f = input_faces.l
						faces.r = input_faces.f
					when 'f'
						output += 'EAFUBVEAFUBVAEBF'
						faces.b = input_faces.f
						faces.f = input_faces.b
						faces.r = input_faces.l
						faces.l = input_faces.r
					when 'b' 
						output += 'AEBF'
				
	)
	
	output

module.exports = translate
# console.log translate('rGRgbRbGRgrbby')