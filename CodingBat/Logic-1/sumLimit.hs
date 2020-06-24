{-From https://codingbat.com/prob/p118077
Given 2 non-negative ints, a and b, return their sum, so long as the sum has the same
number of digits as a. If the sum has more digits than a, just return a without b.
(Note: one way to compute the number of digits of a non-negative int n is to convert
it to a string with String.valueOf(n) and then check the length of the string.)
-}
import Test.Hspec


sumLimit :: Int -> Int -> Int
sumLimit a b = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "5" $ sumLimit 2 3 `shouldBe` 5
   it "8" $ sumLimit 8 3 `shouldBe` 8
   it "9" $ sumLimit 8 1 `shouldBe` 9
   it "5" $ sumLimit 2 3 `shouldBe` 5
   it "8" $ sumLimit 8 3 `shouldBe` 8
   it "9" $ sumLimit 8 1 `shouldBe` 9

