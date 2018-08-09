# Sum Of Multiples

## Exercise description

Given a number, find the sum of all the unique multiples of particular numbers up to
but not including that number.

If we list all the natural numbers below 20 that are multiples of 3 or 5,
we get 3, 5, 6, 9, 10, 12, 15, and 18.

The sum of these multiples is 78.

## Notes

My [first solution](https://exercism.io/my/solutions/998d2f58425d48fbae446f60aa7ca1f7?iteration_idx=2) used `nub` and `concatMap`. As my mentor on Exercism pointed out, these are both very inefficient methods and pointed me towards `Data.IntSet` and Criterion for benchmarking.

Note that the benchmark for the least efficient implementation is 50 times smaller, only having to calculate multiples of 3, 5 and 7 up to 10,000 instead of 500,000.

## File links

[Source file for the different implementations](https://github.com/pindab0ter/haskell-sum-of-multiples/blob/master/src/SumOfMultiples.hs)

[Benchmarking results](https://pindab0ter.github.io/haskell-sum-of-multiples/bench.html)