permutations = [
	#Permutation

	#Edge Rotation cw

	[
		(cube)->
			return cube.fetch('ygr').g == 'g' and cube.fetch('ybr').r == 'r' and cube.fetch('ybo').b == 'b' and cube.fetch('yg').g == 'g' and cube.fetch('yr').r == 'b'
		"bbyoRbbOrybb"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'g' and cube.fetch('ybr').r == 'r' and cube.fetch('ybo').b == 'b' and cube.fetch('yg').g == 'b' and cube.fetch('yr').r == 'r'
		"ooygBooGbyoo"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'g' and cube.fetch('ybr').r == 'r' and cube.fetch('ybo').b == 'b' and cube.fetch('yg').g == 'r' and cube.fetch('yr').r == 'o'
		"ggyRoggrOygg"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'g' and cube.fetch('ybr').r == 'r' and cube.fetch('ybo').b == 'b' and cube.fetch('yg').g == 'r' and cube.fetch('yr').r == 'b'
		"rrybGrrBgyrr"
	]


	#Edge Rotation ccw

	[
		(cube)->
			return cube.fetch('ygr').g == 'g' and cube.fetch('ybr').r == 'r' and cube.fetch('ybo').b == 'b' and cube.fetch('yg').g == 'g' and cube.fetch('yr').r == 'o'
		"bbYoRbbOrYbb"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'g' and cube.fetch('ybr').r == 'r' and cube.fetch('ybo').b == 'b' and cube.fetch('yg').g == 'o' and cube.fetch('yr').r == 'r'
		"ooYgBooGbYoo"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'g' and cube.fetch('ybr').r == 'r' and cube.fetch('ybo').b == 'b' and cube.fetch('yg').g == 'o' and cube.fetch('yr').r == 'g'
		"ggYRoggrOYgg"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'g' and cube.fetch('ybr').r == 'r' and cube.fetch('ybo').b == 'b' and cube.fetch('yg').g == 'b' and cube.fetch('yr').r == 'g'
		"rrYbGrrBgYrr"
	]


	#Opposite Edges

	[
		(cube)->
			return cube.fetch('ygr').g == 'g' and cube.fetch('ybr').r == 'r' and cube.fetch('ybo').b == 'b' and cube.fetch('yg').g == 'b' and cube.fetch('yr').r == 'o'
		"bbggybbggyybbggybbgg"
	]


	#Adjacent Edge Swap

	[
		(cube)->
			return cube.fetch('ygr').g == 'g' and cube.fetch('ybr').r == 'r' and cube.fetch('ybo').b == 'b' and cube.fetch('yg').g == 'o' and cube.fetch('yr').r == 'b'
		"rGRgbRbGRgrbby"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'g' and cube.fetch('ybr').r == 'r' and cube.fetch('ybo').b == 'b' and cube.fetch('yg').g == 'r' and cube.fetch('yr').r == 'g'
		"bRBroBoRBrbooy"
	]


	#Adjacent Block Pair Swap Left

	[
		(cube)->
			return cube.fetch('ygr').g == 'g' and cube.fetch('ybr').r == 'b' and cube.fetch('ybo').b == 'r' and cube.fetch('yg').g == 'g' and cube.fetch('yr').r == 'b'
		"gYByGyybYByyb"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'g' and cube.fetch('ybr').r == 'r' and cube.fetch('ybo').b == 'o' and cube.fetch('yg').g == 'g' and cube.fetch('yr').r == 'r'
		"rYOyRyyoYOyyo"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'o' and cube.fetch('ybr').r == 'r' and cube.fetch('ybo').b == 'b' and cube.fetch('yg').g == 'o' and cube.fetch('yr').r == 'r'
		"bYGyByygYGyyg"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'r' and cube.fetch('ybr').r == 'g' and cube.fetch('ybo').b == 'b' and cube.fetch('yg').g == 'r' and cube.fetch('yr').r == 'g'
		"oYRyOyyrYRyyr"
	]


	#Adjacent Block Pair Swap Right

	[
		(cube)->
			return cube.fetch('ygr').g == 'g' and cube.fetch('ybr').r == 'b' and cube.fetch('ybo').b == 'r' and cube.fetch('yg').g == 'g' and cube.fetch('yr').r == 'r'
		"GybYgyyBybyyB"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'g' and cube.fetch('ybr').r == 'r' and cube.fetch('ybo').b == 'o' and cube.fetch('yg').g == 'o' and cube.fetch('yr').r == 'r'
		"RyoYryyOyoyyO"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'o' and cube.fetch('ybr').r == 'r' and cube.fetch('ybo').b == 'b' and cube.fetch('yg').g == 'r' and cube.fetch('yr').r == 'g'
		"BygYbyyGygyyG"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'r' and cube.fetch('ybr').r == 'g' and cube.fetch('ybo').b == 'b' and cube.fetch('yg').g == 'g' and cube.fetch('yr').r == 'b'
		"OyrYoyyRyryyR"
	]


	#Corner Rotation cw

	[
		(cube)->
			return cube.fetch('ygr').g == 'g' and cube.fetch('ybr').r == 'b' and cube.fetch('ybo').b == 'o' and cube.fetch('yg').g == 'g' and cube.fetch('yr').r == 'r'
		"OgObboGObboo"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'b' and cube.fetch('ybr').r == 'r' and cube.fetch('ybo').b == 'o' and cube.fetch('yg').g == 'g' and cube.fetch('yr').r == 'r'
		"GrGoogRGoogg"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'r' and cube.fetch('ybr').r == 'o' and cube.fetch('ybo').b == 'b' and cube.fetch('yg').g == 'g' and cube.fetch('yr').r == 'r'
		"RbRggrBRggrr"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'r' and cube.fetch('ybr').r == 'b' and cube.fetch('ybo').b == 'g' and cube.fetch('yg').g == 'g' and cube.fetch('yr').r == 'r'
		"BoBrrbOBrrbb"
	]


	#Corner Rotation ccw

	[
		(cube)->
			return cube.fetch('ygr').g == 'g' and cube.fetch('ybr').r == 'o' and cube.fetch('ybo').b == 'r' and cube.fetch('yg').g == 'g' and cube.fetch('yr').r == 'r'
		"oobbogObboGo"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'o' and cube.fetch('ybr').r == 'r' and cube.fetch('ybo').b == 'g' and cube.fetch('yg').g == 'g' and cube.fetch('yr').r == 'r'
		"ggoogrGoogRg"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'o' and cube.fetch('ybr').r == 'g' and cube.fetch('ybo').b == 'b' and cube.fetch('yg').g == 'g' and cube.fetch('yr').r == 'r'
		"rrggrbRggrBr"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'b' and cube.fetch('ybr').r == 'g' and cube.fetch('ybo').b == 'r' and cube.fetch('yg').g == 'g' and cube.fetch('yr').r == 'r'
		"bbrrboBrrbOb"
	]


	#Mirror Swap

	[
		(cube)->
			return cube.fetch('ygr').g == 'g' and cube.fetch('ybr').r == 'o' and cube.fetch('ybo').b == 'b' and cube.fetch('yg').g == 'g' and cube.fetch('yr').r == 'r'
		"GybYgyGyBYgyybyyB"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'b' and cube.fetch('ybr').r == 'r' and cube.fetch('ybo').b == 'g' and cube.fetch('yg').g == 'o' and cube.fetch('yr').r == 'r'
		"RyoYryRyOYryyoyyO"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'g' and cube.fetch('ybr').r == 'o' and cube.fetch('ybo').b == 'b' and cube.fetch('yg').g == 'r' and cube.fetch('yr').r == 'g'
		"BygYbyByGYbyygyyG"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'b' and cube.fetch('ybr').r == 'r' and cube.fetch('ybo').b == 'g' and cube.fetch('yg').g == 'g' and cube.fetch('yr').r == 'b'
		"OyrYoyOyRYoyyryyR"
	]


	#Arrowhead

	[
		(cube)->
			return cube.fetch('ygr').g == 'g' and cube.fetch('ybr').r == 'o' and cube.fetch('ybo').b == 'b' and cube.fetch('yg').g == 'o' and cube.fetch('yr').r == 'r'
		"brYRYryRBryRYRbrB"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'b' and cube.fetch('ybr').r == 'r' and cube.fetch('ybo').b == 'g' and cube.fetch('yg').g == 'g' and cube.fetch('yr').r == 'r'
		"rgYGYgyGRgyGYGrgR"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'g' and cube.fetch('ybr').r == 'o' and cube.fetch('ybo').b == 'b' and cube.fetch('yg').g == 'g' and cube.fetch('yr').r == 'b'
		"goYOYoyOGoyOYOgoG"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'b' and cube.fetch('ybr').r == 'r' and cube.fetch('ybo').b == 'g' and cube.fetch('yg').g == 'r' and cube.fetch('yr').r == 'g'
		"obYBYbyBObyBYBobO"
	]


	#T-Perm

	[
		(cube)->
			return cube.fetch('ygr').g == 'o' and cube.fetch('ybr').r == 'r' and cube.fetch('ybo').b == 'b' and cube.fetch('yg').g == 'b' and cube.fetch('yr').r == 'r'
		"gyGYGrggYGYgyGR"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'r' and cube.fetch('ybr').r == 'g' and cube.fetch('ybo').b == 'b' and cube.fetch('yg').g == 'g' and cube.fetch('yr').r == 'o'
		"ryRYRbrrYRYryRB"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'g' and cube.fetch('ybr').r == 'b' and cube.fetch('ybo').b == 'r' and cube.fetch('yg').g == 'b' and cube.fetch('yr').r == 'r'
		"byBYBobbYBYbyBO"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'g' and cube.fetch('ybr').r == 'r' and cube.fetch('ybo').b == 'o' and cube.fetch('yg').g == 'g' and cube.fetch('yr').r == 'o'
		"oyOYOgooYOYoyOG"
	]


	#Cross-Perm

	[
		(cube)->
			return cube.fetch('ygr').g == 'g' and cube.fetch('ybr').r == 'b' and cube.fetch('ybo').b == 'r' and cube.fetch('yg').g == 'g' and cube.fetch('yr').r == 'o'
		"ggOgwwBrbwwgrgoGR"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'g' and cube.fetch('ybr').r == 'r' and cube.fetch('ybo').b == 'o' and cube.fetch('yg').g == 'b' and cube.fetch('yr').r == 'r'
		"rrGrwwObowwrbrgRB"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'o' and cube.fetch('ybr').r == 'r' and cube.fetch('ybo').b == 'b' and cube.fetch('yg').g == 'g' and cube.fetch('yr').r == 'o'
		"bbRbwwGogwwbobrBO"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'r' and cube.fetch('ybr').r == 'g' and cube.fetch('ybo').b == 'b' and cube.fetch('yg').g == 'b' and cube.fetch('yr').r == 'r'
		"ooBowwRgrwwogobOG"
	]


	#Opposite Block Pair Swap Right

	[
		(cube)->
			return cube.fetch('ygr').g == 'b' and cube.fetch('ybr').r == 'r' and cube.fetch('ybo').b == 'g' and cube.fetch('yg').g == 'g' and cube.fetch('yr').r == 'o'
		"oYryyOyRoYryyOyRY"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'g' and cube.fetch('ybr').r == 'o' and cube.fetch('ybo').b == 'b' and cube.fetch('yg').g == 'b' and cube.fetch('yr').r == 'r'
		"gYbyyGyBgYbyyGyBY"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'b' and cube.fetch('ybr').r == 'r' and cube.fetch('ybo').b == 'g' and cube.fetch('yg').g == 'g' and cube.fetch('yr').r == 'o'
		"rYoyyRyOrYoyyRyOY"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'g' and cube.fetch('ybr').r == 'o' and cube.fetch('ybo').b == 'b' and cube.fetch('yg').g == 'b' and cube.fetch('yr').r == 'r'
		"bYgyyByGbYgyyByGY"
	]


	#Opposite Block Pair Swap Left

	[
		(cube)->
			return cube.fetch('ygr').g == 'g' and cube.fetch('ybr').r == 'o' and cube.fetch('ybo').b == 'b' and cube.fetch('yg').g == 'g' and cube.fetch('yr').r == 'o'
		"RyOyyrYoRyOyyrYoy"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'b' and cube.fetch('ybr').r == 'r' and cube.fetch('ybo').b == 'g' and cube.fetch('yg').g == 'b' and cube.fetch('yr').r == 'r'
		"ByGyybYgByGyybYgy"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'g' and cube.fetch('ybr').r == 'o' and cube.fetch('ybo').b == 'b' and cube.fetch('yg').g == 'g' and cube.fetch('yr').r == 'o'
		"OyRyyoYrOyRyyoYry"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'b' and cube.fetch('ybr').r == 'r' and cube.fetch('ybo').b == 'g' and cube.fetch('yg').g == 'b' and cube.fetch('yr').r == 'r'
		"GyByygYbGyByygYby"
	]


	#4 Corner Swap

	[
		(cube)->
			return cube.fetch('ygr').g == 'o' and cube.fetch('ybr').r == 'b' and cube.fetch('ybo').b == 'r' and cube.fetch('yg').g == 'g' and cube.fetch('yr').r == 'r'
		"gOGrgoGrrBobrBOb"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'r' and cube.fetch('ybr').r == 'g' and cube.fetch('ybo').b == 'o' and cube.fetch('yg').g == 'g' and cube.fetch('yr').r == 'r'
		"rGRbrgRbbOgobOGo"
	]


	#Sidebar Back Left

	[
		(cube)->
			return cube.fetch('ygr').g == 'g' and cube.fetch('ybr').r == 'b' and cube.fetch('ybo').b == 'r' and cube.fetch('yg').g == 'r' and cube.fetch('yr').r == 'g'
		"YrrGRYRyrgRyyryyR"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'g' and cube.fetch('ybr').r == 'r' and cube.fetch('ybo').b == 'o' and cube.fetch('yg').g == 'g' and cube.fetch('yr').r == 'b'
		"YbbRBYBybrByybyyB"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'o' and cube.fetch('ybr').r == 'r' and cube.fetch('ybo').b == 'b' and cube.fetch('yg').g == 'g' and cube.fetch('yr').r == 'r'
		"YooBOYOyobOyyoyyO"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'r' and cube.fetch('ybr').r == 'g' and cube.fetch('ybo').b == 'b' and cube.fetch('yg').g == 'o' and cube.fetch('yr').r == 'r'
		"YggOGYGygoGyygyyG"
	]


	#Sidebar Back Right

	[
		(cube)->
			return cube.fetch('ygr').g == 'g' and cube.fetch('ybr').r == 'b' and cube.fetch('ybo').b == 'r' and cube.fetch('yg').g == 'o' and cube.fetch('yr').r == 'r'
		"yoogoyoYOGoyyOyyo"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'g' and cube.fetch('ybr').r == 'r' and cube.fetch('ybo').b == 'o' and cube.fetch('yg').g == 'r' and cube.fetch('yr').r == 'g'
		"yggrgygYGRgyyGyyg"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'o' and cube.fetch('ybr').r == 'r' and cube.fetch('ybo').b == 'b' and cube.fetch('yg').g == 'g' and cube.fetch('yr').r == 'b'
		"yrrbryrYRBryyRyyr"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'r' and cube.fetch('ybr').r == 'g' and cube.fetch('ybo').b == 'b' and cube.fetch('yg').g == 'g' and cube.fetch('yr').r == 'r'
		"ybbobybYBObyyByyb"
	]


	#Sidebar Front Left

	[
		(cube)->
			return cube.fetch('ygr').g == 'r' and cube.fetch('ybr').r == 'b' and cube.fetch('ybo').b == 'g' and cube.fetch('yg').g == 'g' and cube.fetch('yr').r == 'o'
		"oowByBYbWooGyg"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'g' and cube.fetch('ybr').r == 'b' and cube.fetch('ybo').b == 'o' and cube.fetch('yg').g == 'o' and cube.fetch('yr').r == 'r'
		"ggwOyOYoWggRyr"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'b' and cube.fetch('ybr').r == 'r' and cube.fetch('ybo').b == 'o' and cube.fetch('yg').g == 'o' and cube.fetch('yr').r == 'g'
		"rrwGyGYgWrrByb"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'r' and cube.fetch('ybr').r == 'o' and cube.fetch('ybo').b == 'b' and cube.fetch('yg').g == 'b' and cube.fetch('yr').r == 'g'
		"bbwRyRYrWbbOyo"
	]


	#Sidebar Front Right

	[
		(cube)->
			return cube.fetch('ygr').g == 'g' and cube.fetch('ybr').r == 'o' and cube.fetch('ybo').b == 'r' and cube.fetch('yg').g == 'g' and cube.fetch('yr').r == 'b'
		"rrWbYbyBwrrgYG"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'o' and cube.fetch('ybr').r == 'r' and cube.fetch('ybo').b == 'g' and cube.fetch('yg').g == 'b' and cube.fetch('yr').r == 'r'
		"bbWoYoyOwbbrYR"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'o' and cube.fetch('ybr').r == 'g' and cube.fetch('ybo').b == 'b' and cube.fetch('yg').g == 'r' and cube.fetch('yr').r == 'o'
		"ooWgYgyGwoobYB"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'b' and cube.fetch('ybr').r == 'g' and cube.fetch('ybo').b == 'r' and cube.fetch('yg').g == 'r' and cube.fetch('yr').r == 'b'
		"ggWrYryRwggoYO"
	]


	#Frontbar Front Left

	[
		(cube)->
			return cube.fetch('ygr').g == 'g' and cube.fetch('ybr').r == 'b' and cube.fetch('ybo').b == 'o' and cube.fetch('yg').g == 'g' and cube.fetch('yr').r == 'o'
		"gyGrrWbYByBwrr"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'b' and cube.fetch('ybr').r == 'r' and cube.fetch('ybo').b == 'o' and cube.fetch('yg').g == 'o' and cube.fetch('yr').r == 'r'
		"ryRbbWoYOyOwbb"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'r' and cube.fetch('ybr').r == 'o' and cube.fetch('ybo').b == 'b' and cube.fetch('yg').g == 'o' and cube.fetch('yr').r == 'g'
		"byBooWgYGyGwoo"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'r' and cube.fetch('ybr').r == 'b' and cube.fetch('ybo').b == 'g' and cube.fetch('yg').g == 'b' and cube.fetch('yr').r == 'g'
		"oyOggWrYRyRwgg"
	]


	#Frontbar Front Right

	[
		(cube)->
			return cube.fetch('ygr').g == 'b' and cube.fetch('ybr').r == 'g' and cube.fetch('ybo').b == 'r' and cube.fetch('yg').g == 'g' and cube.fetch('yr').r == 'b'
		"GYgoowBybYbWoo"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'g' and cube.fetch('ybr').r == 'o' and cube.fetch('ybo').b == 'r' and cube.fetch('yg').g == 'b' and cube.fetch('yr').r == 'r'
		"RYrggwOyoYoWgg"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'o' and cube.fetch('ybr').r == 'r' and cube.fetch('ybo').b == 'g' and cube.fetch('yg').g == 'r' and cube.fetch('yr').r == 'o'
		"BYbrrwGygYgWrr"
	]
	[
		(cube)->
			return cube.fetch('ygr').g == 'o' and cube.fetch('ybr').r == 'g' and cube.fetch('ybo').b == 'b' and cube.fetch('yg').g == 'r' and cube.fetch('yr').r == 'b'
		"OYobbwRyrYrWbb"
	]

]

module.exports = permutations