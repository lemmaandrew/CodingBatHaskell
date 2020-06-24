{-From https://codingbat.com/prob/p173469
Given an array of ints, compute recursively if the array contains somewhere a value followed
in the array by that value times 10. We'll use the convention of considering only the
part of the array that begins at the given index. In this way, a recursive call can
pass index+1 to move down the array. The initial call will pass in index as 0.
-}
import Test.Hspec


array220 :: [Int] -> Int -> Bool
array220 nums index = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ array220 [1,2,20] 0 `shouldBe` True
   it "True" $ array220 [3,30] 0 `shouldBe` True
   it "False" $ array220 [3] 0 `shouldBe` False
   it "True" $ array220 [1,2,20] 0 `shouldBe` True
   it "True" $ array220 [3,30] 0 `shouldBe` True
   it "False" $ array220 [3] 0 `shouldBe` False

