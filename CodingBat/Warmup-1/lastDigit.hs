{-From https://codingbat.com/prob/p125339
Given two non-negative int values, return true if they have the same last digit, such
as with 27 and 57. Note that the % "mod" operator computes remainders, so 17 % 10 is
7.
-}
import Test.Hspec


lastDigit :: Int -> Int -> Boolean
lastDigit a b = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ lastDigit 7 17 `shouldBe` true
   it "false" $ lastDigit 6 17 `shouldBe` false
   it "true" $ lastDigit 3 113 `shouldBe` true

