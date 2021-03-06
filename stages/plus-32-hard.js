module.exports = {
	name: 'plus-32-hard',
	version: 3,
	parts: {
		wireI: null,
		wireL: null,
		wireT: null,
		'times-2': null,
		'times-3': null,
		'plus-1': null,
		'plus-2': null,
		add: null,
		sub: null,
		div: null,
		mul: null,
	},
	inputX: 1,
	outputX: 1,
	input: [
		6,
		28,
		496,
	],
	output: [
		38,
		60,
		528,
	],
	width: 3,
	height: 6,
	clockLimit: 50,
	statement: '演算子をうまく配置して、32を足してみよう!',
	title: '32を足してみよう-hard-',
};
