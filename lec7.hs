-- map
map :: (a -> b) -> [a] -> [b]
-- definition 1
map f [] = []
map f (x:xs) = f x : map f xs

-- definition 2
map f xs = [f x | x <- xs]

-- filter
filter :: (a -> Bool) -> [a] -> [a]
-- definition 1
filter p [] = []
filter p (x:xs) | p x = x : filter xs
                | otherwise = filter xs

-- foldr
--definition 1
foldr :: (a -> b -> b) -> b -> [a] -> b
foldr f v [] = v
foldr f v (x:xs) = f x (foldr f v xs)

--definition 2
-- simultaneously replace each (:) in a list by a given function, and [] by a given value.

-- length
-- definition 1
length :: [a] -> Int
length = foldr (\_ n -> n + 1) 0

--reverse
--definition 1
reverse :: [a] -> [a]
reverse = foldr (\x xs-> xs ++ [x]) []

--definition 2
reverse [] = []
reverse (x:xs) = reverse xs ++ [x]

xs ++ ys = foldr (:) ys xs
(++) xs ys = foldr (:) ys xs
(++) ys = foldr (:) ys
(++) = foldr (:)

all :: (a -> bool) -> [a] -> Bool
all p xs = and [p x | x <- xs]

takeWhile :: (a -> Bool) -> [a] -> [a]
takeWhile p [] = []
takeWhile p (x:xs)
              | p x = x : takeWhile p xs
              | otherwise = []

-- hw7
-- (1) what are higher-order functions that reutrn functions as results better known as?

-- (2)
map (f filter p xs)

-- (3)
-- (map f) :: [a] -> [a]
foldr (\x y -> f x : y) []

-- (4)
-- (filter p) :: [a] -> [a]
foldr (\x y -> if p x then x:y else y) []
