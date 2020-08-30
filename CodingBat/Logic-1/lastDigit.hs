{-From https://codingbat.com/prob/p169213
Given three ints, a b c, return true if two or more of them have the same rightmost
digit. The ints are non-negative. Note: the % "mod" operator computes the remainder, e.g.
17 % 10 is 7.
-}
import Test.Hspec


lastDigit :: Int -> Int -> Int -> Boolean
lastDigit a b c = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ lastDigit 23 19 13 `shouldBe` true
   it "false" $ lastDigit 23 19 12 `shouldBe` false
   it "true" $ lastDigit 23 19 3 `shouldBe` true

