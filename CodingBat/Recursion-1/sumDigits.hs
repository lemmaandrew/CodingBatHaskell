{-From https://codingbat.com/prob/p163932
Given a non-negative int n, return the sum of its digits recursively (no loops). Note
that mod (%) by 10 yields the rightmost digit (126 % 10 is 6), while divide (/) by
10 removes the rightmost digit (126 / 10 is 12).
-}
import Test.Hspec


sumDigits :: Int -> Int
sumDigits n = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "9" $ sumDigits 126 `shouldBe` 9
   it "13" $ sumDigits 49 `shouldBe` 13
   it "3" $ sumDigits 12 `shouldBe` 3
   it "9" $ sumDigits 126 `shouldBe` 9
   it "13" $ sumDigits 49 `shouldBe` 13
   it "3" $ sumDigits 12 `shouldBe` 3

