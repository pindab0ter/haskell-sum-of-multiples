import           Criterion.Main
import           SumOfMultiples

main = defaultMain
    [ bgroup "sumOfMultiples using IntSet and fromDistinctAscList readable"
        [ bench "50000"  $ whnf (sumOfMultiples  [3, 5, 7]) 50000
        , bench "500000" $ whnf (sumOfMultiples  [3, 5, 7]) 500000
        ]
    , bgroup "sumOfMultiples using IntSet and fromDistinctAscList"
        [ bench "50000"  $ whnf (sumOfMultiples' [3, 5, 7]) 50000
        , bench "500000" $ whnf (sumOfMultiples' [3, 5, 7]) 500000
        ]
    , bgroup "sumOfMultiples using IntSet and fromList"
        [ bench "50000"  $ whnf (sumOfMultiples'' [3, 5, 7]) 50000
        , bench "500000" $ whnf (sumOfMultiples'' [3, 5, 7]) 500000
        ]
    , bgroup "sumOfMultiples using Set and fromDistinctAscList"
        [ bench "50000"  $ whnf (sumOfMultiples''' [3, 5, 7]) 50000
        , bench "500000" $ whnf (sumOfMultiples''' [3, 5, 7]) 500000
        ]
    , bgroup "sumOfMultiples using Set and fromList"
        [ bench "50000"  $ whnf (sumOfMultiples'''' [3, 5, 7]) 50000
        , bench "500000" $ whnf (sumOfMultiples'''' [3, 5, 7]) 500000
        ]
    , bgroup "sumOfMultiples nub and concatMap (argument is 50 times smaller)"
        [ bench "1000"  $ whnf (sumOfMultiples''''' [3, 5, 7]) 1000
        , bench "10000" $ whnf (sumOfMultiples''''' [3, 5, 7]) 10000
        ]
    ]
