{-From https://codingbat.com/prob/p159227
Given 2 int values, return true if one is negative and one is positive. Except if the
parameter "negative" is true, then return true only if both are negative.
-}
import Test.Hspec


posNeg :: Int -> Int -> Boolean -> Boolean
posNeg a b negative = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ posNeg 1 (-1) false `shouldBe` true
   it "true" $ posNeg (-1) 1 false `shouldBe` true
   it "true" $ posNeg (-4) (-5) true `shouldBe` true

