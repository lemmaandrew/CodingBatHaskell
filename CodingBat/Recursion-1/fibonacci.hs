{-From https://codingbat.com/prob/p120015
The fibonacci sequence is a famous bit of mathematics, and it happens to have a recursive
definition. The first two values in the sequence are 0 and 1 (essentially 2 base cases).
Each subsequent value is the sum of the previous two values, so the whole sequence is:
0, 1, 1, 2, 3, 5, 8, 13, 21 and so on. Define a recursive fibonacci(n) method that
returns the nth fibonacci number, with n=0 representing the start of the sequence.
-}
import Test.Hspec


fibonacci :: Int -> Int
fibonacci n = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "0" $ fibonacci 0 `shouldBe` 0
   it "1" $ fibonacci 1 `shouldBe` 1
   it "1" $ fibonacci 2 `shouldBe` 1

