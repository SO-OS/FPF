-- double x = x + x
-- quadrupl = double . double

-- factorial n = product [1..n]
-- average ns = sum ns `div` length ns

n  = a `div` length xs
     where
       a = 20
       xs = [1..20]

myLast1 ns = head (reverse ns)
myLast2 ns = head (drop ((length ns) - 1) ns)
myInit1 ns = take (length ns - 1) ns
myInit2 ns = reverse (drop 1 (reverse ns))
