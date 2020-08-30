{-From https://codingbat.com/prob/p182873
Given 2 ints, a and b, return true if one if them is 10 or if their sum is 10.
-}
import Test.Hspec


makes10 :: Int -> Int -> Boolean
makes10 a b = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ makes10 9 10 `shouldBe` true
   it "false" $ makes10 9 9 `shouldBe` false
   it "true" $ makes10 1 9 `shouldBe` true

