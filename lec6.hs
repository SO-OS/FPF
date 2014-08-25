import Prelude hiding (and, concat, replicate, (!!), elem, )
-- length :: [a] -> Int
-- length [] = 0
-- length (_:xs) = 1 + length  xs

-- reverse :: [a] -> [a]
-- reverse [] = []
-- reverse (x:xs) = reverse xs ++ [x]

-- zip :: [a] -> [b] -> [(a,b)]
-- zip [] _ = []
-- zip _ [] = []
-- zip (x:xs) (y:ys) = (x,y) : zip xs ys

-- qsort :: [Int] -> [Int]
-- qsort [] = []
-- qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
--     where
--       smaller = [a | a <- xs, a <= x]
--       larger = [b | b <- xs, b > x]

-- hw6
-- define functions using recursion
and :: [Bool] -> Bool
and [] = True
and (x:xs) = x && and xs

concat :: [[a]] -> [a]
concat [] = []
concat (x:xs) = x ++ concat xs

replicate :: Int -> a -> [a]
replicate 0 x = []
replicate (n+1) x = x : replicate n x

(!!) :: [a] -> Int -> a
(!!) (x:xs) 0 = x
(!!) (x:xs) (n+1) = (!!) xs n

elem :: Eq a => a -> [a] -> Bool
elem a [] = False
elem a (x:xs) = a == x || elem a xs
