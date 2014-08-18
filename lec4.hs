-- -- hw1: safetail, same as tail except that safetail maps [] to [].
-- -- 1.a conditional expression implementation
-- safetail :: [a] -> [a]
-- safetail ls = if null ls then [] else
--                  tail ls

-- -- 1.b guarded equations implementation
-- safetail :: [a] -> [a]
-- safetail ls | null ls = []
--             | otherwise = tail ls

-- -- 1.c pattern matching implementation
-- safetail :: [a] -> [a]
-- safetail [] = []
-- safetail (_:xs) = xs

-- -- hw2: three definition of || using pattern matching
-- (||) :: Bool -> Bool -> Bool
-- True || True = True
-- True || False = True
-- False || True = True
-- False || False = False

-- (||) :: Bool -> Bool -> Bool
-- False || False = False
-- _ || _ = True

-- (||) :: Bool -> Bool -> Bool
-- True || _ = True
-- False || a = a

-- -- hw3: redefine the following version of (&&) using conditionals
-- -- True && True = True
-- -- _ && _ = False
-- (&&) :: Bool -> Bool -> Bool
-- (&&) a b = if a then
--                if b then True else False
--            else False

-- -- hw4: same as hw3
-- -- True && b = b
-- -- False && _ = False
-- (&&) :: Bool -> Bool -> Bool
-- (&&) a b = if a
--            then b
--            else False
