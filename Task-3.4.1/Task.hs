module Task where

concatList :: [[a]] -> [a]
concatList = foldr (++) []