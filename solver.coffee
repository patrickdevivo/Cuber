Cuber = require './cuber.coffee'
cube = new Cuber.Cube
solver = new Cuber.Solver cube

f = (piece) -> return cube.get(piece, false)

cube.display()

cube.scramble()

cube.display()

solver.add_algorithm('', ()-> # adds algorithm to solver queue
	return f('wg').w == 'w' and f('wg').g == 'g'
)

solver.add_algorithm('grw', ()->
	return f('wg').w == 'g' and f('wg').g == 'w'
)

solver.add_algorithm('w', ()->
	return f('wr').w == 'w' and f('wr').r == 'g'
)

solver.add_algorithm('RG', ()->
	return f('wr').w == 'g' and f('wr').r == 'w'
)

solver.add_algorithm('ww', ()->
	return f('wb').w == 'w' and f('wb').b == 'g'
)

solver.add_algorithm('BRw', ()->
	return f('wb').w == 'g' and f('wb').b == 'w'
)

solver.add_algorithm('W', ()->
	return f('wo').w == 'w' and f('wo').o == 'g'
)

solver.add_algorithm('og', ()->
	return f('wo').w == 'g' and f('wo').o == 'w'
)

solver.add_algorithm('rw', ()->
	return f('gr').g == 'g' and f('gr').r == 'w'
)

solver.add_algorithm('G', ()->
	return f('gr').g == 'w' and f('gr').r == 'g'
)

solver.add_algorithm('Rw', ()->
	return f('br').w == 'r' and f('br').r == 'w'
)

solver.add_algorithm('bww', ()->
	return f('br').w == 'r' and f('br').r == 'w'
)

solver.add_algorithm('oW', ()->
	return f('bo').w == 'r' and f('bo').r == 'w'
)

solver.add_algorithm('Bww', ()->
	return f('bo').w == 'r' and f('bo').r == 'w'
)

solver.add_algorithm('OW', ()->
	return f('go').w == 'r' and f('go').r == 'w'
)

solver.add_algorithm('g', ()->
	return f('go').w == 'r' and f('go').r == 'w'
)

solver.add_algorithm('gg', ()->
	return f('yg').w == 'r' and f('yg').r == 'w'
)

solver.add_algorithm('gOW', ()->
	return f('yg').w == 'r' and f('yg').r == 'w'
)

solver.add_algorithm('rrw', ()->
	return f('yr').w == 'r' and f('yr').r == 'w'
)

solver.add_algorithm('rG', ()->
	return f('yr').w == 'r' and f('yr').r == 'w'
)

solver.add_algorithm('bbww', ()->
	return f('yb').w == 'r' and f('yb').r == 'w'
)

solver.add_algorithm('bRw', ()->
	return f('yb').w == 'r' and f('yb').r == 'w'
)

solver.add_algorithm('ooW', ()->
	return f('yo').w == 'r' and f('yo').r == 'w'
)

solver.add_algorithm('Og', ()->
	return f('yo').w == 'r' and f('yo').r == 'w'
)

solver.go()