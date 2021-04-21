module Task where

qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort l@(first : _) = qsort (filter (< first) l) ++ filter (== first) l ++ qsort (filter (> first) l)