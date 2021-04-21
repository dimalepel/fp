module Task where

max3 :: Ord a => [a] -> [a] -> [a] -> [a]
max3 xs ys zs = map (\(x, y, z) -> max x $ max y z) (zip3 xs ys zs)