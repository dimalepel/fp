module Task where

isPalindrome :: Eq a => [a] -> Bool
isPalindrome [] = True
isPalindrome [_] = True
isPalindrome lst | head lst == last lst = isPalindrome $ init $ tail lst
                 | otherwise            = False