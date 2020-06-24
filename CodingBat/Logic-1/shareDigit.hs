{-From https://codingbat.com/prob/p153748
Given two ints, each in the range 10..99, return true if there is a digit that appears
in both numbers, such as the 2 in 12 and 23. (Note: division, e.g. n/10, gives the left
digit while the % "mod" n%10 gives the right digit.)
-}
import Test.Hspec


shareDigit :: Int -> Int -> Bool
shareDigit a b = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ shareDigit 12 23 `shouldBe` True
   it "False" $ shareDigit 12 43 `shouldBe` False
   it "False" $ shareDigit 12 44 `shouldBe` False
   it "True" $ shareDigit 12 23 `shouldBe` True
   it "False" $ shareDigit 12 43 `shouldBe` False
   it "False" $ shareDigit 12 44 `shouldBe` False

