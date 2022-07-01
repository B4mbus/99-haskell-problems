{-
(*) Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x).

Example in Haskell:
λ> isPalindrome [1,2,3]
False
λ> isPalindrome "madamimadam"
True
λ> isPalindrome [1,2,4,8,16,8,4,2,1]
True
-}

isPalindrome :: Eq a => [a] -> Bool
isPalindrome [] = False
isPalindrome [_] = True
isPalindrome [x, y] = x == y
isPalindrome (x:xs) = x == last xs && isPalindrome (init xs)
-- isPalindrome = (==) <*> reverse
-- ^ better version tho I decided to implement everything by hand

main :: IO ()
main = print $ isPalindrome <$> ["abba", "kajak", "abc", "123"]
