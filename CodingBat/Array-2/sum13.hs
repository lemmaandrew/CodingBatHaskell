{-From https://codingbat.com/prob/p127384
Return the sum of the numbers in the array, returning 0 for an empty array. Except the
number 13 is very unlucky, so it does not count and numbers that come immediately after
a 13 also do not count.
-}
import Test.Hspec


sum13 :: [Int] -> Int
sum13 nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "6" $ sum13 [1,2,2,1] `shouldBe` 6
   it "2" $ sum13 [1,1] `shouldBe` 2
   it "6" $ sum13 [1,2,2,1,13] `shouldBe` 6
   it "6" $ sum13 [1,2,2,1] `shouldBe` 6
   it "2" $ sum13 [1,1] `shouldBe` 2
   it "6" $ sum13 [1,2,2,1,13] `shouldBe` 6

