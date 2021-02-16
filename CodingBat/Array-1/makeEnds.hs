{- From https://codingbat.com/prob/p101230
Given an array of ints, return a new array length 2 containing the first and last 
elements from the original array. The original array will be length 1 or more.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


makeEnds :: [Int] -> [Int]
makeEnds nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "[1,3]" $
        makeEnds [1,2,3] `shouldBe` [1,3]
    it "[1,4]" $
        makeEnds [1,2,3,4] `shouldBe` [1,4]
    it "[7,2]" $
        makeEnds [7,4,6,2] `shouldBe` [7,2]
    it "[1,3]" $
        makeEnds [1,2,2,2,2,2,2,3] `shouldBe` [1,3]
    it "[7,4]" $
        makeEnds [7,4] `shouldBe` [7,4]
    it "[7,7]" $
        makeEnds [7] `shouldBe` [7,7]
    it "[5,9]" $
        makeEnds [5,2,9] `shouldBe` [5,9]
    it "[2,1]" $
        makeEnds [2,3,4,1] `shouldBe` [2,1]
