module Task where

seqA :: Integer -> Integer
seqA n | n >= 0 = let
                    f a b c 0 = a
                    f a b c k = f b c (c + b - 2 * a) (k - 1)
                 in f 1 2 3 n
       | otherwise = error "condition n >= 0 is violated"