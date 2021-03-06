require! {
  chai: {expect}
  '../../lib/util': {
    arrayEquals,
    log,
    sum,
    translate-date-from-unix-time,
  }
}

It = global.it

describe 'util' ->
  describe 'arrayEquals' ->
    It 'tests array equality as sets' ->
      expect arrayEquals [1 2 3], [1 2 3] .to.be.true
      expect arrayEquals [1 2 3], [3 1 2] .to.be.true
      expect arrayEquals [1 2 3], [1 2 3 4] .to.be.false
      expect arrayEquals [1 2 3], [1 2 9] .to.be.false

  describe 'log' ->
    It 'calculates log' ->
      expect log 3, 1  .to.equal 0
      expect log 3, 3  .to.equal 1
      expect log 3, 81 .to.equal 4
      expect log 3, 80 .to.equal 3
      expect log 3, 82 .to.equal 4
      expect log 10, 1e15   .to.equal 15
      expect log 10, 1e15-1 .to.equal 14
      expect log Infinity, 100 .to.equal 0
      expect log 100, Infinity .to.equal Infinity

    It 'returns NaN if arguments are invalid' ->
      expect log 0, 100 .to.be.NaN
      expect log 1, 100 .to.be.NaN
      expect log 100, 0 .to.be.NaN
      expect log -5, 100 .to.be.NaN
      expect log 100, -5 .to.be.NaN
      expect log Infinity, Infinity .to.be.NaN

  describe 'sum' ->
    It 'calculates sum of array' ->
      expect sum [10 9 8 7 6 5 4 3 2 1] .to.equal 55
      expect sum [5 5 5] .to.equal 15

  describe 'translateDateFromUnixTime' ->
    It 'translates unixtime to YYYY-MM-DD hh:mm:ss' ->
      offset = new Date!get-timezone-offset! * 60 * 1000

      # https://ja.wikipedia.org/wiki/UNIX%E6%99%82%E9%96%93#UNIX.E6.99.82.E5.88.BB.E3.81.AE.E8.A1.A8.E7.A4.BA.E4.BE.8B
      expect translate-date-from-unix-time 0 + offset .to.equal '1970-01-01 00:00:00'
      expect translate-date-from-unix-time 100000000000 + offset .to.equal '1973-03-03 09:46:40'
      expect translate-date-from-unix-time 1000000000000 + offset .to.equal '2001-09-09 01:46:40'
      expect translate-date-from-unix-time 1234567890000 + offset .to.equal '2009-02-13 23:31:30'
