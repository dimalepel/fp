module Task where

import Data.Char (isUpper)

delAllUpper :: String -> String
delAllUpper = unwords . filter (/= []) . map (\word -> if all isUpper word then [] else word) . words