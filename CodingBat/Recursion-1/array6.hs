{-From https://codingbat.com/prob/p108997
Given an array of ints, compute recursively if the array contains a 6. We'll use the
convention of considering only the part of the array that begins at the given index. In
this way, a recursive call can pass index+1 to move down the array. The initial call
will pass in index as 0.
-}
import Test.Hspec


array6 :: [Int] -> Int -> Boolean
array6 nums index = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ array6 [1, 6, 4] 0 `shouldBe` true
   it "false" $ array6 [1, 4] 0 `shouldBe` false
   it "true" $ array6 [6] 0 `shouldBe` true

