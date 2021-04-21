module Task where

sum3 :: Num a => [a] -> [a] -> [a] -> [a]
sum3 [] [] [] = []
sum3 xs ys zs = (headOrZero xs + headOrZero ys + headOrZero zs) : sum3 (tailOrEmpty xs) (tailOrEmpty ys) (tailOrEmpty zs) where
    headOrZero :: Num a => [a] -> a
    headOrZero [] = 0
    headOrZero l = head l
    tailOrEmpty :: Num a => [a] -> [a]
    tailOrEmpty [] = []
    tailOrEmpty l = tail l