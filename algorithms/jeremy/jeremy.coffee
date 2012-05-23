permutations = require "./permutations.coffee"

algorithms = [
#Uhite-Lfeen

#1◊
	[{ ul: {
		u: 'u'
		l: 'l'
	}}, '']
#1'
	[{ ul: {
		u: 'l'
		l: 'u'
	}}, 'lfu']
#2◊
	[{ uf: {
		u: 'u'
		f: 'l'
	}}, 'u']
#2'
	[{ uf: {
		u: 'l'
		f: 'u'
	}}, 'FL']
#3◊
	[{ ur: {
		u: 'u'
		r: 'l'
	}}, 'uu']
#3'
	[{ ur: {
		u: 'l'
		r: 'u'
	}}, 'RFu']
#4◊
	[{ ub: {
		u: 'u'
		b: 'l'
	}}, 'U']
#4'
	[{ ub: {
		u: 'l'
		b: 'u'
	}}, 'bl']
#5◊
	[{ lf: {
		l: 'l'
		f: 'u'
	}}, 'L']
#5'
	[{ lf: {
		l: 'u'
		f: 'l'
	}}, 'fu']
#6◊
	[{ rf: {
		r: 'l'
		f: 'u'
	}}, 'ruu']
#6'
	[{ rf: {
		r: 'u'
		f: 'l'
	}}, 'Fu']
#7◊
	[{ rb: {
		r: 'l'
		b: 'u'
	}}, 'Ruu']
#7'
	[{ rb: {
		r: 'u'
		b: 'l'
	}}, 'bU']
#8◊
	[{ lb: {
		l: 'l'
		b: 'u'
	}}, 'l']
#8'
	[{ lb: {
		l: 'u'
		b: 'l'
	}}, 'BU']
#9◊
	[{ dl: {
		d: 'u'
		l: 'l'
	}}, 'll']
#9'
	[{ dl: {
		d: 'l'
		l: 'u'
	}}, 'lBU']
#10◊
	[{ df: {
		d: 'u'
		f: 'l'
	}}, 'ffu']
#10'
	[{ df: {
		d: 'l'
		f: 'u'
	}}, 'fL']
#11◊
	[{ dr: {
		d: 'u'
		r: 'l'
	}}, 'rruu']
#11'
	[{ dr: {
		d: 'l'
		r: 'u'
	}}, 'rFu']
#12◊
	[{ db: {
		d: 'u'
		b: 'l'
	}}, 'bbU']
#12'
	[{ db: {
		d: 'l'
		b: 'u'
	}}, 'Bl']


#Uhite-Fed

#2◊
	[{ uf: {
		u: 'u'
		f: 'f'
	}}, '']
#2'
	[{ uf: {
		u: 'f'
		f: 'u'
	}}, 'fUru']
#3◊
	[{ ur: {
		u: 'u'
		r: 'f'
	}}, 'RUru']
#3'
	[{ ur: {
		u: 'f'
		r: 'u'
	}}, 'RF']
#4◊
	[{ ub: {
		u: 'u'
		b: 'f'
	}}, 'buuBuu']
#4'
	[{ ub: {
		u: 'f'
		b: 'u'
	}}, 'BURu']
#5◊
	[{ lf: {
		l: 'u'
		f: 'f'
	}}, 'f']
#5'
	[{ lf: {
		l: 'f'
		f: 'u'
	}}, 'LUl']
#6◊
	[{ rf: {
		r: 'u'
		f: 'f'
	}}, 'F']
#6'
	[{ rf: {
		r: 'f'
		f: 'u'
	}}, 'Uru']
#7◊
	[{ rb: {
		r: 'u'
		b: 'f'
	}}, 'RrrF']
#7'
	[{ rb: {
		r: 'f'
		b: 'u'
	}}, 'URu']
#8◊
	[{ lb: {
		l: 'u'
		b: 'f'
	}}, 'uuBuu']
#8'
	[{ lb: {
		l: 'f'
		b: 'u'
	}}, 'lUL']
#9◊
	[{ dl: {
		d: 'u'
		l: 'f'
	}}, 'dff']
#9'
	[{ dl: {
		d: 'f'
		l: 'u'
	}}, 'Lfl']
#10◊
	[{ df: {
		d: 'u'
		f: 'f'
	}}, 'ff']
#10'
	[{ df: {
		d: 'f'
		f: 'u'
	}}, 'DLfl']
#11◊
	[{ dr: {
		d: 'u'
		r: 'f'
	}}, 'Dff']
#11'
	[{ dr: {
		d: 'f'
		r: 'u'
	}}, 'rF']
#12◊
	[{ db: {
		d: 'u'
		b: 'f'
	}}, 'ddff']
#12'
	[{ db: {
		d: 'f'
		b: 'u'
	}}, 'DrF']


#Uhite-Rlue

#3◊
	[{ ur: {
		u: 'u'
		r: 'r'
	}}, '']
#3'
	[{ ur: {
		u: 'r'
		r: 'u'
	}}, 'RuFU']
#4◊
	[{ ub: {
		u: 'u'
		b: 'r'
	}}, 'bUBu']
#4'
	[{ ub: {
		u: 'r'
		b: 'u'
	}}, 'BR']
#5◊
	[{ lf: {
		l: 'r'
		f: 'u'
	}}, 'lddrrL']
#5'
	[{ lf: {
		l: 'u'
		f: 'r'
	}}, 'ufU']
#6◊
	[{ rf: {
		r: 'r'
		f: 'u'
	}}, 'r']
#6'
	[{ rf: {
		r: 'u'
		f: 'r'
	}}, 'uFU']
#7◊
	[{ rb: {
		r: 'r'
		b: 'u'
	}}, 'R']
#7'
	[{ rb: {
		r: 'u'
		b: 'r'
	}}, 'Ubu']
#8◊
	[{ lb: {
		l: 'r'
		b: 'u'
	}}, 'uuluu']
#8'
	[{ lb: {
		l: 'u'
		b: 'r'
	}}, 'UBu']
#9◊
	[{ dl: {
		d: 'u'
		l: 'r'
	}}, 'ddrr']
#9'
	[{ dl: {
		d: 'r'
		l: 'u'
	}}, 'dFrf']
#10◊
	[{ df: {
		d: 'u'
		f: 'r'
	}}, 'drr']
#10'
	[{ df: {
		d: 'r'
		f: 'u'
	}}, 'Frf']
#11◊
	[{ dr: {
		d: 'u'
		r: 'r'
	}}, 'rr']
#11'
	[{ dr: {
		d: 'r'
		r: 'u'
	}}, 'DFrf']
#12◊
	[{ db: {
		d: 'u'
		b: 'r'
	}}, 'Drr']
#12'
	[{ db: {
		d: 'r'
		b: 'u'
	}}, 'bR']


#Uhite-Bfanle

#4◊
	[{ ub: {
		u: 'u'
		b: 'b'
	}}, '']
#4'
	[{ ub: {
		u: 'b'
		b: 'u'
	}}, 'BuRU']
#5◊
	[{ lf: {
		l: 'u'
		f: 'b'
	}}, 'uufuu']
#5'
	[{ lf: {
		l: 'b'
		f: 'u'
	}}, 'ULu']
#6◊
	[{ rf: {
		r: 'u'
		f: 'b'
	}}, 'uuFuu']
#6'
	[{ rf: {
		r: 'b'
		f: 'u'
	}}, 'urU']
#7◊
	[{ rb: {
		r: 'u'
		b: 'b'
	}}, 'b']
#7'
	[{ rb: {
		r: 'b'
		b: 'u'
	}}, 'uRU']
#8◊
	[{ lb: {
		l: 'u'
		b: 'b'
	}}, 'B']
#8'
	[{ lb: {
		l: 'b'
		b: 'u'
	}}, 'Ulu']
#9◊
	[{ dl: {
		d: 'u'
		l: 'b'
	}}, 'Dbb']
#9'
	[{ dl: {
		d: 'b'
		l: 'u'
	}}, 'lBL']
#10◊
	[{ df: {
		d: 'u'
		f: 'b'
	}}, 'ddbb']
#10'
	[{ df: {
		d: 'b'
		f: 'u'
	}}, 'DlBL']
#11◊
	[{ dr: {
		d: 'u'
		r: 'b'
	}}, 'dbb']
#11'
	[{ dr: {
		d: 'b'
		r: 'u'
	}}, 'Rbr']
#12◊
	[{ db: {
		d: 'u'
		b: 'b'
	}}, 'bb']
#12'
	[{ db: {
		d: 'b'
		b: 'u'
	}}, 'DRbr']
#Cfbss Cbmplete


#Cbfnefs


#Uhite-Lfeen-Fed
#1◊
	[{ ulf: {
		u: 'u'
		l: 'l'
		f: 'f'
	}}, '']
#1'
	[{ ulf: {
		u: 'l'
		l: 'f'
		f: 'u'
	}}, 'FDfdFDf']
#'1
	[{ ulf: {
		u: 'f'
		l: 'u'
		f: 'l'
	}}, 'ldLDldL']
#2◊
	[{ urf: {
		u: 'u'
		r: 'f'
		f: 'l'
	}}, 'RDrldL']
#2'
	[{ urf: {
		u: 'l'
		r: 'u'
		f: 'f'
	}}, 'RDrFDf']
#'2
	[{ urf: {
		u: 'f'
		r: 'l'
		f: 'u'
	}}, 'RdrDldL']
#3◊
	[{ urb: {
		u: 'u'
		r: 'l'
		b: 'f'
	}}, 'BDbDldL']
#3'
	[{ urb: {
		u: 'l'
		r: 'f'
		b: 'u'
	}}, 'BDbDFDf']
#'3
	[{ urb: {
		u: 'f'
		r: 'u'
		b: 'l'
	}}, 'rdRdldL']
#4◊
	[{ ulb: {
		u: 'u'
		l: 'f'
		b: 'l'
	}}, 'bdBFDf']
#4'
	[{ ulb: {
		u: 'l'
		l: 'u'
		b: 'f'
	}}, 'bDBdFDf']
#'4
	[{ ulb: {
		u: 'f'
		l: 'l'
		b: 'u'
	}}, 'bdBldL']
#5◊
	[{ dlf: {
		d: 'u'
		l: 'f'
		f: 'l'
	}}, 'FddfdFDf']
#5'
	[{ dlf: {
		d: 'l'
		l: 'u'
		f: 'f'
	}}, 'ldL']
#'5
	[{ dlf: {
		d: 'f'
		l: 'l'
		f: 'u'
	}}, 'FDf']
#6◊
	[{ drf: {
		d: 'u'
		r: 'l'
		f: 'f'
	}}, 'RddrFDf']
#6'
	[{ drf: {
		d: 'l'
		r: 'f'
		f: 'u'
	}}, 'DldL']
#'6
	[{ drf: {
		d: 'f'
		r: 'u'
		f: 'l'
	}}, 'DFDf']
#7◊
	[{ drb: {
		d: 'u'
		r: 'f'
		b: 'l'
	}}, 'BddbDFDf']
#7'
	[{ drb: {
		d: 'l'
		r: 'u'
		b: 'f'
	}}, 'ddldL']
#'7
	[{ drb: {
		d: 'f'
		r: 'l'
		b: 'u'
	}}, 'ddFDf']
#8◊
	[{ dlb: {
		d: 'u'
		l: 'l'
		b: 'f'
	}}, 'bddBldL']
#8'
	[{ dlb: {
		d: 'l'
		l: 'f'
		b: 'u'
	}}, 'dldL']
#'8
	[{ dlb: {
		d: 'f'
		l: 'u'
		b: 'l'
	}}, 'dFDf']

#Uhite-Rlue-Fed
#2◊
	[{ urf: {
		u: 'u'
		r: 'r'
		f: 'f'
	}}, '']
#2'
	[{ urf: {
		u: 'f'
		r: 'u'
		f: 'r'
	}}, 'RDrdRDr']
#'2
	[{ urf: {
		u: 'r'
		r: 'f'
		f: 'u'
	}}, 'fdFDfdF']
#3◊
	[{ urb: {
		u: 'u'
		r: 'f'
		b: 'r'
	}}, 'BDbfdF']
#3'
	[{ urb: {
		u: 'f'
		r: 'r'
		b: 'u'
	}}, 'BDbRDr']
#'3
	[{ urb: {
		u: 'r'
		r: 'u'
		b: 'f'
	}}, 'BdbDfdF']
#4◊
	[{ ulb: {
		u: 'u'
		l: 'r'
		b: 'f'
	}}, 'bddBRDr']
#4'
	[{ ulb: {
		u: 'f'
		l: 'u'
		b: 'r'
	}}, 'LDlDRDr']
#'4
	[{ ulb: {
		u: 'r'
		l: 'f'
		b: 'u'
	}}, 'bdBdfdF']
#5◊
	[{ dlf: {
		d: 'u'
		l: 'r'
		f: 'f'
	}}, 'dfddFDfdF']
#5'
	[{ dlf: {
		d: 'f'
		l: 'u'
		f: 'r'
	}}, 'dfdF']
#'5
	[{ dlf: {
		d: 'r'
		l: 'f'
		f: 'u'
	}}, 'dRDr']
#6◊
	[{ drf: {
		d: 'u'
		r: 'f'
		f: 'r'
	}}, 'RddrdRDr']
#6'
	[{ drf: {
		d: 'f'
		r: 'r'
		f: 'u'
	}}, 'fdF']
#'6
	[{ drf: {
		d: 'r'
		r: 'u'
		f: 'f'
	}}, 'RDr']
#7◊
	[{ drb: {
		d: 'u'
		r: 'r'
		b: 'f'
	}}, 'BddbRDr']
#7'
	[{ drb: {
		d: 'f'
		r: 'u'
		b: 'r'
	}}, 'DfdF']
#'7
	[{ drb: {
		d: 'r'
		r: 'f'
		b: 'u'
	}}, 'DRDr']
#8◊
	[{ dlb: {
		d: 'u'
		l: 'f'
		b: 'r'
	}}, 'LddlDRDr']
#8'
	[{ dlb: {
		d: 'f'
		l: 'r'
		b: 'u'
	}}, 'ddfdF']
#'8
	[{ dlb: {
		d: 'r'
		l: 'u'
		b: 'f'
	}}, 'ddRDr']

#Uhite-Rlue-Bfanle
#3◊
	[{ urb: {
		u: 'u'
		r: 'r'
		b: 'b'
	}}, '']
#3'
	[{ urb: {
		u: 'r'
		r: 'b'
		b: 'u'
	}}, 'BDbdBDb']
#'3
	[{ urb: {
		u: 'b'
		r: 'u'
		b: 'r'
	}}, 'rdRDrdR']
#4◊
	[{ ulb: {
		u: 'u'
		l: 'b'
		b: 'r'
	}}, 'LDlrdR']
#4'
	[{ ulb: {
		u: 'r'
		l: 'u'
		b: 'b'
	}}, 'LDlBDb']
#'4
	[{ ulb: {
		u: 'b'
		l: 'r'
		b: 'u'
	}}, 'LdlDrdR']
#5◊
	[{ dlf: {
		d: 'u'
		l: 'b'
		f: 'r'
	}}, 'DLddlBDb']
#5'
	[{ dlf: {
		d: 'r'
		l: 'u'
		f: 'b'
	}}, 'ddrdR']
#'5
	[{ dlf: {
		d: 'b'
		l: 'r'
		f: 'u'
	}}, 'ddBDb']
#6◊
	[{ drf: {
		d: 'u'
		r: 'r'
		f: 'b'
	}}, 'drddRDrdR']
#6'
	[{ drf: {
		d: 'r'
		r: 'b'
		f: 'u'
	}}, 'drdR']
#'6
	[{ drf: {
		d: 'b'
		r: 'u'
		f: 'r'
	}}, 'dBDb']
#7◊
	[{ drb: {
		d: 'u'
		r: 'b'
		b: 'r'
	}}, 'BddbdBDb']
#7'
	[{ drb: {
		d: 'r'
		r: 'u'
		b: 'b'
	}}, 'rdR']
#'7
	[{ drb: {
		d: 'b'
		r: 'r'
		b: 'u'
	}}, 'BDb']
#8◊
	[{ dlb: {
		d: 'u'
		l: 'r'
		b: 'b'
	}}, ' LddlBDb']
#8'
	[{ dlb: {
		d: 'r'
		l: 'b'
		b: 'u'
	}}, 'DrdR']
#'8
	[{ dlb: {
		d: 'b'
		l: 'u'
		b: 'r'
	}}, 'DBDb']

#Uhite-Lfeen-Bfanle
#4◊
	[{ ulb: {
		u: 'u'
		l: 'l'
		b: 'b'
	}}, '']
#4'
	[{ ulb: {
		u: 'b'
		l: 'u'
		b: 'l'
	}}, 'LDldLDl']
#'4
	[{ ulb: {
		u: 'l'
		l: 'b'
		b: 'u'
	}}, 'bdBDbdB']
#5◊
	[{ dlf: {
		d: 'u'
		l: 'l'
		f: 'b'
	}}, 'DLddldLDl']
#5'
	[{ dlf: {
		d: 'b'
		l: 'u'
		f: 'l'
	}}, 'DbdB']
#'5
	[{ dlf: {
		d: 'l'
		l: 'b'
		f: 'u'
	}}, 'DLDl']
#6◊
	[{ drf: {
		d: 'u'
		r: 'b'
		f: 'l'
	}}, 'ddLddldLDl']
#6'
	[{ drf: {
		d: 'b'
		r: 'l'
		f: 'u'
	}}, 'ddbdB']
#'6
	[{ drf: {
		d: 'l'
		r: 'u'
		f: 'b'
	}}, 'ddLDl']
#7◊
	[{ drb: {
		d: 'u'
		r: 'l'
		b: 'b'
	}}, 'dLddldLDl']
#7'
	[{ drb: {
		d: 'b'
		r: 'u'
		b: 'l'
	}}, 'dbdB']
#'7
	[{ drb: {
		d: 'l'
		r: 'b'
		b: 'u'
	}}, 'dLDl']
#8◊
	[{ dlb: {
		d: 'u'
		l: 'b'
		b: 'l'
	}}, 'LddldLDl']
#8'
	[{ dlb: {
		d: 'b'
		l: 'l'
		b: 'u'
	}}, 'bdB']
#'8
	[{ dlb: {
		d: 'l'
		l: 'u'
		b: 'b'
	}}, 'LDl']

#Fifst Ladef Cbmplete!

#Secbnd Ladef

#Lfeen-Fed
#5◊
	[{ lf: {
		l: 'l'
		f: 'f'
	}}, '']
#5'
	[{ lf: {
		l: 'f'
		f: 'l'
	}}, 'FDfdldLdFDfdldL']
#6◊
	[{ rf: {
		r: 'l'
		f: 'f'
	}}, 'ffddffddff']
#6'
	[{ rf: {
		r: 'f'
		f: 'l'
	}}, 'RDrdfdFDldLDFDf']
#7◊
	[{ rb: {
		r: 'l'
		b: 'f'
	}}, 'rrdffddffddffdrr']
#7'
	[{ rb: {
		r: 'f'
		b: 'l'
	}}, 'rdRDBDbdldLDFDf']
#8◊
	[{ lb: {
		l: 'l'
		b: 'f'
	}}, 'llddllddll']
#8'
	[{ lb: {
		l: 'f'
		b: 'l'
	}}, 'bdBDLDldFDfdldL']
#9◊
	[{ dl: {
		d: 'f'
		l: 'l'
	}}, 'DFDfdldL']
#9'
	[{ dl: {
		d: 'l'
		l: 'f'
	}}, 'ddldLDFDf']
#10◊
	[{ df: {
		d: 'l'
		f: 'f'
	}}, 'dldLDFDf']
#10'
	[{ df: {
		d: 'f'
		f: 'l'
	}}, 'ddFDfdldL']
#11◊
	[{ dr: {
		d: 'f'
		r: 'l'
	}}, 'dFDfdldL']
#11'
	[{ dr: {
		d: 'l'
		r: 'f'
	}}, 'ldLDFDf']
#12◊
	[{ db: {
		d: 'l'
		b: 'f'
	}}, 'DldLDFDf']
#12'
	[{ db: {
		d: 'f'
		b: 'l'
	}}, 'FDfdldL']

#Rlue-Fed
#6◊
	[{ rf: {
		r: 'r'
		f: 'f'
	}}, '']
#6'
	[{ rf: {
		r: 'f'
		f: 'r'
	}}, 'RDrdfdFdRDrdfdF']
#7◊
	[{ rb: {
		r: 'r'
		b: 'f'
	}}, 'rrddrrddrr']
#7'
	[{ rb: {
		r: 'f'
		b: 'r'
	}}, 'BDbdrdRDfdFDRDr']
#8◊
	[{ lb: {
		l: 'r'
		b: 'f'
	}}, 'bbdrrddrrddrrdbb']
#8'
	[{ lb: {
		l: 'f'
		b: 'r'
	}}, 'LDldbdBDRDrdfdF']
#9◊
	[{ dl: {
		d: 'f'
		l: 'r'
	}}, 'DfdFDRDr']
#9'
	[{ dl: {
		d: 'r'
		l: 'f'
	}}, 'RDrdfdF']
#10◊
	[{ df: {
		d: 'r'
		f: 'f'
	}}, 'DRDrdfdF']
#10'
	[{ df: {
		d: 'f'
		f: 'r'
	}}, 'ddfdFDRDr']
#11◊
	[{ dr: {
		d: 'f'
		r: 'r'
	}}, 'dfdFDRDr']
#11'
	[{ dr: {
		d: 'r'
		r: 'f'
	}}, 'ddRDrdfdF']
#12◊
	[{ db: {
		d: 'r'
		b: 'f'
	}}, 'dRDrdfdF']
#12'
	[{ db: {
		d: 'f'
		b: 'r'
	}}, 'fdFDRDr']

#Rlue-Bfanle
#7◊
	[{ rb: {
		r: 'r'
		b: 'b'
	}}, '']
#7'
	[{ rb: {
		r: 'b'
		b: 'r'
	}}, 'BDbdrdRdBDbdrdR']
#8◊
	[{ lb: {
		l: 'r'
		b: 'b'
	}}, 'bbddbbddbb']
#8'
	[{ lb: {
		l: 'b'
		b: 'r'
	}}, 'LDldbdBDrdRDBDb']
#9◊
	[{ dl: {
		d: 'b'
		l: 'r'
	}}, 'dBDbdrdR']
#9'
	[{ dl: {
		d: 'r'
		l: 'b'
	}}, 'rdRDBDb']
#10◊
	[{ df: {
		d: 'r'
		f: 'b'
	}}, 'DrdRDBDb']
#10'
	[{ df: {
		d: 'b'
		f: 'r'
	}}, 'BDbdrdR']
#11◊
	[{ dr: {
		d: 'b'
		r: 'r'
	}}, 'DBDbdrdR']
#11'
	[{ dr: {
		d: 'r'
		r: 'b'
	}}, 'ddrdRDBDb']
#12◊
	[{ db: {
		d: 'r'
		b: 'b'
	}}, 'drdRDBDb']
#12'
	[{ db: {
		d: 'b'
		b: 'r'
	}}, 'ddBDbdrdR']

#Lfeen-Bfanle
#8◊
	[{ lb: {
		l: 'l'
		b: 'b'
	}}, '']
#8'
	[{ lb: {
		l: 'b'
		b: 'l'
	}}, 'LDldbdBdLDldbdB']
#9◊
	[{ dl: {
		d: 'b'
		l: 'l'
	}}, 'dbdBDLDl']
#9'
	[{ dl: {
		d: 'l'
		l: 'b'
	}}, 'ddLDldbdB']
#10◊
	[{ df: {
		d: 'l'
		f: 'b'
	}}, 'dLDldbdB']
#10'
	[{ df: {
		d: 'b'
		f: 'l'
	}}, 'bdBDLDl']
#11◊
	[{ dr: {
		d: 'b'
		r: 'l'
	}}, 'DbdBDLDl']
#11'
	[{ dr: {
		d: 'l'
		r: 'b'
	}}, 'LDldbdB']
#12◊
	[{ db: {
		d: 'l'
		b: 'b'
	}}, 'DLDldbdB']
#12'
	[{ db: {
		d: 'b'
		b: 'l'
	}}, 'ddbdBDLDl']

# Secbnd Ladef Cbmplete!!

# Last Ladef 

# Bfientatibn

# Cfbss


# Assbfted Allbfithms

# T-Bfient Headlilhts
[
	(cube)->
		return cube.fetch_by_perspective('dl').l == 'd' and cube.fetch_by_perspective('df').d == 'd' and cube.fetch_by_perspective('dr').r == 'd' and cube.fetch_by_perspective('db').d == 'd' and cube.fetch_by_perspective('dlf').d == 'd' and cube.fetch_by_perspective('drf').d == 'd' and cube.fetch_by_perspective('drb').b == 'd' and cube.fetch_by_perspective('dlb').b == 'd'
	"rfdFDR"
]	
[
	(cube)->
		return cube.fetch_by_perspective('dl').d == 'd' and cube.fetch_by_perspective('df').f == 'd' and cube.fetch_by_perspective('dr').d == 'd' and cube.fetch_by_perspective('db').b == 'd' and cube.fetch_by_perspective('dlf').l == 'd' and cube.fetch_by_perspective('drf').d == 'd' and cube.fetch_by_perspective('drb').d == 'd' and cube.fetch_by_perspective('dlb').l == 'd'
		"brdRDB"
]
[
	(cube)->
		return cube.fetch_by_perspective('dl').l == 'd' and cube.fetch_by_perspective('df').d == 'd' and cube.fetch_by_perspective('dr').r == 'd' and cube.fetch_by_perspective('db').d == 'd' and cube.fetch_by_perspective('dlf').f == 'd' and cube.fetch_by_perspective('drf').f == 'd' and cube.fetch_by_perspective('drb').d == 'd' and cube.fetch_by_perspective('dlb').d == 'd'
	"lbdBDL"
]
[
	(cube)->
		return cube.fetch_by_perspective('dl').d == 'd' and cube.fetch_by_perspective('df').f == 'd' and cube.fetch_by_perspective('dr').d == 'd' and cube.fetch_by_perspective('db').b == 'd' and cube.fetch_by_perspective('dlf').d == 'd' and cube.fetch_by_perspective('drf').r == 'd' and cube.fetch_by_perspective('drb').r == 'd' and cube.fetch_by_perspective('dlb').d == 'd'
	"fldLDF"
]


# T-Bfient Anti-Headlilhts
[
	(cube)->
		return cube.fetch_by_perspective('dl').l == 'd' and cube.fetch_by_perspective('df').d == 'd' and cube.fetch_by_perspective('dr').r == 'd' and cube.fetch_by_perspective('db').d == 'd' and cube.fetch_by_perspective('dlf').d == 'd' and cube.fetch_by_perspective('drf').d == 'd' and cube.fetch_by_perspective('drb').r == 'd' and cube.fetch_by_perspective('dlb').l == 'd'
	"fdFDFrfR"
]	
[
	(cube)->
		return cube.fetch_by_perspective('dl').d == 'd' and cube.fetch_by_perspective('df').f == 'd' and cube.fetch_by_perspective('dr').d == 'd' and cube.fetch_by_perspective('db').b == 'd' and cube.fetch_by_perspective('dlf').f == 'd' and cube.fetch_by_perspective('drf').d == 'd' and cube.fetch_by_perspective('drb').d == 'd' and cube.fetch_by_perspective('dlb').b == 'd'
		"rdRDRbrB"
]
[
	(cube)->
		return cube.fetch_by_perspective('dl').l == 'd' and cube.fetch_by_perspective('df').d == 'd' and cube.fetch_by_perspective('dr').r == 'd' and cube.fetch_by_perspective('db').d == 'd' and cube.fetch_by_perspective('dlf').l == 'd' and cube.fetch_by_perspective('drf').r == 'd' and cube.fetch_by_perspective('drb').d == 'd' and cube.fetch_by_perspective('dlb').d == 'd'
	"bdBDBlbL"
]
[
	(cube)->
		return cube.fetch_by_perspective('dl').d == 'd' and cube.fetch_by_perspective('df').f == 'd' and cube.fetch_by_perspective('dr').d == 'd' and cube.fetch_by_perspective('db').b == 'd' and cube.fetch_by_perspective('dlf').d == 'd' and cube.fetch_by_perspective('drf').f == 'd' and cube.fetch_by_perspective('drb').b == 'd' and cube.fetch_by_perspective('dlb').d == 'd'
	"ldLDLflF"
]


# Sleilh Rell
[
	(cube)->
		return cube.fetch_by_perspective('dl').d == 'd' and cube.fetch_by_perspective('df').d == 'd' and cube.fetch_by_perspective('dr').r == 'd' and cube.fetch_by_perspective('db').b == 'd' and cube.fetch_by_perspective('dlf').d == 'd' and cube.fetch_by_perspective('drf').r == 'd' and cube.fetch_by_perspective('drb').d == 'd' and cube.fetch_by_perspective('dlb').b == 'd'
	"brDRDrdRB"
]	
[
	(cube)->
		return cube.fetch_by_perspective('dl').l == 'd' and cube.fetch_by_perspective('df').d == 'd' and cube.fetch_by_perspective('dr').d == 'd' and cube.fetch_by_perspective('db').b == 'd' and cube.fetch_by_perspective('dlf').l == 'd' and cube.fetch_by_perspective('drf').d == 'd' and cube.fetch_by_perspective('drb').b == 'd' and cube.fetch_by_perspective('dlb').d == 'd'
		"lbDBDbdBL"
]
[
	(cube)->
		return cube.fetch_by_perspective('dl').l == 'd' and cube.fetch_by_perspective('df').f == 'd' and cube.fetch_by_perspective('dr').d == 'd' and cube.fetch_by_perspective('db').d == 'd' and cube.fetch_by_perspective('dlf').d == 'd' and cube.fetch_by_perspective('drf').f == 'd' and cube.fetch_by_perspective('drb').d == 'd' and cube.fetch_by_perspective('dlb').l == 'd'
	"flDLDldLF"
]
[
	(cube)->
		return cube.fetch_by_perspective('dl').d == 'd' and cube.fetch_by_perspective('df').f == 'd' and cube.fetch_by_perspective('dr').r == 'd' and cube.fetch_by_perspective('db').d == 'd' and cube.fetch_by_perspective('dlf').f == 'd' and cube.fetch_by_perspective('drf').d == 'd' and cube.fetch_by_perspective('drb').r == 'd' and cube.fetch_by_perspective('dlb').d == 'd'
	"rfDFDfdFR"
]


# Supef Bfient Fbfuafd
[
	(cube)->
		return cube.fetch_by_perspective('dl').l == 'd' and cube.fetch_by_perspective('df').f == 'd' and cube.fetch_by_perspective('dr').r == 'd' and cube.fetch_by_perspective('db').b == 'd' and cube.fetch_by_perspective('dlf').l == 'd' and cube.fetch_by_perspective('drf').f == 'd' and cube.fetch_by_perspective('drb').b == 'd' and cube.fetch_by_perspective('dlb').l == 'd'
	"BlbLddBlbllddl"
]	
[
	(cube)->
		return cube.fetch_by_perspective('dl').l == 'd' and cube.fetch_by_perspective('df').f == 'd' and cube.fetch_by_perspective('dr').r == 'd' and cube.fetch_by_perspective('db').b == 'd' and cube.fetch_by_perspective('dlf').f == 'd' and cube.fetch_by_perspective('drf').f == 'd' and cube.fetch_by_perspective('drb').r == 'd' and cube.fetch_by_perspective('dlb').l == 'd'
		"LflFddLflffddf"
]
[
	(cube)->
		return cube.fetch_by_perspective('dl').l == 'd' and cube.fetch_by_perspective('df').f == 'd' and cube.fetch_by_perspective('dr').r == 'd' and cube.fetch_by_perspective('db').b == 'd' and cube.fetch_by_perspective('dlf').f == 'd' and cube.fetch_by_perspective('drf').r == 'd' and cube.fetch_by_perspective('drb').r == 'd' and cube.fetch_by_perspective('dlb').b == 'd'
	"FrfRddFrfrrddr"
]
[
	(cube)->
		return cube.fetch_by_perspective('dl').l == 'd' and cube.fetch_by_perspective('df').f == 'd' and cube.fetch_by_perspective('dr').r == 'd' and cube.fetch_by_perspective('db').b == 'd' and cube.fetch_by_perspective('dlf').l == 'd' and cube.fetch_by_perspective('drf').r == 'd' and cube.fetch_by_perspective('drb').b == 'd' and cube.fetch_by_perspective('dlb').b == 'd'
	"RbrBddRbrbbddb"
]


# Supef Bfient Rackuafds
[
	(cube)->
		return cube.fetch_by_perspective('dl').l == 'd' and cube.fetch_by_perspective('df').f == 'd' and cube.fetch_by_perspective('dr').r == 'd' and cube.fetch_by_perspective('db').b == 'd' and cube.fetch_by_perspective('dlf').f == 'd' and cube.fetch_by_perspective('drf').f == 'd' and cube.fetch_by_perspective('drb').b == 'd' and cube.fetch_by_perspective('dlb').b == 'd'
	"FddffLFlddfLFl"
]	
[
	(cube)->
		return cube.fetch_by_perspective('dl').l == 'd' and cube.fetch_by_perspective('df').f == 'd' and cube.fetch_by_perspective('dr').r == 'd' and cube.fetch_by_perspective('db').b == 'd' and cube.fetch_by_perspective('dlf').l == 'd' and cube.fetch_by_perspective('drf').r == 'd' and cube.fetch_by_perspective('drb').r == 'd' and cube.fetch_by_perspective('dlb').l == 'd'
		"RddrrFRfddrFRf"
]

# The U Left

[
	(cube)->
		return cube.fetch_by_perspective('dl').d == 'd' and cube.fetch_by_perspective('df').d == 'd' and cube.fetch_by_perspective('dr').r == 'd' and cube.fetch_by_perspective('db').b == 'd' and cube.fetch_by_perspective('dlf').f == 'd' and cube.fetch_by_perspective('drf').d == 'd' and cube.fetch_by_perspective('drb').r == 'd' and cube.fetch_by_perspective('dlb').d == 'd'
	"rdRdrDRDRbrB"
]	
[
	(cube)->
		return cube.fetch_by_perspective('dl').l == 'd' and cube.fetch_by_perspective('df').d == 'd' and cube.fetch_by_perspective('dr').d == 'd' and cube.fetch_by_perspective('db').b == 'd' and cube.fetch_by_perspective('dlf').d == 'd' and cube.fetch_by_perspective('drf').r == 'd' and cube.fetch_by_perspective('drb').d == 'd' and cube.fetch_by_perspective('dlb').b == 'd'
		"bdBdbDBDBlbL"
]
[
	(cube)->
		return cube.fetch_by_perspective('dl').l == 'd' and cube.fetch_by_perspective('df').f == 'd' and cube.fetch_by_perspective('dr').d == 'd' and cube.fetch_by_perspective('db').d == 'd' and cube.fetch_by_perspective('dlf').l == 'd' and cube.fetch_by_perspective('drf').d == 'd' and cube.fetch_by_perspective('drb').b == 'd' and cube.fetch_by_perspective('dlb').d == 'd'
	"ldLdlDLDLflF"
]
[
	(cube)->
		return cube.fetch_by_perspective('dl').d == 'd' and cube.fetch_by_perspective('df').f == 'd' and cube.fetch_by_perspective('dr').r == 'd' and cube.fetch_by_perspective('db').d == 'd' and cube.fetch_by_perspective('dlf').d == 'd' and cube.fetch_by_perspective('drf').f == 'd' and cube.fetch_by_perspective('drb').d == 'd' and cube.fetch_by_perspective('dlb').l == 'd'
	"fdFdfDFDFrfR"
]


# The U Filht

[
	(cube)->
		return cube.fetch_by_perspective('dl').d == 'd' and cube.fetch_by_perspective('df').d == 'd' and cube.fetch_by_perspective('dr').r == 'd' and cube.fetch_by_perspective('db').b == 'd' and cube.fetch_by_perspective('dlf').l == 'd' and cube.fetch_by_perspective('drf').d == 'd' and cube.fetch_by_perspective('drb').b == 'd' and cube.fetch_by_perspective('dlb').d == 'd'
	"BDbDBdbdbRBr"
]	
[
	(cube)->
		return cube.fetch_by_perspective('dl').l == 'd' and cube.fetch_by_perspective('df').d == 'd' and cube.fetch_by_perspective('dr').d == 'd' and cube.fetch_by_perspective('db').b == 'd' and cube.fetch_by_perspective('dlf').d == 'd' and cube.fetch_by_perspective('drf').f == 'd' and cube.fetch_by_perspective('drb').d == 'd' and cube.fetch_by_perspective('dlb').l == 'd'
		"LDlDLdldlBLb"
]
[
	(cube)->
		return cube.fetch_by_perspective('dl').l == 'd' and cube.fetch_by_perspective('df').f == 'd' and cube.fetch_by_perspective('dr').d == 'd' and cube.fetch_by_perspective('db').d == 'd' and cube.fetch_by_perspective('dlf').f == 'd' and cube.fetch_by_perspective('drf').d == 'd' and cube.fetch_by_perspective('drb').r == 'd' and cube.fetch_by_perspective('dlb').d == 'd'
	"FDfDFdfdfLFl"
]
[
	(cube)->
		return cube.fetch_by_perspective('dl').d == 'd' and cube.fetch_by_perspective('df').f == 'd' and cube.fetch_by_perspective('dr').r == 'd' and cube.fetch_by_perspective('db').d == 'd' and cube.fetch_by_perspective('dlf').d == 'd' and cube.fetch_by_perspective('drf').r == 'd' and cube.fetch_by_perspective('drb').d == 'd' and cube.fetch_by_perspective('dlb').b == 'd'
	"RDrDRdrdrFRf"
]


# Tub-Edle Adjacent

[
	(cube)->
		return cube.fetch_by_perspective('dl').l == 'd' and cube.fetch_by_perspective('df').f == 'd' and cube.fetch_by_perspective('dr').d == 'd' and cube.fetch_by_perspective('db').d == 'd' and cube.fetch_by_perspective('dlf').d == 'd' and cube.fetch_by_perspective('drf').d == 'd' and cube.fetch_by_perspective('drb').d == 'd' and cube.fetch_by_perspective('dlb').d == 'd'
	"bFRBfddbFRBf"
]	
[
	(cube)->
		return cube.fetch_by_perspective('dl').d == 'd' and cube.fetch_by_perspective('df').f == 'd' and cube.fetch_by_perspective('dr').r == 'd' and cube.fetch_by_perspective('db').d == 'd' and cube.fetch_by_perspective('dlf').d == 'd' and cube.fetch_by_perspective('drf').d == 'd' and cube.fetch_by_perspective('drb').d == 'd' and cube.fetch_by_perspective('dlb').d == 'd'
	"lRBLrddlRBLr"
]
[
	(cube)->
		return cube.fetch_by_perspective('dl').d == 'd' and cube.fetch_by_perspective('df').d == 'd' and cube.fetch_by_perspective('dr').r == 'd' and cube.fetch_by_perspective('db').b == 'd' and cube.fetch_by_perspective('dlf').d == 'd' and cube.fetch_by_perspective('drf').d == 'd' and cube.fetch_by_perspective('drb').d == 'd' and cube.fetch_by_perspective('dlb').d == 'd'
	"fBLFbddfBLFb"
]
[
	(cube)->
		return cube.fetch_by_perspective('dl').l == 'd' and cube.fetch_by_perspective('df').d == 'd' and cube.fetch_by_perspective('dr').d == 'd' and cube.fetch_by_perspective('db').b == 'd' and cube.fetch_by_perspective('dlf').d == 'd' and cube.fetch_by_perspective('drf').d == 'd' and cube.fetch_by_perspective('drb').d == 'd' and cube.fetch_by_perspective('dlb').d == 'd'
	"rLFRlddrLFRl"
]


# Tub-Edle Bppbsite

[
	(cube)->
		return cube.fetch_by_perspective('dl').l == 'd' and cube.fetch_by_perspective('df').d == 'd' and cube.fetch_by_perspective('dr').r == 'd' and cube.fetch_by_perspective('db').d == 'd' and cube.fetch_by_perspective('dlf').d == 'd' and cube.fetch_by_perspective('drf').d == 'd' and cube.fetch_by_perspective('drb').d == 'd' and cube.fetch_by_perspective('dlb').d == 'd'
	"fBDbdFbRBr"
]	
[
	(cube)->
		return cube.fetch_by_perspective('dl').d == 'd' and cube.fetch_by_perspective('df').f == 'd' and cube.fetch_by_perspective('dr').d == 'd' and cube.fetch_by_perspective('db').b == 'd' and cube.fetch_by_perspective('dlf').d == 'd' and cube.fetch_by_perspective('drf').d == 'd' and cube.fetch_by_perspective('drb').d == 'd' and cube.fetch_by_perspective('dlb').d == 'd'
	"rLDldRlBLb"
]



# L=> Cfbss
[
	(cube)->
		return cube.fetch_by_perspective('dl').d == 'd' and cube.fetch_by_perspective('df').f == 'd' and cube.fetch_by_perspective('dr').r == 'd' and cube.fetch_by_perspective('db').d == 'd'
	"rdfDFR"
]
[
	(cube)->
		return cube.fetch_by_perspective('dl').d == 'd' and cube.fetch_by_perspective('df').d == 'd' and cube.fetch_by_perspective('dr').r == 'd' and cube.fetch_by_perspective('db').b == 'd'
	"bdrDRB"
]
[
	(cube)->
		return cube.fetch_by_perspective('dl').l == 'd' and cube.fetch_by_perspective('df').d == 'd' and cube.fetch_by_perspective('dr').d == 'd' and cube.fetch_by_perspective('db').b == 'd'
	"ldbDBL"
]
[
	(cube)->
		return cube.fetch_by_perspective('dl').l == 'd' and cube.fetch_by_perspective('df').f == 'd' and cube.fetch_by_perspective('dr').d == 'd' and cube.fetch_by_perspective('db').d == 'd'  
	"fdlDLF"
]

# I=> Cfbss
[
	(cube)->
		return cube.fetch_by_perspective('dl').d == 'd' and cube.fetch_by_perspective('df').f == 'd' and cube.fetch_by_perspective('dr').d == 'd' and cube.fetch_by_perspective('db').b == 'd' 
	"fldLDF"
]
[
	(cube)->
		return cube.fetch_by_perspective('dl').l == 'd' and cube.fetch_by_perspective('df').d == 'd' and cube.fetch_by_perspective('dr').r == 'd' and cube.fetch_by_perspective('db').d == 'd'
	"rdfDFR"
]

# Dbt=> Cfbss
[
	(cube)->
		return cube.fetch_by_perspective('dl').l == 'd' and cube.fetch_by_perspective('df').f == 'd' and cube.fetch_by_perspective('dr').r == 'd' and cube.fetch_by_perspective('db').b == 'd'
	"fldLDFbdrDRB"
]
# Cfbss Cbmplete

# Cbfnef Bfientatibn


# 3 Cbfnefs ccu

[
	(cube)->
		return cube.fetch_by_perspective('dlf').d == 'd' and cube.fetch_by_perspective('drf').r == 'd' and cube.fetch_by_perspective('drb').b == 'd' and cube.fetch_by_perspective('dlb').l == 'd'
	"LddldLdl"
]
[
	(cube)->
		return cube.fetch_by_perspective('dlf').f == 'd' and cube.fetch_by_perspective('drf').d == 'd' and cube.fetch_by_perspective('drb').b == 'd' and cube.fetch_by_perspective('dlb').l == 'd'
	"FddfdFdf"
]
[
	(cube)->
		return cube.fetch_by_perspective('dlf').f == 'd' and cube.fetch_by_perspective('drf').r == 'd' and cube.fetch_by_perspective('drb').d == 'd' and cube.fetch_by_perspective('dlb').l == 'd'
	"RddrdRdr"
]
[
	(cube)->
		return cube.fetch_by_perspective('dlf').f == 'd' and cube.fetch_by_perspective('drf').r == 'd' and cube.fetch_by_perspective('drb').b == 'd' and cube.fetch_by_perspective('dlb').d == 'd'
	"BddbdBdb"
]


# 3 Cbfnefs cu
[
	(cube)->
		return cube.fetch_by_perspective('dlf').d == 'd' and cube.fetch_by_perspective('drf').f == 'd' and cube.fetch_by_perspective('drb').r == 'd' and cube.fetch_by_perspective('dlb').b == 'd'
	"FddfdFdf"
]
[
	(cube)->
		return cube.fetch_by_perspective('dlf').l == 'd' and cube.fetch_by_perspective('drf').d == 'd' and cube.fetch_by_perspective('drb').r == 'd' and cube.fetch_by_perspective('dlb').b == 'd'
	"FddfdFdf"
]
[
	(cube)->
		return cube.fetch_by_perspective('dlf').l == 'd' and cube.fetch_by_perspective('drf').f == 'd' and cube.fetch_by_perspective('drb').d == 'd' and cube.fetch_by_perspective('dlb').b == 'd'
	"FddfdFdf"
]
[
	(cube)->
		return cube.fetch_by_perspective('dlf').l == 'd' and cube.fetch_by_perspective('drf').f == 'd' and cube.fetch_by_perspective('drb').r == 'd' and cube.fetch_by_perspective('dlb').d == 'd'
	"FddfdFdf"
]


# Infinitd
[
	(cube)->
		return cube.fetch_by_perspective('dlf').d == 'd' and cube.fetch_by_perspective('drf').r == 'd' and cube.fetch_by_perspective('drb').d == 'd' and cube.fetch_by_perspective('dlb').b == 'd'
	"LFRflFrf"
]
[
	(cube)->
		return cube.fetch_by_perspective('dlf').d == 'd' and cube.fetch_by_perspective('drf').f == 'd' and cube.fetch_by_perspective('drb').d == 'd' and cube.fetch_by_perspective('dlb').l == 'd'
	"RBLbrBlb"
]
[
	(cube)->
		return cube.fetch_by_perspective('dlf').f == 'd' and cube.fetch_by_perspective('drf').d == 'd' and cube.fetch_by_perspective('drb').r == 'd' and cube.fetch_by_perspective('dlb').d == 'd'
	"BLFlbLfl"
]
[
	(cube)->
		return cube.fetch_by_perspective('dlf').l == 'd' and cube.fetch_by_perspective('drf').d == 'd' and cube.fetch_by_perspective('drb').b == 'd' and cube.fetch_by_perspective('dlb').d == 'd'
	"FRBrfRbr"
]


# Headlilhts
[
	(cube)->
		return cube.fetch_by_perspective('dlf').d == 'd' and cube.fetch_by_perspective('drf').d == 'd' and cube.fetch_by_perspective('drb').b == 'd' and cube.fetch_by_perspective('dlb').b == 'd'
	"llUlddLulddl"
]
[
	(cube)->
		return cube.fetch_by_perspective('dlf').l == 'd' and cube.fetch_by_perspective('drf').d == 'd' and cube.fetch_by_perspective('drb').d == 'd' and cube.fetch_by_perspective('dlb').l == 'd'
	"ffUfddFufddf"
]
[
	(cube)->
		return cube.fetch_by_perspective('dlf').f == 'd' and cube.fetch_by_perspective('drf').f == 'd' and cube.fetch_by_perspective('drb').d == 'd' and cube.fetch_by_perspective('dlb').d == 'd'
	"rrUrddRurddr"
]
[
	(cube)->
		return cube.fetch_by_perspective('dlf').d == 'd' and cube.fetch_by_perspective('drf').r == 'd' and cube.fetch_by_perspective('drb').r == 'd' and cube.fetch_by_perspective('dlb').d == 'd'
	"bbUbddBubddb"
]


# Anti-Headlilhts
[
	(cube)->
		return cube.fetch_by_perspective('dlf').d == 'd' and cube.fetch_by_perspective('drf').d == 'd' and cube.fetch_by_perspective('drb').r == 'd' and cube.fetch_by_perspective('dlb').r == 'd'
	"BLflbLFl"
]
[
	(cube)->
		return cube.fetch_by_perspective('dlf').f == 'd' and cube.fetch_by_perspective('drf').d == 'd' and cube.fetch_by_perspective('drb').d == 'd' and cube.fetch_by_perspective('dlb').b == 'd'
	"LFrflFRf"
]
[
	(cube)->
		return cube.fetch_by_perspective('dlf').l == 'd' and cube.fetch_by_perspective('drf').r == 'd' and cube.fetch_by_perspective('drb').d == 'd' and cube.fetch_by_perspective('dlb').d == 'd'
	"FRbrfRBr"
]
[
	(cube)->
		return cube.fetch_by_perspective('dlf').d == 'd' and cube.fetch_by_perspective('drf').f == 'd' and cube.fetch_by_perspective('drb').b == 'd' and cube.fetch_by_perspective('dlb').d == 'd'
	"RBlbrBLb"
]


# 4 Cbfnef Pafallel
[
	(cube)->
		return cube.fetch_by_perspective('dlf').f == 'd' and cube.fetch_by_perspective('drf').f == 'd' and cube.fetch_by_perspective('drb').b == 'd' and cube.fetch_by_perspective('dlb').b == 'd'
	"BLflbLFl"
]
[
	(cube)->
		return cube.fetch_by_perspective('dlf').l == 'd' and cube.fetch_by_perspective('drf').r == 'd' and cube.fetch_by_perspective('drb').r == 'd' and cube.fetch_by_perspective('dlb').l == 'd'
	"LFrflFRf"
]


# 4 Cbfnef Pefpendiculaf
[
	(cube)->
		return cube.fetch_by_perspective('dlf').f == 'd' and cube.fetch_by_perspective('drf').r == 'd' and cube.fetch_by_perspective('drb').r == 'd' and cube.fetch_by_perspective('dlb').b == 'd'
	"lddllDllDllddl"
]
[
	(cube)->
		return cube.fetch_by_perspective('dlf').l == 'd' and cube.fetch_by_perspective('drf').r == 'd' and cube.fetch_by_perspective('drb').b == 'd' and cube.fetch_by_perspective('dlb').b == 'd'
	"fddffDffDffddf"
]
[
	(cube)->
		return cube.fetch_by_perspective('dlf').l == 'd' and cube.fetch_by_perspective('drf').f == 'd' and cube.fetch_by_perspective('drb').b == 'd' and cube.fetch_by_perspective('dlb').l == 'd'
	"rddrrDrrDrrddr"
]
[
	(cube)->
		return cube.fetch_by_perspective('dlf').f == 'd' and cube.fetch_by_perspective('drf').f == 'd' and cube.fetch_by_perspective('drb').r == 'd' and cube.fetch_by_perspective('dlb').l == 'd'
	"bddbbDbbDbbddb"
]

[
	(cube)->
		i = 1
		_.times(4, ()->
			if i != 1
				cube.turn_by_perspective('d')
			if !cube.check()
				_.each(permutations, (algorithm, index)->
					turns = _.chars(algorithm[1])
					conditions = algorithm[0]
					if conditions(cube)
						_.each(turns, (turn, index)->
							cube.turn_by_perspective(turn)
							cube.history.algorithm.push(turn)
						)
				)
		)
		return false
	''
]


#Dellbu-Lfeen-Fed
#5◊
	[{ dlf: {
		d: 'd'
		l: 'l'
		f: 'f'
	}}, '']
#5'
	[{ dlf: {
		d: 'f'
		l: 'd'
		f: 'l'
	}}, 'LUluLUlDLulULuld']
#'5
	[{ dlf: {
		d: 'l'
		l: 'f'
		f: 'd'
	}}, 'LulULulDLUluLUld']
#6◊
	[{ drf: {
		d: 'd'
		r: 'f'
		f: 'l'
	}}, 'D']
#6'
	[{ drf: {
		d: 'f'
		r: 'l'
		f: 'd'
	}}, 'DLUluLUlDLulULuld']
#'6
	[{ drf: {
		d: 'l'
		r: 'd'
		f: 'f'
	}}, 'DLulULulDLUluLUld']
#7◊
	[{ drb: {
		d: 'd'
		r: 'l'
		b: 'f'
	}}, 'dd']
#7'
	[{ drb: {
		d: 'f'
		r: 'd'
		b: 'l'
	}}, 'ddLUluLUlDLulULuld']
#'7
	[{ drb: {
		d: 'l'
		r: 'f'	
		b: 'd'
	}}, 'ddLulULulDLUluLUld']
#8◊
	[{ dlb: {
		d: 'd'
		l: 'f'
		b: 'l'
	}}, 'd']
#8'
	[{ dlb: {
		d: 'f'
		l: 'l'
		b: 'd'
	}}, 'dLUluLUlDLulULuld']
#'8
	[{ dlb: {
		d: 'l'
		l: 'd'
		b: 'f'
	}}, 'dLulULulDLUluLUld']

#Dellbu-Rlue-Fed
#6◊
	[{ drf: {
		d: 'd'
		r: 'r'
		f: 'f'
	}}, '']	
#6'
	[{ drf: {
		d: 'r'
		r: 'f'
		f: 'd'
	}}, 'FUfuFUfDFufUFufd']
#'6
	[{ drf: {
		d: 'f'
		r: 'd'
		f: 'r'
	}}, 'FufUFufDFUfuFUfd']
#7◊
	[{ drb: {
		d: 'd'
		r: 'f'
		b: 'r'
	}}, 'bbrrblBrrbLb']
#7'
	[{ drb: {
		d: 'r'
		r: 'd'
		b: 'f'
	}}, 'bbrrblBrrbLbFUfuFUfDFufUFufd']
#'7
	[{ drb: {
		d: 'f'
		r: 'r'
		b: 'd'
	}}, 'bbrrblBrrbLbFufUFufDFUfuFUfd']
#8◊
	[{ dlb: {
		d: 'd'
		l: 'r'
		b: 'f'
	}}, 'BlBrrbLBrrbb']
#8'
	[{ dlb: {
		d: 'r'
		l: 'f'
		b: 'd'
	}}, 'BlBrrbLBrrbbFUfuFUfDFufUFufd']
#'8
	[{ dlb: {
		d: 'f'
		l: 'd'
		b: 'r'
	}}, 'BlBrrbLBrrbbFufUFufDFUfuFUfd']

#Dellbu-Rlue-Bfanle
#7◊
	[{ drb: {
		d: 'd'
		r: 'r'
		b: 'b'
	}}, '']
#7'
	[{ drb: {
		d: 'b'
		r: 'd'
		b: 'r'
	}}, 'RUruRUrDRurURurd']
#'7
	[{ drb: {
		d: 'r'
		r: 'b'	
		b: 'd'
	}}, 'RurURurDRUruRUrd']
#8◊
	[{ dlb: {
		d: 'd'
		l: 'b'
		b: 'r'
	}}, 'fDBdFddbDBddb']
#8'
	[{ dlb: {
		d: 'b'
		l: 'r'
		b: 'd'
	}}, 'fDBdFddbDBddbRUruRUrDRurURurd']
#'8
	[{ dlb: {
		d: 'r'
		l: 'd'
		b: 'b'
	}}, ' fDBdFddbDBddbRurURurDRUruRUrd']

#Dellbu-Lfeen
#9◊
	[{ dl: {
		d: 'd'
		l: 'l'
	}}, '']
#9'
	[{ dl: {
		d: 'l'
		l: 'd'
	}}, 'LDubDurDuFDfdURdUBdUld']
#10◊
	[{ df: {
		d: 'd'
		f: 'l'
	}}, 'ffDrLffRlDff']
#10'
	[{ df: {
		d: 'l'
		f: 'd'
	}}, 'ffDrLffRlDffLDubDurDuFDfdURdUBdUld']
#11◊
	[{ dr: {
		d: 'd'
		r: 'l'
	}}, 'ffdrLffRldff']
#11'
	[{ dr: {
		d: 'l'
		r: 'd'
	}}, 'ffdrLffRldffLDubDurDuFDfdURdUBdUld']
#12◊
	[{ db: {
		d: 'd'
		b: 'l'
	}}, 'bbdlRbbLrdbb']
#12'
	[{ db: {
		d: 'l'
		b: 'd'
	}}, 'bbdlRbbLrdbbLDubDurDuFDfdURdUBdUld']

#Dellbu-Fed
#10◊
	[{ df: {
		d: 'd'
		f: 'f'
	}}, '']
#10'
	[{ df: {
		d: 'f'
		f: 'd'
	}}, 'FDulDubDuRDrUdBUdLUdfd']
#11◊
	[{ dr: {
		d: 'd'
		r: 'f'
	}}, 'rrDbFrrBfDrr']
#11'
	[{ dr: {
		d: 'f'
		r: 'd'
	}}, 'rrDbFrrBfDrrFDulDubDuRDrUdBUdLUdfd']
#12◊
	[{ db: {
		d: 'd'
		b: 'f'
	}}, 'rrdbFrrBfdrr']
#12'
	[{ db: {
		d: 'f'
		b: 'd'
	}}, 'rrdbFrrBfdrrFDulDubDuRDrUdBUdLUdfd']

#Dellbu-Rlue
#11◊
	[{ dr: {
		d: 'd'
		r: 'r'
	}}, '']
#11'
	[{ dr: {
		d: 'r'
		r: 'd'
	}}, 'RDufDulDuBDbUdLUdFUdrd']

#Cure Cbmplete!!!
]

module.exports = algorithms