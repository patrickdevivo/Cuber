permutations = [
	#Pefmutatibn

	#Edle Fbtatibn cu

	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'l' and cube.fetch_by_perspective('drf').f == 'f' and cube.fetch_by_perspective('drb').r == 'r' and cube.fetch_by_perspective('dl').l == 'l' and cube.fetch_by_perspective('df').f == 'r'
		"rrdbFrrBfdrr"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'l' and cube.fetch_by_perspective('drf').f == 'f' and cube.fetch_by_perspective('drb').r == 'r' and cube.fetch_by_perspective('dl').l == 'r' and cube.fetch_by_perspective('df').f == 'f'
		"bbdlRbbLrdbb"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'l' and cube.fetch_by_perspective('drf').f == 'f' and cube.fetch_by_perspective('drb').r == 'r' and cube.fetch_by_perspective('dl').l == 'f' and cube.fetch_by_perspective('df').f == 'b'
		"lldBfllbFdll"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'l' and cube.fetch_by_perspective('drf').f == 'f' and cube.fetch_by_perspective('drb').r == 'r' and cube.fetch_by_perspective('dl').l == 'f' and cube.fetch_by_perspective('df').f == 'r'
		"ffdrLffRldff"
	]


	#Edle Fbtatibn ccu

	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'l' and cube.fetch_by_perspective('drf').f == 'f' and cube.fetch_by_perspective('drb').r == 'r' and cube.fetch_by_perspective('dl').l == 'l' and cube.fetch_by_perspective('df').f == 'b'
		"rrDbFrrBfDrr"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'l' and cube.fetch_by_perspective('drf').f == 'f' and cube.fetch_by_perspective('drb').r == 'r' and cube.fetch_by_perspective('dl').l == 'b' and cube.fetch_by_perspective('df').f == 'f'
		"bbDlRbbLrDbb"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'l' and cube.fetch_by_perspective('drf').f == 'f' and cube.fetch_by_perspective('drb').r == 'r' and cube.fetch_by_perspective('dl').l == 'b' and cube.fetch_by_perspective('df').f == 'l'
		"llDfBllFbDll"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'l' and cube.fetch_by_perspective('drf').f == 'f' and cube.fetch_by_perspective('drb').r == 'r' and cube.fetch_by_perspective('dl').l == 'r' and cube.fetch_by_perspective('df').f == 'l'
		"ffDrLffRlDff"
	]


	#Bppbsite Edles

	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'l' and cube.fetch_by_perspective('drf').f == 'f' and cube.fetch_by_perspective('drb').r == 'r' and cube.fetch_by_perspective('dl').l == 'r' and cube.fetch_by_perspective('df').f == 'b'
		"rrlldrrllddrrlldrrll"
	]


	#Adjacent Edle Suap

	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'l' and cube.fetch_by_perspective('drf').f == 'f' and cube.fetch_by_perspective('drb').r == 'r' and cube.fetch_by_perspective('dl').l == 'b' and cube.fetch_by_perspective('df').f == 'r'
		"fLFlrFrLFlfrrd"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'l' and cube.fetch_by_perspective('drf').f == 'f' and cube.fetch_by_perspective('drb').r == 'r' and cube.fetch_by_perspective('dl').l == 'f' and cube.fetch_by_perspective('df').f == 'l'
		"rFRfbRbFRfrbbd"
	]


	#Adjacent Rlbck Paif Suap Left

	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'l' and cube.fetch_by_perspective('drf').f == 'r' and cube.fetch_by_perspective('drb').r == 'f' and cube.fetch_by_perspective('dl').l == 'l' and cube.fetch_by_perspective('df').f == 'r'
		"lDRdLddrDRddr"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'l' and cube.fetch_by_perspective('drf').f == 'f' and cube.fetch_by_perspective('drb').r == 'b' and cube.fetch_by_perspective('dl').l == 'l' and cube.fetch_by_perspective('df').f == 'f'
		"fDBdFddbDBddb"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'b' and cube.fetch_by_perspective('drf').f == 'f' and cube.fetch_by_perspective('drb').r == 'r' and cube.fetch_by_perspective('dl').l == 'b' and cube.fetch_by_perspective('df').f == 'f'
		"rDLdRddlDLddl"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'f' and cube.fetch_by_perspective('drf').f == 'l' and cube.fetch_by_perspective('drb').r == 'r' and cube.fetch_by_perspective('dl').l == 'f' and cube.fetch_by_perspective('df').f == 'l'
		"bDFdBddfDFddf"
	]


	#Adjacent Rlbck Paif Suap Filht

	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'l' and cube.fetch_by_perspective('drf').f == 'r' and cube.fetch_by_perspective('drb').r == 'f' and cube.fetch_by_perspective('dl').l == 'l' and cube.fetch_by_perspective('df').f == 'f'
		"LdrDlddRdrddR"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'l' and cube.fetch_by_perspective('drf').f == 'f' and cube.fetch_by_perspective('drb').r == 'b' and cube.fetch_by_perspective('dl').l == 'b' and cube.fetch_by_perspective('df').f == 'f'
		"FdbDfddBdbddB"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'b' and cube.fetch_by_perspective('drf').f == 'f' and cube.fetch_by_perspective('drb').r == 'r' and cube.fetch_by_perspective('dl').l == 'f' and cube.fetch_by_perspective('df').f == 'l'
		"RdlDrddLdlddL"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'f' and cube.fetch_by_perspective('drf').f == 'l' and cube.fetch_by_perspective('drb').r == 'r' and cube.fetch_by_perspective('dl').l == 'l' and cube.fetch_by_perspective('df').f == 'r'
		"BdfDbddFdfddF"
	]


	#Cbfnef Fbtatibn cu

	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'l' and cube.fetch_by_perspective('drf').f == 'r' and cube.fetch_by_perspective('drb').r == 'b' and cube.fetch_by_perspective('dl').l == 'l' and cube.fetch_by_perspective('df').f == 'f'
		"BlBrrbLBrrbb"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'r' and cube.fetch_by_perspective('drf').f == 'f' and cube.fetch_by_perspective('drb').r == 'b' and cube.fetch_by_perspective('dl').l == 'l' and cube.fetch_by_perspective('df').f == 'f'
		"LfLbblFLbbll"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'f' and cube.fetch_by_perspective('drf').f == 'b' and cube.fetch_by_perspective('drb').r == 'r' and cube.fetch_by_perspective('dl').l == 'l' and cube.fetch_by_perspective('df').f == 'f'
		"FrFllfRFllff"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'f' and cube.fetch_by_perspective('drf').f == 'r' and cube.fetch_by_perspective('drb').r == 'l' and cube.fetch_by_perspective('dl').l == 'l' and cube.fetch_by_perspective('df').f == 'f'
		"RbRffrBRffrr"
	]


	#Cbfnef Fbtatibn ccu

	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'l' and cube.fetch_by_perspective('drf').f == 'b' and cube.fetch_by_perspective('drb').r == 'f' and cube.fetch_by_perspective('dl').l == 'l' and cube.fetch_by_perspective('df').f == 'f'
		"bbrrblBrrbLb"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'b' and cube.fetch_by_perspective('drf').f == 'f' and cube.fetch_by_perspective('drb').r == 'l' and cube.fetch_by_perspective('dl').l == 'l' and cube.fetch_by_perspective('df').f == 'f'
		"llbblfLbblFl"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'b' and cube.fetch_by_perspective('drf').f == 'l' and cube.fetch_by_perspective('drb').r == 'r' and cube.fetch_by_perspective('dl').l == 'l' and cube.fetch_by_perspective('df').f == 'f'
		"ffllfrFllfRf"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'r' and cube.fetch_by_perspective('drf').f == 'l' and cube.fetch_by_perspective('drb').r == 'f' and cube.fetch_by_perspective('dl').l == 'l' and cube.fetch_by_perspective('df').f == 'f'
		"rrffrbRffrBr"
	]


	#Miffbf Suap

	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'l' and cube.fetch_by_perspective('drf').f == 'b' and cube.fetch_by_perspective('drb').r == 'r' and cube.fetch_by_perspective('dl').l == 'l' and cube.fetch_by_perspective('df').f == 'f'
		"LdrDldLdRDlddrddR"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'r' and cube.fetch_by_perspective('drf').f == 'f' and cube.fetch_by_perspective('drb').r == 'l' and cube.fetch_by_perspective('dl').l == 'b' and cube.fetch_by_perspective('df').f == 'f'
		"FdbDfdFdBDfddbddB"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'l' and cube.fetch_by_perspective('drf').f == 'b' and cube.fetch_by_perspective('drb').r == 'r' and cube.fetch_by_perspective('dl').l == 'f' and cube.fetch_by_perspective('df').f == 'l'
		"RdlDrdRdLDrddlddL"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'r' and cube.fetch_by_perspective('drf').f == 'f' and cube.fetch_by_perspective('drb').r == 'l' and cube.fetch_by_perspective('dl').l == 'l' and cube.fetch_by_perspective('df').f == 'r'
		"BdfDbdBdFDbddfddF"
	]


	#Affbuhead

	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'l' and cube.fetch_by_perspective('drf').f == 'b' and cube.fetch_by_perspective('drb').r == 'r' and cube.fetch_by_perspective('dl').l == 'b' and cube.fetch_by_perspective('df').f == 'f'
		"rfDFDfdFRfdFDFrfR"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'r' and cube.fetch_by_perspective('drf').f == 'f' and cube.fetch_by_perspective('drb').r == 'l' and cube.fetch_by_perspective('dl').l == 'l' and cube.fetch_by_perspective('df').f == 'f'
		"flDLDldLFldLDLflF"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'l' and cube.fetch_by_perspective('drf').f == 'b' and cube.fetch_by_perspective('drb').r == 'r' and cube.fetch_by_perspective('dl').l == 'l' and cube.fetch_by_perspective('df').f == 'r'
		"lbDBDbdBLbdBDBlbL"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'r' and cube.fetch_by_perspective('drf').f == 'f' and cube.fetch_by_perspective('drb').r == 'l' and cube.fetch_by_perspective('dl').l == 'f' and cube.fetch_by_perspective('df').f == 'l'
		"brDRDrdRBrdRDRbrB"
	]


	#T-Pefm

	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'b' and cube.fetch_by_perspective('drf').f == 'f' and cube.fetch_by_perspective('drb').r == 'r' and cube.fetch_by_perspective('dl').l == 'r' and cube.fetch_by_perspective('df').f == 'f'
		"ldLDLfllDLDldLF"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'f' and cube.fetch_by_perspective('drf').f == 'l' and cube.fetch_by_perspective('drb').r == 'r' and cube.fetch_by_perspective('dl').l == 'l' and cube.fetch_by_perspective('df').f == 'b'
		"fdFDFrffDFDfdFR"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'l' and cube.fetch_by_perspective('drf').f == 'r' and cube.fetch_by_perspective('drb').r == 'f' and cube.fetch_by_perspective('dl').l == 'r' and cube.fetch_by_perspective('df').f == 'f'
		"rdRDRbrrDRDrdRB"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'l' and cube.fetch_by_perspective('drf').f == 'f' and cube.fetch_by_perspective('drb').r == 'b' and cube.fetch_by_perspective('dl').l == 'l' and cube.fetch_by_perspective('df').f == 'b'
		"bdBDBlbbDBDbdBL"
	]


	#Cfbss-Pefm

	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'l' and cube.fetch_by_perspective('drf').f == 'r' and cube.fetch_by_perspective('drb').r == 'f' and cube.fetch_by_perspective('dl').l == 'l' and cube.fetch_by_perspective('df').f == 'b'
		"llBluuRfruulflbLF"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'l' and cube.fetch_by_perspective('drf').f == 'f' and cube.fetch_by_perspective('drb').r == 'b' and cube.fetch_by_perspective('dl').l == 'r' and cube.fetch_by_perspective('df').f == 'f'
		"ffLfuuBrbuufrflFR"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'b' and cube.fetch_by_perspective('drf').f == 'f' and cube.fetch_by_perspective('drb').r == 'r' and cube.fetch_by_perspective('dl').l == 'l' and cube.fetch_by_perspective('df').f == 'b'
		"rrFruuLbluurbrfRB"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'f' and cube.fetch_by_perspective('drf').f == 'l' and cube.fetch_by_perspective('drb').r == 'r' and cube.fetch_by_perspective('dl').l == 'r' and cube.fetch_by_perspective('df').f == 'f'
		"bbRbuuFlfuublbrBL"
	]


	#Bppbsite Rlbck Paif Suap Filht

	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'r' and cube.fetch_by_perspective('drf').f == 'f' and cube.fetch_by_perspective('drb').r == 'l' and cube.fetch_by_perspective('dl').l == 'l' and cube.fetch_by_perspective('df').f == 'b'
		"bDfddBdFbDfddBdFD"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'l' and cube.fetch_by_perspective('drf').f == 'b' and cube.fetch_by_perspective('drb').r == 'r' and cube.fetch_by_perspective('dl').l == 'r' and cube.fetch_by_perspective('df').f == 'f'
		"lDrddLdRlDrddLdRD"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'r' and cube.fetch_by_perspective('drf').f == 'f' and cube.fetch_by_perspective('drb').r == 'l' and cube.fetch_by_perspective('dl').l == 'l' and cube.fetch_by_perspective('df').f == 'b'
		"fDbddFdBfDbddFdBD"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'l' and cube.fetch_by_perspective('drf').f == 'b' and cube.fetch_by_perspective('drb').r == 'r' and cube.fetch_by_perspective('dl').l == 'r' and cube.fetch_by_perspective('df').f == 'f'
		"rDlddRdLrDlddRdLD"
	]


	#Bppbsite Rlbck Paif Suap Left

	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'l' and cube.fetch_by_perspective('drf').f == 'b' and cube.fetch_by_perspective('drb').r == 'r' and cube.fetch_by_perspective('dl').l == 'l' and cube.fetch_by_perspective('df').f == 'b'
		"FdBddfDbFdBddfDbd"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'r' and cube.fetch_by_perspective('drf').f == 'f' and cube.fetch_by_perspective('drb').r == 'l' and cube.fetch_by_perspective('dl').l == 'r' and cube.fetch_by_perspective('df').f == 'f'
		"RdLddrDlRdLddrDld"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'l' and cube.fetch_by_perspective('drf').f == 'b' and cube.fetch_by_perspective('drb').r == 'r' and cube.fetch_by_perspective('dl').l == 'l' and cube.fetch_by_perspective('df').f == 'b'
		"BdFddbDfBdFddbDfd"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'r' and cube.fetch_by_perspective('drf').f == 'f' and cube.fetch_by_perspective('drb').r == 'l' and cube.fetch_by_perspective('dl').l == 'r' and cube.fetch_by_perspective('df').f == 'f'
		"LdRddlDrLdRddlDrd"
	]


	#4 Cbfnef Suap

	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'b' and cube.fetch_by_perspective('drf').f == 'r' and cube.fetch_by_perspective('drb').r == 'f' and cube.fetch_by_perspective('dl').l == 'l' and cube.fetch_by_perspective('df').f == 'f'
		"lBLflbLffRbrfRBr"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'f' and cube.fetch_by_perspective('drf').f == 'l' and cube.fetch_by_perspective('drb').r == 'b' and cube.fetch_by_perspective('dl').l == 'l' and cube.fetch_by_perspective('df').f == 'f'
		"fLFrflFrrBlbrBLb"
	]


	#Sideraf Rack Left

	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'l' and cube.fetch_by_perspective('drf').f == 'r' and cube.fetch_by_perspective('drb').r == 'f' and cube.fetch_by_perspective('dl').l == 'f' and cube.fetch_by_perspective('df').f == 'l'
		"DffLFDFdflFddfddF"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'l' and cube.fetch_by_perspective('drf').f == 'f' and cube.fetch_by_perspective('drb').r == 'b' and cube.fetch_by_perspective('dl').l == 'l' and cube.fetch_by_perspective('df').f == 'r'
		"DrrFRDRdrfRddrddR"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'b' and cube.fetch_by_perspective('drf').f == 'f' and cube.fetch_by_perspective('drb').r == 'r' and cube.fetch_by_perspective('dl').l == 'l' and cube.fetch_by_perspective('df').f == 'f'
		"DbbRBDBdbrBddbddB"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'f' and cube.fetch_by_perspective('drf').f == 'l' and cube.fetch_by_perspective('drb').r == 'r' and cube.fetch_by_perspective('dl').l == 'b' and cube.fetch_by_perspective('df').f == 'f'
		"DllBLDLdlbLddlddL"
	]


	#Sideraf Rack Filht

	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'l' and cube.fetch_by_perspective('drf').f == 'r' and cube.fetch_by_perspective('drb').r == 'f' and cube.fetch_by_perspective('dl').l == 'b' and cube.fetch_by_perspective('df').f == 'f'
		"dbblbdbDBLbddBddb"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'l' and cube.fetch_by_perspective('drf').f == 'f' and cube.fetch_by_perspective('drb').r == 'b' and cube.fetch_by_perspective('dl').l == 'f' and cube.fetch_by_perspective('df').f == 'l'
		"dllfldlDLFlddLddl"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'b' and cube.fetch_by_perspective('drf').f == 'f' and cube.fetch_by_perspective('drb').r == 'r' and cube.fetch_by_perspective('dl').l == 'l' and cube.fetch_by_perspective('df').f == 'r'
		"dffrfdfDFRfddFddf"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'f' and cube.fetch_by_perspective('drf').f == 'l' and cube.fetch_by_perspective('drb').r == 'r' and cube.fetch_by_perspective('dl').l == 'l' and cube.fetch_by_perspective('df').f == 'f'
		"drrbrdrDRBrddRddr"
	]


	#Sideraf Ffbnt Left

	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'f' and cube.fetch_by_perspective('drf').f == 'r' and cube.fetch_by_perspective('drb').r == 'l' and cube.fetch_by_perspective('dl').l == 'l' and cube.fetch_by_perspective('df').f == 'b'
		"bbuRdRDrUbbLdl"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'l' and cube.fetch_by_perspective('drf').f == 'r' and cube.fetch_by_perspective('drb').r == 'b' and cube.fetch_by_perspective('dl').l == 'b' and cube.fetch_by_perspective('df').f == 'f'
		"lluBdBDbUllFdf"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'r' and cube.fetch_by_perspective('drf').f == 'f' and cube.fetch_by_perspective('drb').r == 'b' and cube.fetch_by_perspective('dl').l == 'b' and cube.fetch_by_perspective('df').f == 'l'
		"ffuLdLDlUffRdr"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'f' and cube.fetch_by_perspective('drf').f == 'b' and cube.fetch_by_perspective('drb').r == 'r' and cube.fetch_by_perspective('dl').l == 'r' and cube.fetch_by_perspective('df').f == 'l'
		"rruFdFDfUrrBdb"
	]


	#Sideraf Ffbnt Filht

	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'l' and cube.fetch_by_perspective('drf').f == 'b' and cube.fetch_by_perspective('drb').r == 'f' and cube.fetch_by_perspective('dl').l == 'l' and cube.fetch_by_perspective('df').f == 'r'
		"ffUrDrdRufflDL"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'b' and cube.fetch_by_perspective('drf').f == 'f' and cube.fetch_by_perspective('drb').r == 'l' and cube.fetch_by_perspective('dl').l == 'r' and cube.fetch_by_perspective('df').f == 'f'
		"rrUbDbdBurrfDF"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'b' and cube.fetch_by_perspective('drf').f == 'l' and cube.fetch_by_perspective('drb').r == 'r' and cube.fetch_by_perspective('dl').l == 'f' and cube.fetch_by_perspective('df').f == 'b'
		"bbUlDldLubbrDR"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'r' and cube.fetch_by_perspective('drf').f == 'l' and cube.fetch_by_perspective('drb').r == 'f' and cube.fetch_by_perspective('dl').l == 'f' and cube.fetch_by_perspective('df').f == 'r'
		"llUfDfdFullbDB"
	]


	#Ffbntraf Ffbnt Left

	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'l' and cube.fetch_by_perspective('drf').f == 'r' and cube.fetch_by_perspective('drb').r == 'b' and cube.fetch_by_perspective('dl').l == 'l' and cube.fetch_by_perspective('df').f == 'b'
		"ldLffUrDRdRuff"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'r' and cube.fetch_by_perspective('drf').f == 'f' and cube.fetch_by_perspective('drb').r == 'b' and cube.fetch_by_perspective('dl').l == 'b' and cube.fetch_by_perspective('df').f == 'f'
		"fdFrrUbDBdBurr"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'f' and cube.fetch_by_perspective('drf').f == 'b' and cube.fetch_by_perspective('drb').r == 'r' and cube.fetch_by_perspective('dl').l == 'b' and cube.fetch_by_perspective('df').f == 'l'
		"rdRbbUlDLdLubb"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'f' and cube.fetch_by_perspective('drf').f == 'r' and cube.fetch_by_perspective('drb').r == 'l' and cube.fetch_by_perspective('dl').l == 'r' and cube.fetch_by_perspective('df').f == 'l'
		"bdBllUfDFdFull"
	]


	#Ffbntraf Ffbnt Filht

	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'r' and cube.fetch_by_perspective('drf').f == 'l' and cube.fetch_by_perspective('drb').r == 'f' and cube.fetch_by_perspective('dl').l == 'l' and cube.fetch_by_perspective('df').f == 'r'
		"LDlbbuRdrDrUbb"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'l' and cube.fetch_by_perspective('drf').f == 'b' and cube.fetch_by_perspective('drb').r == 'f' and cube.fetch_by_perspective('dl').l == 'r' and cube.fetch_by_perspective('df').f == 'f'
		"FDflluBdbDbUll"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'b' and cube.fetch_by_perspective('drf').f == 'f' and cube.fetch_by_perspective('drb').r == 'l' and cube.fetch_by_perspective('dl').l == 'f' and cube.fetch_by_perspective('df').f == 'b'
		"RDrffuLdlDlUff"
	]
	[
		(cube)->
			return cube.fetch_by_perspective('dlf').l == 'b' and cube.fetch_by_perspective('drf').f == 'l' and cube.fetch_by_perspective('drb').r == 'r' and cube.fetch_by_perspective('dl').l == 'f' and cube.fetch_by_perspective('df').f == 'r'
		"BDbrruFdfDfUrr"
	]

]

module.exports = permutations