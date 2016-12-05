require! {
  chai
  'chai-things'
  mathjs # as reference implementation
  seedrandom
  'core-js/es5'
  'core-js/es6'
  '../../stages/factorial'
}

chai.use chai-things

{expect} = chai

It = global.it

zip = (array-A, array-B) ->
  Array.from {length: Math.min array-A.length, array-B.length}, (item, index) ->
    [array-A[index], array-B[index]]

integrality = (n) -> Number.is-integer n or Number.is-finite n

io-spec = ({input, output}) ->
  expect input .to.be.an \array
  expect output .to.be.an \array

  # Uniqueness of input
  unique-input = Array.from new Set input
  expect input .to.deep.equal unique-input

  expect input .to.all.satisfy integrality
  expect output .to.all.satisfy integrality

  expect input .to.have.length output.length

describe 'Stage Data' ->
  before-each ->
    @random = seedrandom ''

  describe 'factoriol stage' ->
    It 'generates factorals' ->
      io = factorial.io-generator @random

      expect io .to.satisfy io-spec

      expect zip io.input, io.output .to.all.satisfy ([input, output]) ->
        output is mathjs.factorial input
