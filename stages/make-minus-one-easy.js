module.exports = {
	name: 'make-minus-one-easy',
	version: 2,
	parts: {
		wireI: null,
		wireL: null,
		wireT: null,
		'times-2': null,
		'times-3': null,
		'plus-1': null,
		'plus-2': null,
		'minus-1': null,
		'minus-2': null,
		add: null,
		sub: null,
		div: null,
		mul: null,
	},
	inputX: 2,
	outputX: 2,
	input: [
		6,
		28,
		496,
	],
	output: [
		-1,
		-1,
		-1,
	],
	width: 5,
	height: 5,
	clockLimit: 25,
	statement: '四則演算を組み合わせてどの入力に対しても、-1を出力するような回路を作ってみよう',
	title: '-1を作ろう -easy-',
};
