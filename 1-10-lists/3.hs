{-
(*) Find the K'th element of a list. The first element in the list is number 1.

c
Example in Haskell:

λ> elementAt [1,2,3] 2
2
λ> elementAt "haskell" 5
'e'
-}

elementAt :: [a] -> Int -> a
elementAt (x:xs) 1 = x
elementAt (x:xs) idx = elementAt xs $ idx - 1
-- non-exhaustive for [] and idx <= 0

main :: IO ()
main = putStrLn [elementAt "Abc" 2]
