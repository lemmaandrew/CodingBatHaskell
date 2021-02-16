{- From https://codingbat.com/prob/p135988
Given an array of ints, compute recursively the number of times that the value 11 
appears in the array. We'll use the convention of considering only the part of the array 
that begins at the given index. In this way, a recursive call can pass index+1 to move 
down the array. The initial call will pass in index as 0.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


array11 :: [Int] -> Int -> Int
array11 nums index = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "1" $
        array11 [1,2,11] 0 `shouldBe` 1
    it "2" $
        array11 [11,11] 0 `shouldBe` 2
    it "0" $
        array11 [1,2,3,4] 0 `shouldBe` 0
    it "3" $
        array11 [1,11,3,11,11] 0 `shouldBe` 3
    it "1" $
        array11 [11] 0 `shouldBe` 1
    it "0" $
        array11 [1] 0 `shouldBe` 0
    it "0" $
        array11 [] 0 `shouldBe` 0
    it "2" $
        array11 [11,2,3,4,11,5] 0 `shouldBe` 2
    it "2" $
        array11 [11,5,11] 0 `shouldBe` 2
