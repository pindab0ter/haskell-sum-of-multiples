module SumOfMultiples (sumOfMultiples, sumOfMultiples', sumOfMultiples'', sumOfMultiples''', sumOfMultiples'''', sumOfMultiples''''') where

import qualified Data.IntSet as IntSet
import           Data.List   (concatMap, nub)
import qualified Data.Set    as Set

sumOfMultiples :: [Integer] -> Integer -> Integer
sumOfMultiples factors limit = intSetSum $ IntSet.unions $ intSetOfMultiplesUpTo limit <$> factors

intSetOfMultiplesUpTo :: Integer -> Integer -> IntSet.IntSet
intSetOfMultiplesUpTo limit factor = IntSet.fromDistinctAscList [0, step .. end]
    where step = fromIntegral factor
          end = fromIntegral limit - 1

intSetSum :: IntSet.IntSet -> Integer
intSetSum = IntSet.foldr ((+) . toInteger) 0

sumOfMultiples' :: [Integer] -> Integer -> Integer
sumOfMultiples' factors limit = IntSet.foldr ((+) . toInteger) 0 $ IntSet.unions . map (\x -> IntSet.fromDistinctAscList [0, x .. fromIntegral limit-1]) $ map fromIntegral factors

sumOfMultiples'' :: [Integer] -> Integer -> Integer
sumOfMultiples'' factors limit = IntSet.foldr ((+) . toInteger) 0 $ IntSet.unions . map (\x -> IntSet.fromList [0, x .. fromIntegral limit-1]) $ map fromIntegral factors

sumOfMultiples''' :: [Integer] -> Integer -> Integer
sumOfMultiples''' factors limit = Set.foldr (+) 0 $ Set.unions . map (\x -> Set.fromDistinctAscList [0,x..limit-1]) $ factors

sumOfMultiples'''' :: [Integer] -> Integer -> Integer
sumOfMultiples'''' factors limit = Set.foldr (+) 0 $ Set.unions . map (\x -> Set.fromList [0,x..limit-1]) $ factors

sumOfMultiples''''' :: [Integer] -> Integer -> Integer
sumOfMultiples''''' factors limit = sum . nub . concatMap (\x -> [0,x..limit-1]) $ factors
