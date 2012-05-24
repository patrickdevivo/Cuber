
# Sexy Move
[
	(cube)->
		return cube.fetch_by_perspective('dlf').l == 'f' and cube.fetch_by_perspective('dlf').f == 'l' and cube.fetch_by_perspective('lf').l == 'l' and cube.fetch_by_perspective('lf').f == 'f'
	"FDfdFDfdFDf"
]
[
	(cube)->
		return cube.fetch_by_perspective('drf').r == 'f' and cube.fetch_by_perspective('drf').f == 'r' and cube.fetch_by_perspective('rf').r == 'r' and cube.fetch_by_perspective('rf').f == 'f'
	"LDldLDldLDl"
]
[
	(cube)->
		return cube.fetch_by_perspective('drb').r == 'b' and cube.fetch_by_perspective('drb').b == 'r' and cube.fetch_by_perspective('rb').r == 'r' and cube.fetch_by_perspective('rb').b == 'b'
	"BDbdBDbdBDb"
]
[
	(cube)->
		return cube.fetch_by_perspective('dlb').l == 'b' and cube.fetch_by_perspective('dlb').b == 'l' and cube.fetch_by_perspective('lb').l == 'l' and cube.fetch_by_perspective('lb').b == 'b'
	"RDrdRDrdRDr"
]


# Edge piece correct, Corner Left

[
	(cube)->
		return cube.fetch_by_perspective('dlb').l == 'u' and cube.fetch_by_perspective('dlb').b == 'l' and cube.fetch_by_perspective('lf').l == 'l' and cube.fetch_by_perspective('lf').f == 'f'
	"FDfddFDf"
]
[
	(cube)->
		return cube.fetch_by_perspective('dlf').f == 'u' and cube.fetch_by_perspective('dlf').l == 'f' and cube.fetch_by_perspective('rf').r == 'r' and cube.fetch_by_perspective('rf').f == 'f'
	"RDrddRDr"
]
[
	(cube)->
		return cube.fetch_by_perspective('drf').r == 'u' and cube.fetch_by_perspective('drf').f == 'r' and cube.fetch_by_perspective('rb').r == 'r' and cube.fetch_by_perspective('rb').b == 'b'
	"BDbddBDb"
]
[
	(cube)->
		return cube.fetch_by_perspective('drb').b == 'u' and cube.fetch_by_perspective('drb').r == 'b' and cube.fetch_by_perspective('lb').l == 'l' and cube.fetch_by_perspective('lb').b == 'b'
	"LDlddLDl"
]


# Edge piece correct, Corner Right

[
	(cube)->
		return cube.fetch_by_perspective('drf').f == 'u' and cube.fetch_by_perspective('drf').r == 'f' and cube.fetch_by_perspective('lf').l == 'l' and cube.fetch_by_perspective('lf').f == 'f'
	"lgLddldL"
]
[
	(cube)->
		return cube.fetch_by_perspective('drb').r == 'u' and cube.fetch_by_perspective('drb').b == 'r' and cube.fetch_by_perspective('rf').r == 'r' and cube.fetch_by_perspective('rf').f == 'f'
	"fdFddfdF"
]
[
	(cube)->
		return cube.fetch_by_perspective('dlb').b == 'u' and cube.fetch_by_perspective('dlb').l == 'b' and cube.fetch_by_perspective('rb').r == 'r' and cube.fetch_by_perspective('rb').b == 'b'
	"rdRddrdR"
]
[
	(cube)->
		return cube.fetch_by_perspective('dlf').l == 'u' and cube.fetch_by_perspective('dlf').f == 'l' and cube.fetch_by_perspective('lb').l == 'l' and cube.fetch_by_perspective('lb').b == 'b'
	"bdBddbdB"
]