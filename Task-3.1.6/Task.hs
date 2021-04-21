module Task where

groupElems :: Eq a => [a] -> [[a]]
groupElems l = reverse (f l []) where
               f []       acc = acc
               f (x : xs) []  = f xs [[x]]
               f (x : xs) acc | null (head acc)      = f xs ((x : head acc) : tail acc)
                              | head (head acc) /= x = f xs ([x] : acc)
                              | head (head acc) == x = f xs ((x : head acc) : tail acc)