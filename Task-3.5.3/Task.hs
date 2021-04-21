module Task where

evenOnly :: [a] -> [a]
evenOnly = map snd . filter (even . fst) . zip [1..]