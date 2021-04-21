module Task where

lastElem :: [a] -> a
lastElem = foldl1 (flip const)