Cuber = require './cuber.coffee'
cube = new Cuber.Cube
solver = new Cuber.Solver cube
_ = require './requirements/underscore.min.js'
_.str = require './requirements/underscore.string.min.js'
_.mixin(_.str.exports())
_.str.include('Underscore.string', 'string')


jeremy = require './algorithms/jeremy.coffee'

solver.import_algorithms(jeremy)

console.log solver.queue

# cube = []
# solver = []
# index = 0

# _.times(100, ()->
# 	cube[index] = new Cuber.Cube
# 	solver[index] = new Cuber.Solver cube[index]
# 	
# 	cube[index].scramble(20)
# 	
# 	index++
# )

###

console.log cube

f = (piece) -> return cube.get(piece, false)


cube.scramble()

cube.display()
#White-Green

#1◊
solver.add_algorithm('', ()->
	return f('wg').w == 'w' and f('wg').g == 'g'
)

#1'
solver.add_algorithm('grw', ()->
	return f('wg').w == 'g' and f('wg').g == 'w'
)

#2◊
solver.add_algorithm('w', ()->
	return f('wr').w == 'w' and f('wr').r == 'g'
)

#2'
solver.add_algorithm('RG', ()->
	return f('wr').w == 'g' and f('wr').r == 'w'
)

#3◊
solver.add_algorithm('ww', ()->
	return f('wb').w == 'w' and f('wb').b == 'g'
)

#3'
solver.add_algorithm('BRw', ()->
	return f('wb').w == 'g' and f('wb').b == 'w'
)

#4◊
solver.add_algorithm('W', ()->
	return f('wo').w == 'w' and f('wo').o == 'g'
)

#4'
solver.add_algorithm('og', ()->
	return f('wo').w == 'g' and f('wo').o == 'w'
)

#5◊
solver.add_algorithm('G', ()->
	return f('gr').g == 'g' and f('gr').r == 'w'
)

#5'
solver.add_algorithm('rw', ()->
	return f('gr').g == 'w' and f('gr').r == 'g'
)

#6◊
solver.add_algorithm('bww', ()->
	return f('br').b == 'g' and f('br').r == 'w'
)

#6'
solver.add_algorithm('Rw', ()->
	return f('br').b == 'w' and f('br').r == 'g'
)

#7◊
solver.add_algorithm('Bww', ()->
	return f('bo').b == 'g' and f('bo').o == 'w'
)

#7'
solver.add_algorithm('oW', ()->
	return f('bo').b == 'w' and f('bo').o == 'g'
)

#8◊
solver.add_algorithm('g', ()->
	return f('go').g == 'g' and f('go').o == 'w'
)

#8'
solver.add_algorithm('OW', ()->
	return f('go').g == 'w' and f('go').o == 'g'
)

#9◊
solver.add_algorithm('gg', ()->
	return f('yg').y == 'w' and f('yg').g == 'g'
)

#9'
solver.add_algorithm('gOW', ()->
	return f('yg').y == 'g' and f('yg').g == 'w'
)

#10◊
solver.add_algorithm('rrw', ()->
	return f('yr').y == 'w' and f('yr').r == 'g'
)

#10'
solver.add_algorithm('rG', ()->
	return f('yr').y == 'g' and f('yr').r == 'w'
)

#11◊
solver.add_algorithm('bbww', ()->
	return f('yb').y == 'w' and f('yb').b == 'g'
)

#11'
solver.add_algorithm('bRw', ()->
	return f('yb').y == 'g' and f('yb').b == 'w'
)

#12◊
solver.add_algorithm('ooW', ()->
	return f('yo').y == 'w' and f('yo').o == 'g'
)

#12'
solver.add_algorithm('Og', ()->
	return f('yo').y == 'g' and f('yo').o == 'w'
)

#White-Red

#2◊
solver.add_algorithm('', ()->
	return f('wr').w == 'w' and f('wr').r == 'r'
)

#2'
solver.add_algorithm('rWbw', ()->
	return f('wr').w == 'r' and f('wr').r == 'w'
)

#3◊
solver.add_algorithm('BWbw', ()->
	return f('wb').w == 'w' and f('wb').b == 'r'
)

#3'
solver.add_algorithm('BR', ()->
	return f('wb').w == 'r' and f('wb').b == 'w'
)

#4◊
solver.add_algorithm('owwOww', ()->
	return f('wo').w == 'w' and f('wo').o == 'r'
)

#4'
solver.add_algorithm('OWBw', ()->
	return f('wo').w == 'r' and f('wo').o == 'w'
)

#5◊
solver.add_algorithm('r', ()->
	return f('gr').g == 'w' and f('gr').r == 'r'
)

#5'
solver.add_algorithm('GWg', ()->
	return f('gr').g == 'r' and f('gr').r == 'w'
)

#6◊
solver.add_algorithm('R', ()->
	return f('br').b == 'w' and f('br').r == 'r'
)

#6'
solver.add_algorithm('Wbw', ()->
	return f('br').b == 'r' and f('br').r == 'w'
)

#7◊
solver.add_algorithm('bbR', ()->
	return f('bo').b == 'w' and f('bo').o == 'r'
)

#7'
solver.add_algorithm('WBw', ()->
	return f('bo').b == 'r' and f('bo').o == 'w'
)

#8◊
solver.add_algorithm('wwOww', ()->
	return f('go').g == 'w' and f('go').o == 'r'
)

#8'
solver.add_algorithm('gWG', ()->
	return f('go').g == 'r' and f('go').o == 'w'
)

#9◊
solver.add_algorithm('yrr', ()->
	return f('yg').y == 'w' and f('yg').g == 'r'
)

#9'
solver.add_algorithm('Grg', ()->
	return f('yg').y == 'r' and f('yg').g == 'w'
)

#10◊
solver.add_algorithm('rr', ()->
	return f('yr').y == 'w' and f('yr').r == 'r'
)

#10'
solver.add_algorithm('YGrg', ()->
	return f('yr').y == 'r' and f('yr').r == 'w'
)

#11◊
solver.add_algorithm('Yrr', ()->
	return f('yb').y == 'w' and f('yb').b == 'r'
)

#11'
solver.add_algorithm('bR', ()->
	return f('yb').y == 'r' and f('yb').b == 'w'
)

#12◊
solver.add_algorithm('yyrr', ()->
	return f('yo').y == 'w' and f('yo').o == 'r'
)

#12'
solver.add_algorithm('YbR', ()->
	return f('yo').y == 'r' and f('yo').o == 'w'
)


#White-Blue

#3◊
solver.add_algorithm('', ()->
	return f('wb').w == 'w' and f('wb').b == 'b'
)

#3'
solver.add_algorithm('BwRW', ()->
	return f('wb').w == 'b' and f('wb').b == 'w'
)

#4◊
solver.add_algorithm('oWOw', ()->
	return f('wo').w == 'w' and f('wo').o == 'b'
)

#4'
solver.add_algorithm('OB', ()->
	return f('wo').w == 'b' and f('wo').o == 'w'
)

#5◊
solver.add_algorithm('gyybbG', ()->
	return f('gr').g == 'b' and f('gr').r == 'w'
)

#5'
solver.add_algorithm('wrW', ()->
	return f('gr').g == 'w' and f('gr').r == 'b'
)

#6◊
solver.add_algorithm('b', ()->
	return f('br').b == 'b' and f('br').r == 'w'
)

#6'
solver.add_algorithm('wRW', ()->
	return f('br').b == 'w' and f('br').r == 'b'
)

#7◊
solver.add_algorithm('B', ()->
	return f('bo').b == 'b' and f('bo').o == 'w'
)

#7'
solver.add_algorithm('Wow', ()->
	return f('bo').b == 'w' and f('bo').o == 'b'
)

#8◊
solver.add_algorithm('wwgww', ()->
	return f('go').g == 'b' and f('go').o == 'w'
)

#8'
solver.add_algorithm('WOw', ()->
	return f('go').g == 'w' and f('go').o == 'b'
)

#9◊
solver.add_algorithm('yybb', ()->
	return f('yg').y == 'w' and f('yg').g == 'b'
)

#9'
solver.add_algorithm('yRbr', ()->
	return f('yg').y == 'b' and f('yg').g == 'w'
)

#10◊
solver.add_algorithm('ybb', ()->
	return f('yr').y == 'w' and f('yr').r == 'b'
)

#10'
solver.add_algorithm('Rbr', ()->
	return f('yr').y == 'b' and f('yr').r == 'w'
)

#11◊
solver.add_algorithm('bb', ()->
	return f('yb').y == 'w' and f('yb').b == 'b'
)

#11'
solver.add_algorithm('YRbr', ()->
	return f('yb').y == 'b' and f('yb').b == 'w'
)

#12◊
solver.add_algorithm('Ybb', ()->
	return f('yo').y == 'w' and f('yo').o == 'b'
)

#12'
solver.add_algorithm('oB', ()->
	return f('yo').y == 'b' and f('yo').o == 'w'
)


#White-Orange

#4◊
solver.add_algorithm('', ()->
	return f('wo').w == 'w' and f('wo').o == 'o'
)

#4'
solver.add_algorithm('OwBW', ()->
	return f('wo').w == 'o' and f('wo').o == 'w'
)

#5◊
solver.add_algorithm('wwrww', ()->
	return f('gr').g == 'w' and f('gr').r == 'o'
)

#5'
solver.add_algorithm('WGw', ()->
	return f('gr').g == 'o' and f('gr').r == 'w'
)

#6◊
solver.add_algorithm('wwRww', ()->
	return f('br').b == 'w' and f('br').r == 'o'
)

#6'
solver.add_algorithm('wbW', ()->
	return f('br').b == 'o' and f('br').r == 'w'
)

#7◊
solver.add_algorithm('o', ()->
	return f('bo').b == 'w' and f('bo').o == 'o'
)

#7'
solver.add_algorithm('wBW', ()->
	return f('bo').b == 'o' and f('bo').o == 'w'
)

#8◊
solver.add_algorithm('O', ()->
	return f('go').g == 'w' and f('go').o == 'o'
)

#8'
solver.add_algorithm('Wgw', ()->
	return f('go').g == 'o' and f('go').o == 'w'
)

#9◊
solver.add_algorithm('Yoo', ()->
	return f('yg').y == 'w' and f('yg').g == 'o'
)

#9'
solver.add_algorithm('gOG', ()->
	return f('yg').y == 'o' and f('yg').g == 'w'
)

#10◊
solver.add_algorithm('yyoo', ()->
	return f('yr').y == 'w' and f('yr').r == 'o'
)

#10'
solver.add_algorithm('YgOG', ()->
	return f('yr').y == 'o' and f('yr').r == 'w'
)

#11◊
solver.add_algorithm('yoo', ()->
	return f('yb').y == 'w' and f('yb').b == 'o'
)

#11'
solver.add_algorithm('Bob', ()->
	return f('yb').y == 'o' and f('yb').b == 'w'
)

#12◊
solver.add_algorithm('oo', ()->
	return f('yo').y == 'w' and f('yo').o == 'o'
)

#12'
solver.add_algorithm('YBob', ()->
	return f('yo').y == 'o' and f('yo').o == 'w'
)



#Green-Red

#5◊
solver.add_algorithm('', ()->
	return f('gr').g == 'g' and f('gr').r == 'r'
)

#5'
solver.add_algorithm('RYrygyGyRYrygyG', ()->
	return f('gr').g == 'r' and f('gr').r == 'g'
)

#6◊
solver.add_algorithm('rryyrryyrr', ()->
	return f('br').b == 'g' and f('br').r == 'r'
)

#6'
solver.add_algorithm('BYbyryRYgyGYRYr', ()->
	return f('br').b == 'r' and f('br').r == 'g'
)

#7◊
solver.add_algorithm('bbyrryyrryyrrybb', ()->
	return f('bo').b == 'g' and f('bo').o == 'r'
)

#7'
solver.add_algorithm('byBYOYoygyGYRYr', ()->
	return f('bo').b == 'r' and f('bo').o == 'g'
)

#8◊
solver.add_algorithm('ggyyggyygg', ()->
	return f('go').g == 'g' and f('go').o == 'r'
)

#8'
solver.add_algorithm('oyOYGYgyRYryGYg', ()->
	return f('go').g == 'r' and f('go').o == 'g'
)

#9◊
solver.add_algorithm('YRYrgyG', ()->
	return f('yg').y == 'r' and f('yg').g == 'g'
)

#9'
solver.add_algorithm('yygyGYRYr', ()->
	return f('yg').y == 'g' and f('yg').g == 'r'
)

#10◊
solver.add_algorithm('ygyGYRYr', ()->
	return f('yr').y == 'g' and f('yr').r == 'r'
)

#10'
solver.add_algorithm('yyRYrygyG', ()->
	return f('yr').y == 'r' and f('yr').r == 'g'
)

#11◊
solver.add_algorithm('yRYrygyG', ()->
	return f('yb').y == 'r' and f('yb').b == 'g'
)

#11'
solver.add_algorithm('gyGYRYr', ()->
	return f('yb').y == 'g' and f('yb').b == 'r'
)

#12◊
solver.add_algorithm('YgyGYRYr', ()->
	return f('yo').y == 'g' and f('yo').o == 'r'
)

#12'
solver.add_algorithm('RYrygyG', ()->
	return f('yo').y == 'r' and f('yo').o == 'g'
)



 

solver.go()
cube.display()
