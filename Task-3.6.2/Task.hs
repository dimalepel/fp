module Task where

revRange :: (Char, Char) -> String
revRange = unfoldr g where
    g :: (Char, Char) -> Maybe (Char, (Char, Char))
    g (end, begin)
        | begin < end = Nothing
        | otherwise   = Just (begin, (end, pred begin))