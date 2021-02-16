{- From https://codingbat.com/prob/p110019
Given an array of ints, return the number of times that two 6's are next to each 
other in the array. Also count instances where the second \"6\" is actually a 7.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


array667 :: [Int] -> Int
array667 nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "1" $
        array667 [6,6,2] `shouldBe` 1
    it "1" $
        array667 [6,6,2,6] `shouldBe` 1
    it "1" $
        array667 [6,7,2,6] `shouldBe` 1
    it "2" $
        array667 [6,6,2,6,7] `shouldBe` 2
    it "0" $
        array667 [1,6,3] `shouldBe` 0
    it "0" $
        array667 [6,1] `shouldBe` 0
    it "0" $
        array667 [] `shouldBe` 0
    it "1" $
        array667 [3,6,7,6] `shouldBe` 1
    it "2" $
        array667 [3,6,6,7] `shouldBe` 2
    it "1" $
        array667 [6,3,6,6] `shouldBe` 1
    it "2" $
        array667 [6,7,6,6] `shouldBe` 2
    it "0" $
        array667 [1,2,3,5,6] `shouldBe` 0
    it "1" $
        array667 [1,2,3,6,6] `shouldBe` 1
