
{-
(*) Find the number of elements of a list.

Example in Haskell:

λ> myLength [123, 456, 789]
3
λ> myLength "Hello, world!"
13
-}

myLength :: [a] -> Int
myLength [] = 0
myLength (x:xs) = 1 + myLength xs

main :: IO ()
main = print $ myLength "123456789"
