{-From https://codingbat.com/prob/p184004
Given an int n, return true if it is within 10 of 100 or 200. Note: Math.abs(num) computes
the absolute value of a number.
-}
import Test.Hspec


nearHundred :: Int -> Bool
nearHundred n = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ nearHundred 93 `shouldBe` True
   it "True" $ nearHundred 90 `shouldBe` True
   it "False" $ nearHundred 89 `shouldBe` False

