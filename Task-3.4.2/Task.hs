module Task where

lengthList :: [a] -> Int
lengthList = foldr (\_ s -> 1 + s) 0