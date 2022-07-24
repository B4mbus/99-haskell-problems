{-
(*) Run-length encoding of a list.
Use the result of problem P09 to implement the so-called run-length encoding data compression method.
Consecutive duplicates of elements are encoded as lists (N E) where N is the number of duplicates of the element E.

Example in Haskell:

λ> encode "aaaabccaadeeee"
[(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]
-}

pack :: Eq a => [a] -> [[a]]
pack (x:xs) = (x:first) : pack rest where
  (first, rest) = span (==x) xs
pack [] = []

encode :: Eq a => [a] -> [(Int, a)]
encode xs = f <$> pack xs where
  f y@ys = (length ys, y)

{- An even shorter version: -}
-- encode :: Eq a => [a] -> [(Int, a)]
-- encode xs@(x:_) = (length first, x) : encode xs where
--   (first, rest) = span (==x) xs

main :: IO ()
main = print $ encode "aaaaaabbbbccc"
