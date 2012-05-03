# Last Layer Orientation
# Cross

# L=> Cross
[
	(cube)->
		return cube.fetch('yg').y == 'y' and cube.fetch('yr').r == 'y' and cube.fetch('yb').b == 'y' and cube.fetch('yo').y == 'y'
	"byrYRB"
]
[
	(cube)->
		return cube.fetch('yg').y == 'y' and cube.fetch('yr').y == 'y' and cube.fetch('yb').b == 'y' and cube.fetch('yo').o == 'y'
	"oybYBO"
]
[
	(cube)->
		return cube.fetch('yg').g == 'y' and cube.fetch('yr').y == 'y' and cube.fetch('yb').y == 'y' and cube.fetch('yo').o == 'y'
	"gyoYOG"
]
[
	(cube)->
		return cube.fetch('yg').g == 'y' and cube.fetch('yr').r == 'y' and cube.fetch('yb').y == 'y' and cube.fetch('yo').y == 'y'  
	"rygYGR"
]

# I=> Cross
[
	(cube)->
		return cube.fetch('yg').y == 'y' and cube.fetch('yr').r == 'y' and cube.fetch('yb').y == 'y' and cube.fetch('yo').o == 'y'
	"rgyGYR"
]
[
	(cube)->
		return cube.fetch('yg').g == 'y' and cube.fetch('yr').y == 'y' and cube.fetch('yb').b == 'y' and cube.fetch('yo').y == 'y'
	"byrYRB"
]

# Dot=> Cross
[
	(cube)->
		return cube.fetch('yg').g == 'y' and cube.fetch('yr').r == 'y' and cube.fetch('yb').b == 'y' and cube.fetch('yo').o == 'y'
	"rgyGYRoybYBO"
]
# Cross Complete

# Corner Orientation


# 3 Corners ccw

[
	(cube)->
		return cube.fetch('ygr').y == 'y' and cube.fetch('ybr').b == 'y' and cube.fetch('ybo').o == 'y' and cube.fetch('ygo').g == 'y'
	"GyygyGyg"
]
[
	(cube)->
		return cube.fetch('ygr').r == 'y' and cube.fetch('ybr').y == 'y' and cube.fetch('ybo').o == 'y' and cube.fetch('ygo').g == 'y'
	"RyyryRyr"
]
[
	(cube)->
		return cube.fetch('ygr').r == 'y' and cube.fetch('ybr').b == 'y' and cube.fetch('ybo').y == 'y' and cube.fetch('ygo').g == 'y'
	"ByybyByb"
]
[
	(cube)->
		return cube.fetch('ygr').r == 'y' and cube.fetch('ybr').b == 'y' and cube.fetch('ybo').o == 'y' and cube.fetch('ygo').y == 'y'
	"OyyoyOyo"
]


# 3 Corners cw
 [
	(cube)->
		return cube.fetch('ygr').y == 'y' and cube.fetch('ybr').r == 'y' and cube.fetch('ybo').b == 'y' and cube.fetch('ygo').o == 'y'
	"RyyryRyr"
]
[
	(cube)->
		return cube.fetch('ygr').g == 'y' and cube.fetch('ybr').y == 'y' and cube.fetch('ybo').b == 'y' and cube.fetch('ygo').o == 'y'
	"RyyryRyr"
]
[
	(cube)->
		return cube.fetch('ygr').g == 'y' and cube.fetch('ybr').r == 'y' and cube.fetch('ybo').y == 'y' and cube.fetch('ygo').o == 'y'
	"RyyryRyr"
]
[
	(cube)->
		return cube.fetch('ygr').g == 'y' and cube.fetch('ybr').r == 'y' and cube.fetch('ybo').b == 'y' and cube.fetch('ygo').y == 'y'
	"RyyryRyr"
]


# Infinity
[
	(cube)->
		return cube.fetch('ygr').y == 'y' and cube.fetch('ybr').b == 'y' and cube.fetch('ybo').y == 'y' and cube.fetch('ygo').o == 'y'
	"GRBrgRbr"
]
[
	(cube)->
		return cube.fetch('ygr').y == 'y' and cube.fetch('ybr').r == 'y' and cube.fetch('ybo').y == 'y' and cube.fetch('ygo').g == 'y'
	"BOGobOgo"
]
[
	(cube)->
		return cube.fetch('ygr').r == 'y' and cube.fetch('ybr').y == 'y' and cube.fetch('ybo').b == 'y' and cube.fetch('ygo').y == 'y'
	"OGRgoGrg"
]
[
	(cube)->
		return cube.fetch('ygr').g == 'y' and cube.fetch('ybr').y == 'y' and cube.fetch('ybo').o == 'y' and cube.fetch('ygo').y == 'y'
	"RBObrBob"
]


# Headlights
[
	(cube)->
		return cube.fetch('ygr').y == 'y' and cube.fetch('ybr').y == 'y' and cube.fetch('ybo').o == 'y' and cube.fetch('ygo').o == 'y'
	"ggWgyyGwgyyg"
]
[
	(cube)->
		return cube.fetch('ygr').g == 'y' and cube.fetch('ybr').y == 'y' and cube.fetch('ybo').y == 'y' and cube.fetch('ygo').g == 'y'
	"rrWryyRwryyr"
]
[
	(cube)->
		return cube.fetch('ygr').r == 'y' and cube.fetch('ybr').r == 'y' and cube.fetch('ybo').y == 'y' and cube.fetch('ygo').y == 'y'
	"bbWbyyBwbyyb"
]
[
	(cube)->
		return cube.fetch('ygr').y == 'y' and cube.fetch('ybr').b == 'y' and cube.fetch('ybo').b == 'y' and cube.fetch('ygo').y == 'y'
	"ooWoyyOwoyyo"
]


# Anti-Headlights
[
	(cube)->
		return cube.fetch('ygr').y == 'y' and cube.fetch('ybr').y == 'y' and cube.fetch('ybo').b == 'y' and cube.fetch('ygo').b == 'y'
	"OGrgoGRg"
]
[
	(cube)->
		return cube.fetch('ygr').r == 'y' and cube.fetch('ybr').y == 'y' and cube.fetch('ybo').y == 'y' and cube.fetch('ygo').o == 'y'
	"GRbrgRBr"
]
[
	(cube)->
		return cube.fetch('ygr').g == 'y' and cube.fetch('ybr').b == 'y' and cube.fetch('ybo').y == 'y' and cube.fetch('ygo').y == 'y'
	"RBobrBOb"
]
[
	(cube)->
		return cube.fetch('ygr').y == 'y' and cube.fetch('ybr').r == 'y' and cube.fetch('ybo').o == 'y' and cube.fetch('ygo').y == 'y'
	"BOgobOGo"
]


# 4 Corner Parallel
[
	(cube)->
		return cube.fetch('ygr').r == 'y' and cube.fetch('ybr').r == 'y' and cube.fetch('ybo').o == 'y' and cube.fetch('ygo').o == 'y'
	"OGrgoGRg"
]
[
	(cube)->
		return cube.fetch('ygr').g == 'y' and cube.fetch('ybr').b == 'y' and cube.fetch('ybo').b == 'y' and cube.fetch('ygo').g == 'y'
	"GRbrgRBr"
]


# 4 Corner Perpendicular
[
	(cube)->
		return cube.fetch('ygr').r == 'y' and cube.fetch('ybr').b == 'y' and cube.fetch('ybo').b == 'y' and cube.fetch('ygo').o == 'y'
	"gyyggYggYggyyg"
]
[
	(cube)->
		return cube.fetch('ygr').g == 'y' and cube.fetch('ybr').b == 'y' and cube.fetch('ybo').o == 'y' and cube.fetch('ygo').o == 'y'
	"ryyrrYrrYrryyr"
]
[
	(cube)->
		return cube.fetch('ygr').g == 'y' and cube.fetch('ybr').r == 'y' and cube.fetch('ybo').o == 'y' and cube.fetch('ygo').g == 'y'
	"byybbYbbYbbyyb"
]
[
	(cube)->
		return cube.fetch('ygr').r == 'y' and cube.fetch('ybr').r == 'y' and cube.fetch('ybo').b == 'y' and cube.fetch('ygo').g == 'y'
	"oyyooYooYooyyo"
]