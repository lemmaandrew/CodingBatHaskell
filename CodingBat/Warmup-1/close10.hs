{-From https://codingbat.com/prob/p172021
Given 2 int values, return whichever value is nearest to the value 10, or return 0 in
the event of a tie. Note that Math.abs(n) returns the absolute value of a number.
-}
import Test.Hspec


close10 :: Int -> Int -> Int
close10 a b = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "8" $ close10 8 13 `shouldBe` 8
   it "8" $ close10 13 8 `shouldBe` 8
   it "0" $ close10 13 7 `shouldBe` 0
   it "8" $ close10 8 13 `shouldBe` 8
   it "8" $ close10 13 8 `shouldBe` 8
   it "0" $ close10 13 7 `shouldBe` 0

