module Task where

f :: Integer -> Integer -> Integer -> Integer
f a b 0 = a
f a b n | n > 0 = f b (a + b) (n - 1)
        | n < 0 = f (b - a) a (n + 1)

fibonacci = f 0 1