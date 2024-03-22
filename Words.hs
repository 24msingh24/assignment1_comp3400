module Words (countWays) where

countWays :: String -> String -> Integer
countWays _ [] = 1  
countWays [] _ = 0 
countWays (x:xs) (y:ys)
    | x == y    = countWays xs ys + countWays xs (y:ys)  
    | otherwise = countWays xs (y:ys)


