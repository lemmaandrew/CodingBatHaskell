{-From https://codingbat.com/prob/p154669
Given n of 1 or more, return the factorial of n, which is n * (n-1) * (n-2) ... 1.
Compute the result recursively (without loops).
-}
import Test.Hspec


factorial :: Int -> Int
factorial n = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "1" $ factorial 1 `shouldBe` 1
   it "2" $ factorial 2 `shouldBe` 2
   it "6" $ factorial 3 `shouldBe` 6
   it "1" $ factorial 1 `shouldBe` 1
   it "2" $ factorial 2 `shouldBe` 2
   it "6" $ factorial 3 `shouldBe` 6

