-- import Data.Char

factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

-- prime :: Int -> Bool
-- prime n = factors n == [1, n]

-- pairs :: [a] -> [(a, a)]
-- pairs xs = zip xs (tail xs)

-- sorted :: Ord a => [a] -> Bool
-- sorted xs = and [x <= y | (x, y) <- pairs xs]

-- positions :: Eq a => [a] -> a -> [Int]
-- positions xs x = [i | (x', i) <- zip xs [0..], x == x']

-- lowers :: String -> Int
-- lowers xs = length [x | x <- xs, isLower x]

-- hw1
pyths :: Int -> [(Int, Int, Int)]
pyths n = [(x, y, z) | x <- [1..n], y <- [1..n], z <- [1..n], x*x + y*y == z*z]

-- hw2
perfects :: Int -> [Int]
perfects n = [x | x <- [1..n], sum (factors x) == x * 2]

--hw3
scalar_product :: [Int] -> [Int] -> Int
scalar_product xs ys = sum [x*y | (x, y) <-zip xs ys]
