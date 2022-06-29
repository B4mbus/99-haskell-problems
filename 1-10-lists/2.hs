{-
(*) Find the last but one element of a list.

Example in Haskell:

λ> myButLast [1,2,3,4]
3
λ> myButLast ['a'..'z']
'y'
-}

myButLast :: [a] -> a
myButLast [x, y] = x
myButLast (x:y:xs) = myButLast $ y : xs
-- Ideally there would also be a match for [] here

main :: IO ()
main = putStrLn [myButLast "Abc"]
