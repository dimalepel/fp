module Task where

perms :: [a] -> [[a]]
perms [] = [[]]
perms [e] = [[e]]
perms (e : rest) = concatMap (ins $ length rest) (perms rest) where
    ins (-1) _ = []
    ins n    l = (take n l ++ [e] ++ drop n l) : ins (n - 1) l