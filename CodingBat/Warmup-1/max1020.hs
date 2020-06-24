{-From https://codingbat.com/prob/p177372
Given 2 positive int values, return the larger value that is in the range 10..20 inclusive,
or return 0 if neither is in that range.
-}
import Test.Hspec


max1020 :: Int -> Int -> Int
max1020 a b = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "19" $ max1020 11 19 `shouldBe` 19
   it "19" $ max1020 19 11 `shouldBe` 19
   it "11" $ max1020 11 9 `shouldBe` 11

