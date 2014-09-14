import Data.Char

type Parser a = String -> [(a, String)]

ireturn :: a -> Parser a
ireturn v = \inp -> [(v, inp)]

failure :: Parser a
failure = \inp -> []

item :: Parser Char
item = \inp -> case inp of
                 [] -> []
                 (x:xs) -> [(x, xs)]

parse :: Parser a -> String -> [(a, String)]
parse p inp = p inp


(+++) :: Parser a -> Parser a -> Parser a
p +++ q = \inp -> case p inp of
                    [] -> parse q inp
                    [(v, out)] -> [(v, out)]

-- p :: Parser (Char, Char)
-- p = do x <- item
--        item
--        y <- item
--        ireturn (x, y)

sat :: (Char -> Bool) -> Parser Char
sat p = do x <- item
           if p x then
               ireturn x
           else
               failure

digit :: Parser Char
digit = sat isDigit

char :: Char -> Parser Char
char x = sat (x ==)

many :: Parser a -> Parser [a]
many p = many1 p +++ ireturn []

many1 :: Parser a -> Parser [a]
many1 p = do x <- p
             xs <- many p
             ireturn (x:xs)

string :: String -> Parser String
string [] = ireturn []
string (x:xs) = do char x
                   string xs
                   ireturn (x:xs)

p :: Parser String
p = do char '['
       d <- digit
       ds <- many (do char ','
                      digit)
       char ']'
       ireturn (d:ds)
