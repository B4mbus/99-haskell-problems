{-
(*) Modified run-length encoding.

Modify the result of problem 10 in such a way that if an element has no duplicates it is simply copied into the result list.
Only elements with duplicates are transferred as (N E) lists.

Example in Haskell:

λ> encodeModified "aaaabccaadeeee"
[Multiple 4 'a',Single 'b',Multiple 2 'c',
 Multiple 2 'a',Single 'd',Multiple 4 'e']
-}

data EncodedElem a = Multiple Int a | Single a deriving(Show)

encodeModified :: Eq a => [a] -> [EncodedElem a]
encodeModified [] = []
encodeModified xs@(x:_) = elem : encodeModified (snd (splitAt firstLen xs)) where
    (first, rest) = span (== x) xs
    firstLen = length first
    elem = if firstLen == 1 then Single x else Multiple firstLen x

main :: IO ()
main = print $ encodeModified "aaaabccaadeeee"
