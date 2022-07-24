{-
(**) Pack consecutive duplicates of list elements into sublists. If a list contains repeated elements they should be placed in separate sublists.

Example in Haskell:
λ> pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
["aaaa","b","cc","aa","d","eeee"]
-}

pack :: Eq a => [a] -> [[a]]
pack (x:xs) = (x:first) : pack rest where
  (first, rest) = span (==x) xs
pack [] = []

main :: IO ()
main = print $ pack "aaaaaabbbbccc"
