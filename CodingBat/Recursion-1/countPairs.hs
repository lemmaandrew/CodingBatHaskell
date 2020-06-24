{-From https://codingbat.com/prob/p154048
We'll say that a "pair" in a string is two instances of a char separated by a char.
So "AxA" the A's make a pair. Pair's can overlap, so "AxAxA" contains 3 pairs -- 2 for
A and 1 for x. Recursively compute the number of pairs in the given string.
-}
import Test.Hspec


countPairs :: String -> Int
countPairs str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "1" $ countPairs "axa" `shouldBe` 1
   it "2" $ countPairs "axax" `shouldBe` 2
   it "1" $ countPairs "axbx" `shouldBe` 1

