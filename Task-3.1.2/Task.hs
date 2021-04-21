module Task where

nTimes:: a -> Int -> [a]
nTimes el 0 = []
nTimes el n = el : nTimes el (n - 1)