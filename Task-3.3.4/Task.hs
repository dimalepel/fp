module Task where

import Data.List

change :: (Ord a, Num a) => a -> [[a]]
change 0      = []
change amount = helper amount [] coinsStream 0 where
    helper :: (Ord a, Num a) => a -> [a] -> [a] -> Int -> [[a]]
    helper a acc cs@(c : rest) cnt
        | cnt == iterationCount = []
        | a == 0    = [acc]
        | a <  0    = []
        | otherwise = nub (helper (a - c) (c : acc) cs (cnt + 1) ++ helper a acc rest (cnt + 1))
    coinsStream :: (Ord a, Num a) => [a]
    coinsStream = concat $ repeat coins
    iterationCount = 30