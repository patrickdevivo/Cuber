permutations = require "./permutations.coffee"

algorithms = [
#White-Green

#1◊
	[{ wg: {
		w: 'w'
		g: 'g'
	}}, '']
#1'
	[{ wg: {
		w: 'g'
		g: 'w'
	}}, 'grw']
#2◊
	[{ wr: {
		w: 'w'
		r: 'g'
	}}, 'w']
#2'
	[{ wr: {
		w: 'g'
		r: 'w'
	}}, 'RG']
#3◊
	[{ wb: {
		w: 'w'
		b: 'g'
	}}, 'ww']
#3'
	[{ wb: {
		w: 'g'
		b: 'w'
	}}, 'BRw']
#4◊
	[{ wo: {
		w: 'w'
		o: 'g'
	}}, 'W']
#4'
	[{ wo: {
		w: 'g'
		o: 'w'
	}}, 'og']
#5◊
	[{ gr: {
		g: 'g'
		r: 'w'
	}}, 'G']
#5'
	[{ gr: {
		g: 'w'
		r: 'g'
	}}, 'rw']
#6◊
	[{ br: {
		b: 'g'
		r: 'w'
	}}, 'bww']
#6'
	[{ br: {
		b: 'w'
		r: 'g'
	}}, 'Rw']
#7◊
	[{ bo: {
		b: 'g'
		o: 'w'
	}}, 'Bww']
#7'
	[{ bo: {
		b: 'w'
		o: 'g'
	}}, 'oW']
#8◊
	[{ go: {
		g: 'g'
		o: 'w'
	}}, 'g']
#8'
	[{ go: {
		g: 'w'
		o: 'g'
	}}, 'OW']
#9◊
	[{ yg: {
		y: 'w'
		g: 'g'
	}}, 'gg']
#9'
	[{ yg: {
		y: 'g'
		g: 'w'
	}}, 'gOW']
#10◊
	[{ yr: {
		y: 'w'
		r: 'g'
	}}, 'rrw']
#10'
	[{ yr: {
		y: 'g'
		r: 'w'
	}}, 'rG']
#11◊
	[{ yb: {
		y: 'w'
		b: 'g'
	}}, 'bbww']
#11'
	[{ yb: {
		y: 'g'
		b: 'w'
	}}, 'bRw']
#12◊
	[{ yo: {
		y: 'w'
		o: 'g'
	}}, 'ooW']
#12'
	[{ yo: {
		y: 'g'
		o: 'w'
	}}, 'Og']


#White-Red

#2◊
	[{ wr: {
		w: 'w'
		r: 'r'
	}}, '']
#2'
	[{ wr: {
		w: 'r'
		r: 'w'
	}}, 'rWbw']
#3◊
	[{ wb: {
		w: 'w'
		b: 'r'
	}}, 'BWbw']
#3'
	[{ wb: {
		w: 'r'
		b: 'w'
	}}, 'BR']
#4◊
	[{ wo: {
		w: 'w'
		o: 'r'
	}}, 'owwOww']
#4'
	[{ wo: {
		w: 'r'
		o: 'w'
	}}, 'OWBw']
#5◊
	[{ gr: {
		g: 'w'
		r: 'r'
	}}, 'r']
#5'
	[{ gr: {
		g: 'r'
		r: 'w'
	}}, 'GWg']
#6◊
	[{ br: {
		b: 'w'
		r: 'r'
	}}, 'R']
#6'
	[{ br: {
		b: 'r'
		r: 'w'
	}}, 'Wbw']
#7◊
	[{ bo: {
		b: 'w'
		o: 'r'
	}}, 'BbbR']
#7'
	[{ bo: {
		b: 'r'
		o: 'w'
	}}, 'WBw']
#8◊
	[{ go: {
		g: 'w'
		o: 'r'
	}}, 'wwOww']
#8'
	[{ go: {
		g: 'r'
		o: 'w'
	}}, 'gWG']
#9◊
	[{ yg: {
		y: 'w'
		g: 'r'
	}}, 'yrr']
#9'
	[{ yg: {
		y: 'r'
		g: 'w'
	}}, 'Grg']
#10◊
	[{ yr: {
		y: 'w'
		r: 'r'
	}}, 'rr']
#10'
	[{ yr: {
		y: 'r'
		r: 'w'
	}}, 'YGrg']
#11◊
	[{ yb: {
		y: 'w'
		b: 'r'
	}}, 'Yrr']
#11'
	[{ yb: {
		y: 'r'
		b: 'w'
	}}, 'bR']
#12◊
	[{ yo: {
		y: 'w'
		o: 'r'
	}}, 'yyrr']
#12'
	[{ yo: {
		y: 'r'
		o: 'w'
	}}, 'YbR']


#White-Blue

#3◊
	[{ wb: {
		w: 'w'
		b: 'b'
	}}, '']
#3'
	[{ wb: {
		w: 'b'
		b: 'w'
	}}, 'BwRW']
#4◊
	[{ wo: {
		w: 'w'
		o: 'b'
	}}, 'oWOw']
#4'
	[{ wo: {
		w: 'b'
		o: 'w'
	}}, 'OB']
#5◊
	[{ gr: {
		g: 'b'
		r: 'w'
	}}, 'gyybbG']
#5'
	[{ gr: {
		g: 'w'
		r: 'b'
	}}, 'wrW']
#6◊
	[{ br: {
		b: 'b'
		r: 'w'
	}}, 'b']
#6'
	[{ br: {
		b: 'w'
		r: 'b'
	}}, 'wRW']
#7◊
	[{ bo: {
		b: 'b'
		o: 'w'
	}}, 'B']
#7'
	[{ bo: {
		b: 'w'
		o: 'b'
	}}, 'Wow']
#8◊
	[{ go: {
		g: 'b'
		o: 'w'
	}}, 'wwgww']
#8'
	[{ go: {
		g: 'w'
		o: 'b'
	}}, 'WOw']
#9◊
	[{ yg: {
		y: 'w'
		g: 'b'
	}}, 'yybb']
#9'
	[{ yg: {
		y: 'b'
		g: 'w'
	}}, 'yRbr']
#10◊
	[{ yr: {
		y: 'w'
		r: 'b'
	}}, 'ybb']
#10'
	[{ yr: {
		y: 'b'
		r: 'w'
	}}, 'Rbr']
#11◊
	[{ yb: {
		y: 'w'
		b: 'b'
	}}, 'bb']
#11'
	[{ yb: {
		y: 'b'
		b: 'w'
	}}, 'YRbr']
#12◊
	[{ yo: {
		y: 'w'
		o: 'b'
	}}, 'Ybb']
#12'
	[{ yo: {
		y: 'b'
		o: 'w'
	}}, 'oB']


#White-Orange

#4◊
	[{ wo: {
		w: 'w'
		o: 'o'
	}}, '']
#4'
	[{ wo: {
		w: 'o'
		o: 'w'
	}}, 'OwBW']
#5◊
	[{ gr: {
		g: 'w'
		r: 'o'
	}}, 'wwrww']
#5'
	[{ gr: {
		g: 'o'
		r: 'w'
	}}, 'WGw']
#6◊
	[{ br: {
		b: 'w'
		r: 'o'
	}}, 'wwRww']
#6'
	[{ br: {
		b: 'o'
		r: 'w'
	}}, 'wbW']
#7◊
	[{ bo: {
		b: 'w'
		o: 'o'
	}}, 'o']
#7'
	[{ bo: {
		b: 'o'
		o: 'w'
	}}, 'wBW']
#8◊
	[{ go: {
		g: 'w'
		o: 'o'
	}}, 'O']
#8'
	[{ go: {
		g: 'o'
		o: 'w'
	}}, 'Wgw']
#9◊
	[{ yg: {
		y: 'w'
		g: 'o'
	}}, 'Yoo']
#9'
	[{ yg: {
		y: 'o'
		g: 'w'
	}}, 'gOG']
#10◊
	[{ yr: {
		y: 'w'
		r: 'o'
	}}, 'yyoo']
#10'
	[{ yr: {
		y: 'o'
		r: 'w'
	}}, 'YgOG']
#11◊
	[{ yb: {
		y: 'w'
		b: 'o'
	}}, 'yoo']
#11'
	[{ yb: {
		y: 'o'
		b: 'w'
	}}, 'Bob']
#12◊
	[{ yo: {
		y: 'w'
		o: 'o'
	}}, 'oo']
#12'
	[{ yo: {
		y: 'o'
		o: 'w'
	}}, 'YBob']
#Cross Complete


#Corners


#White-Green-Red
#1◊
	[{ wgr: {
		w: 'w'
		g: 'g'
		r: 'r'
	}}, '']
#1'
	[{ wgr: {
		w: 'g'
		g: 'r'
		r: 'w'
	}}, 'RYryRYr']
#'1
	[{ wgr: {
		w: 'r'
		g: 'w'
		r: 'g'
	}}, 'gyGYgyG']
#2◊
	[{ wbr: {
		w: 'w'
		b: 'r'
		r: 'g'
	}}, 'BYbgyG']
#2'
	[{ wbr: {
		w: 'g'
		b: 'w'
		r: 'r'
	}}, 'BYbRYr']
#'2
	[{ wbr: {
		w: 'r'
		b: 'g'
		r: 'w'
	}}, 'BybYgyG']
#3◊
	[{ wbo: {
		w: 'w'
		b: 'g'
		o: 'r'
	}}, 'OYoYgyG']
#3'
	[{ wbo: {
		w: 'g'
		b: 'r'
		o: 'w'
	}}, 'OYoYRYr']
#'3
	[{ wbo: {
		w: 'r'
		b: 'w'
		o: 'g'
	}}, 'byBygyG']
#4◊
	[{ wgo: {
		w: 'w'
		g: 'r'
		o: 'g'
	}}, 'oyORYr']
#4'
	[{ wgo: {
		w: 'g'
		g: 'w'
		o: 'r'
	}}, 'oYOyRYr']
#'4
	[{ wgo: {
		w: 'r'
		g: 'g'
		o: 'w'
	}}, 'oyOgyG']
#5◊
	[{ ygr: {
		y: 'w'
		g: 'r'
		r: 'g'
	}}, 'RyyryRYr']
#5'
	[{ ygr: {
		y: 'g'
		g: 'w'
		r: 'r'
	}}, 'gyG']
#'5
	[{ ygr: {
		y: 'r'
		g: 'g'
		r: 'w'
	}}, 'RYr']
#6◊
	[{ ybr: {
		y: 'w'
		b: 'g'
		r: 'r'
	}}, 'ByybRYr']
#6'
	[{ ybr: {
		y: 'g'
		b: 'r'
		r: 'w'
	}}, 'YgyG']
#'6
	[{ ybr: {
		y: 'r'
		b: 'w'
		r: 'g'
	}}, 'YRYr']
#7◊
	[{ ybo: {
		y: 'w'
		b: 'r'
		o: 'g'
	}}, 'OyyoYRYr']
#7'
	[{ ybo: {
		y: 'g'
		b: 'w'
		o: 'r'
	}}, 'yygyG']
#'7
	[{ ybo: {
		y: 'r'
		b: 'g'
		o: 'w'
	}}, 'yyRYr']
#8◊
	[{ ygo: {
		y: 'w'
		g: 'g'
		o: 'r'
	}}, 'oyyOgyG']
#8'
	[{ ygo: {
		y: 'g'
		g: 'r'
		o: 'w'
	}}, 'ygyG']
#'8
	[{ ygo: {
		y: 'r'
		g: 'w'
		o: 'g'
	}}, 'yRYr']

#White-Blue-Red
#2◊
	[{ wbr: {
		w: 'w'
		b: 'b'
		r: 'r'
	}}, '']
#2'
	[{ wbr: {
		w: 'r'
		b: 'w'
		r: 'b'
	}}, 'BYbyBYb']
#'2
	[{ wbr: {
		w: 'b'
		b: 'r'
		r: 'w'
	}}, 'ryRYryR']
#3◊
	[{ wbo: {
		w: 'w'
		b: 'r'
		o: 'b'
	}}, 'OYoryR']
#3'
	[{ wbo: {
		w: 'r'
		b: 'b'
		o: 'w'
	}}, 'OYoBYb']
#'3
	[{ wbo: {
		w: 'b'
		b: 'w'
		o: 'r'
	}}, 'OyoYryR']
#4◊
	[{ wgo: {
		w: 'w'
		g: 'b'
		o: 'r'
	}}, 'oyyOBYb']
#4'
	[{ wgo: {
		w: 'r'
		g: 'w'
		o: 'b'
	}}, 'GYgYBYb']
#'4
	[{ wgo: {
		w: 'b'
		g: 'r'
		o: 'w'
	}}, 'oyOyryR']
#5◊
	[{ ygr: {
		y: 'w'
		g: 'b'
		r: 'r'
	}}, 'yryyRYryR']
#5'
	[{ ygr: {
		y: 'r'
		g: 'w'
		r: 'b'
	}}, 'yryR']
#'5
	[{ ygr: {
		y: 'b'
		g: 'r'
		r: 'w'
	}}, 'yBYb']
#6◊
	[{ ybr: {
		y: 'w'
		b: 'r'
		r: 'b'
	}}, 'ByybyBYb']
#6'
	[{ ybr: {
		y: 'r'
		b: 'b'
		r: 'w'
	}}, 'ryR']
#'6
	[{ ybr: {
		y: 'b'
		b: 'w'
		r: 'r'
	}}, 'BYb']
#7◊
	[{ ybo: {
		y: 'w'
		b: 'b'
		o: 'r'
	}}, 'OyyoBYb']
#7'
	[{ ybo: {
		y: 'r'
		b: 'w'
		o: 'b'
	}}, 'YryR']
#'7
	[{ ybo: {
		y: 'b'
		b: 'r'
		o: 'w'
	}}, 'YBYb']
#8◊
	[{ ygo: {
		y: 'w'
		g: 'r'
		o: 'b'
	}}, 'GyygYBYb']
#8'
	[{ ygo: {
		y: 'r'
		g: 'b'
		o: 'w'
	}}, 'yyryR']
#'8
	[{ ygo: {
		y: 'b'
		g: 'w'
		o: 'r'
	}}, 'yyBYb']

#White-Blue-Orange
#3◊
	[{ wbo: {
		w: 'w'
		b: 'b'
		o: 'o'
	}}, '']
#3'
	[{ wbo: {
		w: 'b'
		b: 'o'
		o: 'w'
	}}, 'OYoyOYo']
#'3
	[{ wbo: {
		w: 'o'
		b: 'w'
		o: 'b'
	}}, 'byBYbyB']
#4◊
	[{ wgo: {
		w: 'w'
		g: 'o'
		o: 'b'
	}}, 'GYgbyB']
#4'
	[{ wgo: {
		w: 'b'
		g: 'w'
		o: 'o'
	}}, 'GYgOYo']
#'4
	[{ wgo: {
		w: 'o'
		g: 'b'
		o: 'w'
	}}, 'GygYbyB']
#5◊
	[{ ygr: {
		y: 'w'
		g: 'o'
		r: 'b'
	}}, 'YGyygOYo']
#5'
	[{ ygr: {
		y: 'b'
		g: 'w'
		r: 'o'
	}}, 'yybyB']
#'5
	[{ ygr: {
		y: 'o'
		g: 'b'
		r: 'w'
	}}, 'yyOYo']
#6◊
	[{ ybr: {
		y: 'w'
		b: 'b'
		r: 'o'
	}}, 'ybyyBYbyB']
#6'
	[{ ybr: {
		y: 'b'
		b: 'o'
		r: 'w'
	}}, 'ybyB']
#'6
	[{ ybr: {
		y: 'o'
		b: 'w'
		r: 'b'
	}}, 'yOYo']
#7◊
	[{ ybo: {
		y: 'w'
		b: 'o'
		o: 'b'
	}}, 'OyyoyOYo']
#7'
	[{ ybo: {
		y: 'b'
		b: 'w'
		o: 'o'
	}}, 'byB']
#'7
	[{ ybo: {
		y: 'o'
		b: 'b'
		o: 'w'
	}}, 'OYo']
#8◊
	[{ ygo: {
		y: 'w'
		g: 'b'
		o: 'o'
	}}, ' GyygOYo']
#8'
	[{ ygo: {
		y: 'b'
		g: 'o'
		o: 'w'
	}}, 'YbyB']
#'8
	[{ ygo: {
		y: 'o'
		g: 'w'
		o: 'b'
	}}, 'YOYo']

#White-Green-Orange
#4◊
	[{ wgo: {
		w: 'w'
		g: 'g'
		o: 'o'
	}}, '']
#4'
	[{ wgo: {
		w: 'o'
		g: 'w'
		o: 'g'
	}}, 'GYgyGYg']
#'4
	[{ wgo: {
		w: 'g'
		g: 'o'
		o: 'w'
	}}, 'oyOYoyO']
#5◊
	[{ ygr: {
		y: 'w'
		g: 'g'
		r: 'o'
	}}, 'YGyygyGYg']
#5'
	[{ ygr: {
		y: 'o'
		g: 'w'
		r: 'g'
	}}, 'YoyO']
#'5
	[{ ygr: {
		y: 'g'
		g: 'o'
		r: 'w'
	}}, 'YGYg']
#6◊
	[{ ybr: {
		y: 'w'
		b: 'o'
		r: 'g'
	}}, 'yyGyygyGYg']
#6'
	[{ ybr: {
		y: 'o'
		b: 'g'
		r: 'w'
	}}, 'yyoyO']
#'6
	[{ ybr: {
		y: 'g'
		b: 'w'
		r: 'o'
	}}, 'yyGYg']
#7◊
	[{ ybo: {
		y: 'w'
		b: 'g'
		o: 'o'
	}}, 'yGyygyGYg']
#7'
	[{ ybo: {
		y: 'o'
		b: 'w'
		o: 'g'
	}}, 'yoyO']
#'7
	[{ ybo: {
		y: 'g'
		b: 'o'
		o: 'w'
	}}, 'yGYg']
#8◊
	[{ ygo: {
		y: 'w'
		g: 'o'
		o: 'g'
	}}, 'GyygyGYg']
#8'
	[{ ygo: {
		y: 'o'
		g: 'g'
		o: 'w'
	}}, 'oyO']
#'8
	[{ ygo: {
		y: 'g'
		g: 'w'
		o: 'o'
	}}, 'GYg']

#First Layer Complete!

#Second Layer

#Green-Red
#5◊
	[{ gr: {
		g: 'g'
		r: 'r'
	}}, '']
#5'
	[{ gr: {
		g: 'r'
		r: 'g'
	}}, 'RYrygyGyRYrygyG']
#6◊
	[{ br: {
		b: 'g'
		r: 'r'
	}}, 'rryyrryyrr']
#6'
	[{ br: {
		b: 'r'
		r: 'g'
	}}, 'BYbyryRYgyGYRYr']
#7◊
	[{ bo: {
		b: 'g'
		o: 'r'
	}}, 'bbyrryyrryyrrybb']
#7'
	[{ bo: {
		b: 'r'
		o: 'g'
	}}, 'byBYOYoygyGYRYr']
#8◊
	[{ go: {
		g: 'g'
		o: 'r'
	}}, 'ggyyggyygg']
#8'
	[{ go: {
		g: 'r'
		o: 'g'
	}}, 'oyOYGYgyRYrygyG']
#9◊
	[{ yg: {
		y: 'r'
		g: 'g'
	}}, 'YRYrygyG']
#9'
	[{ yg: {
		y: 'g'
		g: 'r'
	}}, 'yygyGYRYr']
#10◊
	[{ yr: {
		y: 'g'
		r: 'r'
	}}, 'ygyGYRYr']
#10'
	[{ yr: {
		y: 'r'
		r: 'g'
	}}, 'yyRYrygyG']
#11◊
	[{ yb: {
		y: 'r'
		b: 'g'
	}}, 'yRYrygyG']
#11'
	[{ yb: {
		y: 'g'
		b: 'r'
	}}, 'gyGYRYr']
#12◊
	[{ yo: {
		y: 'g'
		o: 'r'
	}}, 'YgyGYRYr']
#12'
	[{ yo: {
		y: 'r'
		o: 'g'
	}}, 'RYrygyG']

#Blue-Red
#6◊
	[{ br: {
		b: 'b'
		r: 'r'
	}}, '']
#6'
	[{ br: {
		b: 'r'
		r: 'b'
	}}, 'BYbyryRyBYbyryR']
#7◊
	[{ bo: {
		b: 'b'
		o: 'r'
	}}, 'bbyybbyybb']
#7'
	[{ bo: {
		b: 'r'
		o: 'b'
	}}, 'OYoybyBYryRYBYb']
#8◊
	[{ go: {
		g: 'b'
		o: 'r'
	}}, 'ooybbyybbyybbyoo']
#8'
	[{ go: {
		g: 'r'
		o: 'b'
	}}, 'GYgyoyOYBYbyryR']
#9◊
	[{ yg: {
		y: 'r'
		g: 'b'
	}}, 'YryRYBYb']
#9'
	[{ yg: {
		y: 'b'
		g: 'r'
	}}, 'BYbyryR']
#10◊
	[{ yr: {
		y: 'b'
		r: 'r'
	}}, 'YBYbyryR']
#10'
	[{ yr: {
		y: 'r'
		r: 'b'
	}}, 'yyryRYBYb']
#11◊
	[{ yb: {
		y: 'r'
		b: 'b'
	}}, 'yryRYBYb']
#11'
	[{ yb: {
		y: 'b'
		b: 'r'
	}}, 'yyBYbyryR']
#12◊
	[{ yo: {
		y: 'b'
		o: 'r'
	}}, 'yBYbyryR']
#12'
	[{ yo: {
		y: 'r'
		o: 'b'
	}}, 'ryRYBYb']

#Blue-Orange
#7◊
	[{ bo: {
		b: 'b'
		o: 'o'
	}}, '']
#7'
	[{ bo: {
		b: 'o'
		o: 'b'
	}}, 'OYoybyByOYoybyB']
#8◊
	[{ go: {
		g: 'b'
		o: 'o'
	}}, 'ooyyooyyoo']
#8'
	[{ go: {
		g: 'o'
		o: 'b'
	}}, 'GYgyoyOYbyBYOYo']
#9◊
	[{ yg: {
		y: 'o'
		g: 'b'
	}}, 'yOYoybyB']
#9'
	[{ yg: {
		y: 'b'
		g: 'o'
	}}, 'byBYOYo']
#10◊
	[{ yr: {
		y: 'b'
		r: 'o'
	}}, 'YbyBYOYo']
#10'
	[{ yr: {
		y: 'o'
		r: 'b'
	}}, 'OYoybyB']
#11◊
	[{ yb: {
		y: 'o'
		b: 'b'
	}}, 'YOYoybyB']
#11'
	[{ yb: {
		y: 'b'
		b: 'o'
	}}, 'yybyBYOYo']
#12◊
	[{ yo: {
		y: 'b'
		o: 'o'
	}}, 'ybyBYOYo']
#12'
	[{ yo: {
		y: 'o'
		o: 'b'
	}}, 'yyOYoybyB']

#Green-Orange
#8◊
	[{ go: {
		g: 'g'
		o: 'o'
	}}, '']
#8'
	[{ go: {
		g: 'o'
		o: 'g'
	}}, 'GYgyoyOyGYgyoyO']
#9◊
	[{ yg: {
		y: 'o'
		g: 'g'
	}}, 'yoyOYGYg']
#9'
	[{ yg: {
		y: 'g'
		g: 'o'
	}}, 'yyGYgyoyO']
#10◊
	[{ yr: {
		y: 'g'
		r: 'o'
	}}, 'yGYgyoyO']
#10'
	[{ yr: {
		y: 'o'
		r: 'g'
	}}, 'oyOYGYg']
#11◊
	[{ yb: {
		y: 'o'
		b: 'g'
	}}, 'YoyOYGYg']
#11'
	[{ yb: {
		y: 'g'
		b: 'o'
	}}, 'GYgyoyO']
#12◊
	[{ yo: {
		y: 'g'
		o: 'o'
	}}, 'YGYgyoyO']
#12'
	[{ yo: {
		y: 'o'
		o: 'g'
	}}, 'yyoyOYGYg']

# Second Layer Complete!!

# Last Layer 

# Orientation

# Cross


# Assorted Algorithms

# T-Orient Headlights
[
	(cube)->
		return cube.fetch('yg').g == 'y' and cube.fetch('yr').y == 'y' and cube.fetch('yb').b == 'y' and cube.fetch('yo').y == 'y' and cube.fetch('ygr').y == 'y' and cube.fetch('ybr').y == 'y' and cube.fetch('ybo').o == 'y' and cube.fetch('ygo').o == 'y'
	"bryRYB"
]	
[
	(cube)->
		return cube.fetch('yg').y == 'y' and cube.fetch('yr').r == 'y' and cube.fetch('yb').y == 'y' and cube.fetch('yo').o == 'y' and cube.fetch('ygr').g == 'y' and cube.fetch('ybr').y == 'y' and cube.fetch('ybo').y == 'y' and cube.fetch('ygo').g == 'y'
		"obyBYO"
]
[
	(cube)->
		return cube.fetch('yg').g == 'y' and cube.fetch('yr').y == 'y' and cube.fetch('yb').b == 'y' and cube.fetch('yo').y == 'y' and cube.fetch('ygr').r == 'y' and cube.fetch('ybr').r == 'y' and cube.fetch('ybo').y == 'y' and cube.fetch('ygo').y == 'y'
	"goyOYG"
]
[
	(cube)->
		return cube.fetch('yg').y == 'y' and cube.fetch('yr').r == 'y' and cube.fetch('yb').y == 'y' and cube.fetch('yo').o == 'y' and cube.fetch('ygr').y == 'y' and cube.fetch('ybr').b == 'y' and cube.fetch('ybo').b == 'y' and cube.fetch('ygo').y == 'y'
	"rgyGYR"
]


# T-Orient Anti-Headlights
[
	(cube)->
		return cube.fetch('yg').g == 'y' and cube.fetch('yr').y == 'y' and cube.fetch('yb').b == 'y' and cube.fetch('yo').y == 'y' and cube.fetch('ygr').y == 'y' and cube.fetch('ybr').y == 'y' and cube.fetch('ybo').b == 'y' and cube.fetch('ygo').g == 'y'
	"ryRYRbrB"
]	
[
	(cube)->
		return cube.fetch('yg').y == 'y' and cube.fetch('yr').r == 'y' and cube.fetch('yb').y == 'y' and cube.fetch('yo').o == 'y' and cube.fetch('ygr').r == 'y' and cube.fetch('ybr').y == 'y' and cube.fetch('ybo').y == 'y' and cube.fetch('ygo').o == 'y'
		"byBYBobO"
]
[
	(cube)->
		return cube.fetch('yg').g == 'y' and cube.fetch('yr').y == 'y' and cube.fetch('yb').b == 'y' and cube.fetch('yo').y == 'y' and cube.fetch('ygr').g == 'y' and cube.fetch('ybr').b == 'y' and cube.fetch('ybo').y == 'y' and cube.fetch('ygo').y == 'y'
	"oyOYOgoG"
]
[
	(cube)->
		return cube.fetch('yg').y == 'y' and cube.fetch('yr').r == 'y' and cube.fetch('yb').y == 'y' and cube.fetch('yo').o == 'y' and cube.fetch('ygr').y == 'y' and cube.fetch('ybr').r == 'y' and cube.fetch('ybo').o == 'y' and cube.fetch('ygo').y == 'y'
	"gyGYGrgR"
]


# Sleigh Bell
[
	(cube)->
		return cube.fetch('yg').y == 'y' and cube.fetch('yr').y == 'y' and cube.fetch('yb').b == 'y' and cube.fetch('yo').o == 'y' and cube.fetch('ygr').y == 'y' and cube.fetch('ybr').b == 'y' and cube.fetch('ybo').y == 'y' and cube.fetch('ygo').o == 'y'
	"obYBYbyBO"
]	
[
	(cube)->
		return cube.fetch('yg').g == 'y' and cube.fetch('yr').y == 'y' and cube.fetch('yb').y == 'y' and cube.fetch('yo').o == 'y' and cube.fetch('ygr').g == 'y' and cube.fetch('ybr').y == 'y' and cube.fetch('ybo').o == 'y' and cube.fetch('ygo').y == 'y'
		"goYOYoyOG"
]
[
	(cube)->
		return cube.fetch('yg').g == 'y' and cube.fetch('yr').r == 'y' and cube.fetch('yb').y == 'y' and cube.fetch('yo').y == 'y' and cube.fetch('ygr').y == 'y' and cube.fetch('ybr').r == 'y' and cube.fetch('ybo').y == 'y' and cube.fetch('ygo').g == 'y'
	"rgYGYgyGR"
]
[
	(cube)->
		return cube.fetch('yg').y == 'y' and cube.fetch('yr').r == 'y' and cube.fetch('yb').b == 'y' and cube.fetch('yo').y == 'y' and cube.fetch('ygr').r == 'y' and cube.fetch('ybr').y == 'y' and cube.fetch('ybo').b == 'y' and cube.fetch('ygo').y == 'y'
	"brYRYryRB"
]


# Super Orient Forward
[
	(cube)->
		return cube.fetch('yg').g == 'y' and cube.fetch('yr').r == 'y' and cube.fetch('yb').b == 'y' and cube.fetch('yo').o == 'y' and cube.fetch('ygr').g == 'y' and cube.fetch('ybr').r == 'y' and cube.fetch('ybo').o == 'y' and cube.fetch('ygo').g == 'y'
	"OgoGyyOgoggyyg"
]	
[
	(cube)->
		return cube.fetch('yg').g == 'y' and cube.fetch('yr').r == 'y' and cube.fetch('yb').b == 'y' and cube.fetch('yo').o == 'y' and cube.fetch('ygr').r == 'y' and cube.fetch('ybr').r == 'y' and cube.fetch('ybo').b == 'y' and cube.fetch('ygo').g == 'y'
		"GrgRyyGrgrryyr"
]
[
	(cube)->
		return cube.fetch('yg').g == 'y' and cube.fetch('yr').r == 'y' and cube.fetch('yb').b == 'y' and cube.fetch('yo').o == 'y' and cube.fetch('ygr').r == 'y' and cube.fetch('ybr').b == 'y' and cube.fetch('ybo').b == 'y' and cube.fetch('ygo').o == 'y'
	"RbrByyRbrbbyyb"
]
[
	(cube)->
		return cube.fetch('yg').g == 'y' and cube.fetch('yr').r == 'y' and cube.fetch('yb').b == 'y' and cube.fetch('yo').o == 'y' and cube.fetch('ygr').g == 'y' and cube.fetch('ybr').b == 'y' and cube.fetch('ybo').o == 'y' and cube.fetch('ygo').o == 'y'
	"BobOyyBobooyyo"
]


# Super Orient Backwards
[
	(cube)->
		return cube.fetch('yg').g == 'y' and cube.fetch('yr').r == 'y' and cube.fetch('yb').b == 'y' and cube.fetch('yo').o == 'y' and cube.fetch('ygr').r == 'y' and cube.fetch('ybr').r == 'y' and cube.fetch('ybo').o == 'y' and cube.fetch('ygo').o == 'y'
	"RyyrrGRgyyrGRg"
]	
[
	(cube)->
		return cube.fetch('yg').g == 'y' and cube.fetch('yr').r == 'y' and cube.fetch('yb').b == 'y' and cube.fetch('yo').o == 'y' and cube.fetch('ygr').g == 'y' and cube.fetch('ybr').b == 'y' and cube.fetch('ybo').b == 'y' and cube.fetch('ygo').g == 'y'
		"ByybbRBryybRBr"
]

# The W Left

[
	(cube)->
		return cube.fetch('yg').y == 'y' and cube.fetch('yr').y == 'y' and cube.fetch('yb').b == 'y' and cube.fetch('yo').o == 'y' and cube.fetch('ygr').r == 'y' and cube.fetch('ybr').y == 'y' and cube.fetch('ybo').b == 'y' and cube.fetch('ygo').y == 'y'
	"byBybYBYBobO"
]	
[
	(cube)->
		return cube.fetch('yg').g == 'y' and cube.fetch('yr').y == 'y' and cube.fetch('yb').y == 'y' and cube.fetch('yo').o == 'y' and cube.fetch('ygr').y == 'y' and cube.fetch('ybr').b == 'y' and cube.fetch('ybo').y == 'y' and cube.fetch('ygo').o == 'y'
		"oyOyoYOYOgoG"
]
[
	(cube)->
		return cube.fetch('yg').g == 'y' and cube.fetch('yr').r == 'y' and cube.fetch('yb').y == 'y' and cube.fetch('yo').y == 'y' and cube.fetch('ygr').g == 'y' and cube.fetch('ybr').y == 'y' and cube.fetch('ybo').o == 'y' and cube.fetch('ygo').y == 'y'
	"gyGygYGYGrgR"
]
[
	(cube)->
		return cube.fetch('yg').y == 'y' and cube.fetch('yr').r == 'y' and cube.fetch('yb').b == 'y' and cube.fetch('yo').y == 'y' and cube.fetch('ygr').y == 'y' and cube.fetch('ybr').r == 'y' and cube.fetch('ybo').y == 'y' and cube.fetch('ygo').g == 'y'
	"ryRyrYRYRbrB"
]


# The W Right

[
	(cube)->
		return cube.fetch('yg').y == 'y' and cube.fetch('yr').y == 'y' and cube.fetch('yb').b == 'y' and cube.fetch('yo').o == 'y' and cube.fetch('ygr').g == 'y' and cube.fetch('ybr').y == 'y' and cube.fetch('ybo').o == 'y' and cube.fetch('ygo').y == 'y'
	"OYoYOyoyoBOb"
]	
[
	(cube)->
		return cube.fetch('yg').g == 'y' and cube.fetch('yr').y == 'y' and cube.fetch('yb').y == 'y' and cube.fetch('yo').o == 'y' and cube.fetch('ygr').y == 'y' and cube.fetch('ybr').r == 'y' and cube.fetch('ybo').y == 'y' and cube.fetch('ygo').g == 'y'
		"GYgYGygygOGo"
]
[
	(cube)->
		return cube.fetch('yg').g == 'y' and cube.fetch('yr').r == 'y' and cube.fetch('yb').y == 'y' and cube.fetch('yo').y == 'y' and cube.fetch('ygr').r == 'y' and cube.fetch('ybr').y == 'y' and cube.fetch('ybo').b == 'y' and cube.fetch('ygo').y == 'y'
	"RYrYRyryrGRg"
]
[
	(cube)->
		return cube.fetch('yg').y == 'y' and cube.fetch('yr').r == 'y' and cube.fetch('yb').b == 'y' and cube.fetch('yo').y == 'y' and cube.fetch('ygr').y == 'y' and cube.fetch('ybr').b == 'y' and cube.fetch('ybo').y == 'y' and cube.fetch('ygo').o == 'y'
	"BYbYBybybRBr"
]


# Two-Edge Adjacent

[
	(cube)->
		return cube.fetch('yg').g == 'y' and cube.fetch('yr').r == 'y' and cube.fetch('yb').y == 'y' and cube.fetch('yo').y == 'y' and cube.fetch('ygr').y == 'y' and cube.fetch('ybr').y == 'y' and cube.fetch('ybo').y == 'y' and cube.fetch('ygo').y == 'y'
	"oRBOryyoRBOr"
]	
[
	(cube)->
		return cube.fetch('yg').y == 'y' and cube.fetch('yr').r == 'y' and cube.fetch('yb').b == 'y' and cube.fetch('yo').y == 'y' and cube.fetch('ygr').y == 'y' and cube.fetch('ybr').y == 'y' and cube.fetch('ybo').y == 'y' and cube.fetch('ygo').y == 'y'
	"gBOGbyygBOGb"
]
[
	(cube)->
		return cube.fetch('yg').y == 'y' and cube.fetch('yr').y == 'y' and cube.fetch('yb').b == 'y' and cube.fetch('yo').o == 'y' and cube.fetch('ygr').y == 'y' and cube.fetch('ybr').y == 'y' and cube.fetch('ybo').y == 'y' and cube.fetch('ygo').y == 'y'
	"rOGRoyyrOGRo"
]
[
	(cube)->
		return cube.fetch('yg').g == 'y' and cube.fetch('yr').y == 'y' and cube.fetch('yb').y == 'y' and cube.fetch('yo').o == 'y' and cube.fetch('ygr').y == 'y' and cube.fetch('ybr').y == 'y' and cube.fetch('ybo').y == 'y' and cube.fetch('ygo').y == 'y'
	"bGRBgyybGRBg"
]


# Two-Edge Opposite

[
	(cube)->
		return cube.fetch('yg').g == 'y' and cube.fetch('yr').y == 'y' and cube.fetch('yb').b == 'y' and cube.fetch('yo').y == 'y' and cube.fetch('ygr').y == 'y' and cube.fetch('ybr').y == 'y' and cube.fetch('ybo').y == 'y' and cube.fetch('ygo').y == 'y'
	"rOYoyRoBOb"
]	
[
	(cube)->
		return cube.fetch('yg').y == 'y' and cube.fetch('yr').r == 'y' and cube.fetch('yb').y == 'y' and cube.fetch('yo').o == 'y' and cube.fetch('ygr').y == 'y' and cube.fetch('ybr').y == 'y' and cube.fetch('ybo').y == 'y' and cube.fetch('ygo').y == 'y'
	"bGYgyBgOGo"
]



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

[
	(cube)->
		i = 1
		_.times(4, ()->
			if i != 1
				cube.turn('y')
			if !cube.check()
				_.each(permutations, (algorithm, index)->
					turns = _.chars(algorithm[1])
					conditions = algorithm[0]
					if conditions(cube)
						_.each(turns, (turn, index)->
							cube.turn(turn)	
							cube.history.algorithm.push(turn)
						)
				)
		)
		return false
	''
]


#Yellow-Green-Red
#5◊
	[{ ygr: {
		y: 'y'
		g: 'g'
		r: 'r'
	}}, '']
#5'
	[{ ygr: {
		y: 'r'
		g: 'y'
		r: 'g'
	}}, 'GWgwGWgYGwgWGwgy']
#'5
	[{ ygr: {
		y: 'g'
		g: 'r'
		r: 'y'
	}}, 'GwgWGwgYGWgwGWgy']
#6◊
	[{ ybr: {
		y: 'y'
		b: 'r'
		r: 'g'
	}}, 'Y']
#6'
	[{ ybr: {
		y: 'r'
		b: 'g'
		r: 'y'
	}}, 'YGWgwGWgYGwgWGwgy']
#'6
	[{ ybr: {
		y: 'g'
		b: 'y'
		r: 'r'
	}}, 'YGwgWGwgYGWgwGWgy']
#7◊
	[{ ybo: {
		y: 'y'
		b: 'g'
		o: 'r'
	}}, 'yy']
#7'
	[{ ybo: {
		y: 'r'
		b: 'y'
		o: 'g'
	}}, 'yyGWgwGWgYGwgWGwgy']
#'7
	[{ ybo: {
		y: 'g'
		b: 'r'	
		o: 'y'
	}}, 'yyGwgWGwgYGWgwGWgy']
#8◊
	[{ ygo: {
		y: 'y'
		g: 'r'
		o: 'g'
	}}, 'y']
#8'
	[{ ygo: {
		y: 'r'
		g: 'g'
		o: 'y'
	}}, 'yGWgwGWgYGwgWGwgy']
#'8
	[{ ygo: {
		y: 'g'
		g: 'y'
		o: 'r'
	}}, 'yGwgWGwgYGWgwGWgy']

#Yellow-Blue-Red
#6◊
	[{ ybr: {
		y: 'y'
		b: 'b'
		r: 'r'
	}}, '']	
#6'
	[{ ybr: {
		y: 'b'
		b: 'r'
		r: 'y'
	}}, 'RWrwRWrYRwrWRwry']
#'6
	[{ ybr: {
		y: 'r'
		b: 'y'
		r: 'b'
	}}, 'RwrWRwrYRWrwRWry']
#7◊
	[{ ybo: {
		y: 'y'
		b: 'r'
		o: 'b'
	}}, 'oobbogObboGo']
#7'
	[{ ybo: {
		y: 'b'
		b: 'y'
		o: 'r'
	}}, 'oobbogObboGoRWrwRWrYRwrWRwry']
#'7
	[{ ybo: {
		y: 'r'
		b: 'b'
		o: 'y'
	}}, 'oobbogObboGoRwrWRwrYRWrwRWry']
#8◊
	[{ ygo: {
		y: 'y'
		g: 'b'
		o: 'r'
	}}, 'OgObboGObboo']
#8'
	[{ ygo: {
		y: 'b'
		g: 'r'
		o: 'y'
	}}, 'OgObboGObbooRWrwRWrYRwrWRwry']
#'8
	[{ ygo: {
		y: 'r'
		g: 'y'
		o: 'b'
	}}, 'OgObboGObbooRwrWRwrYRWrwRWry']

#Yellow-Blue-Orange
#7◊
	[{ ybo: {
		y: 'y'
		b: 'b'
		o: 'o'
	}}, '']
#7'
	[{ ybo: {
		y: 'o'
		b: 'y'
		o: 'b'
	}}, 'BWbwBWbYBwbWBwby']
#'7
	[{ ybo: {
		y: 'b'
		b: 'o'	
		o: 'y'
	}}, 'BwbWBwbYBWbwBWby']
#8◊
	[{ ygo: {
		y: 'y'
		g: 'o'
		o: 'b'
	}}, 'rYOyRyyoYOyyo']
#8'
	[{ ygo: {
		y: 'o'
		g: 'b'
		o: 'y'
	}}, 'rYOyRyyoYOyyoBWbwBWbYBwbWBwby']
#'8
	[{ ygo: {
		y: 'b'
		g: 'y'
		o: 'o'
	}}, ' rYOyRyyoYOyyoBwbWBwbYBWbwBWby']

#Yellow-Green
#9◊
	[{ yg: {
		y: 'y'
		g: 'g'
	}}, '']
#9'
	[{ yg: {
		y: 'g'
		g: 'y'
	}}, 'GYwoYwbYwRYryWByWOyWgy']
#10◊
	[{ yr: {
		y: 'y'
		r: 'g'
	}}, 'rrYbGrrBgYrr']
#10'
	[{ yr: {
		y: 'g'
		r: 'y'
	}}, 'rrYbGrrBgYrrGYwoYwbYwRYryWByWOyWgy']
#11◊
	[{ yb: {
		y: 'y'
		b: 'g'
	}}, 'rrybGrrBgyrr']
#11'
	[{ yb: {
		y: 'g'
		b: 'y'
	}}, 'rrybGrrBgyrrGYwoYwbYwRYryWByWOyWgy']
#12◊
	[{ yo: {
		y: 'y'
		o: 'g'
	}}, 'ooygBooGbyoo']
#12'
	[{ yo: {
		y: 'g'
		o: 'y'
	}}, 'ooygBooGbyooGYwoYwbYwRYryWByWOyWgy']

#Yellow-Red
#10◊
	[{ yr: {
		y: 'y'
		r: 'r'
	}}, '']
#10'
	[{ yr: {
		y: 'r'
		r: 'y'
	}}, 'RYwgYwoYwBYbWyOWyGWyry']
#11◊
	[{ yb: {
		y: 'y'
		b: 'r'
	}}, 'bbYoRbbOrYbb']
#11'
	[{ yb: {
		y: 'r'
		b: 'y'
	}}, 'bbYoRbbOrYbbRYwgYwoYwBYbWyOWyGWyry']
#12◊
	[{ yo: {
		y: 'y'
		o: 'r'
	}}, 'bbyoRbbOrybb']
#12'
	[{ yo: {
		y: 'r'
		o: 'y'
	}}, 'bbyoRbbOrybbRYwgYwoYwBYbWyOWyGWyry']

#Yellow-Blue
#11◊
	[{ yb: {
		y: 'y'
		b: 'b'
	}}, '']
#11'
	[{ yb: {
		y: 'b'
		b: 'y'
	}}, 'BYwrYwgYwOYoWyGWyRWyby']

#Cube Complete!!!
]

module.exports = algorithms