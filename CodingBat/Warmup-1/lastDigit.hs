{-From https://codingbat.com/prob/p125339
Given two non-negative int values, return true if they have the same last digit, such
as with 27 and 57. Note that the % "mod" operator computes remainders, so 17 % 10 is
7.
-}
import Test.Hspec


lastDigit :: Int -> Int -> Bool
lastDigit a b = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ lastDigit 7 17 `shouldBe` True
   it "False" $ lastDigit 6 17 `shouldBe` False
   it "True" $ lastDigit 3 113 `shouldBe` True
   it "True" $ lastDigit 7 17 `shouldBe` True
   it "False" $ lastDigit 6 17 `shouldBe` False
   it "True" $ lastDigit 3 113 `shouldBe` True

