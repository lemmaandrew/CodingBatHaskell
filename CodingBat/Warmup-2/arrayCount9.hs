{- From https://codingbat.com/prob/p184031
Given an array of ints, return the number of 9's in the array.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


arrayCount9 :: [Int] -> Int
arrayCount9 nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "1" $
        arrayCount9 [1,2,9] `shouldBe` 1
    it "2" $
        arrayCount9 [1,9,9] `shouldBe` 2
    it "3" $
        arrayCount9 [1,9,9,3,9] `shouldBe` 3
    it "0" $
        arrayCount9 [1,2,3] `shouldBe` 0
    it "0" $
        arrayCount9 [] `shouldBe` 0
    it "0" $
        arrayCount9 [4,2,4,3,1] `shouldBe` 0
    it "1" $
        arrayCount9 [9,2,4,3,1] `shouldBe` 1
