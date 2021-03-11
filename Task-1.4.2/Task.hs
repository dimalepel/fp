module Task where

import Data.Char
twoDigits2Int :: Char -> Char -> Int
twoDigits2Int x y = if (digitToInt x <= 9) && (digitToInt x >= 0) && (digitToInt y <= 9) && (digitToInt y >= 0) then (digitToInt x) * 10 + (digitToInt y) else 100

