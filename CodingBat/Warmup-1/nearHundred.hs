{-From https://codingbat.com/prob/p184004
Given an int n, return true if it is within 10 of 100 or 200. Note: Math.abs(num) computes
the absolute value of a number.
-}
import Test.Hspec


nearHundred :: Int -> Boolean
nearHundred n = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ nearHundred 93 `shouldBe` true
   it "true" $ nearHundred 90 `shouldBe` true
   it "false" $ nearHundred 89 `shouldBe` false

