{- From https://codingbat.com/prob/p148138
We have an array of heights, representing the altitude along a walking trail. Given 
start/end indexes into the array, return the sum of the changes for a walk beginning at the 
start index and ending at the end index. For example, with the heights {5, 3, 6, 7, 2} 
and start=2, end=4 yields a sum of 1 + 5 = 6. The start end end index will both be valid 
indexes into the array with start <= end.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


sumHeights :: [Int] -> Int -> Int -> Int
sumHeights heights start end = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "6" $
        sumHeights [5,3,6,7,2] 2 4 `shouldBe` 6
    it "2" $
        sumHeights [5,3,6,7,2] 0 1 `shouldBe` 2
    it "11" $
        sumHeights [5,3,6,7,2] 0 4 `shouldBe` 11
    it "0" $
        sumHeights [5,3,6,7,2] 1 1 `shouldBe` 0
    it "3" $
        sumHeights [1,2,3,4,5,4,3,2,10] 0 3 `shouldBe` 3
    it "11" $
        sumHeights [1,2,3,4,5,4,3,2,10] 4 8 `shouldBe` 11
    it "8" $
        sumHeights [1,2,3,4,5,4,3,2,10] 7 8 `shouldBe` 8
    it "0" $
        sumHeights [1,2,3,4,5,4,3,2,10] 8 8 `shouldBe` 0
    it "0" $
        sumHeights [1,2,3,4,5,4,3,2,10] 2 2 `shouldBe` 0
    it "3" $
        sumHeights [1,2,3,4,5,4,3,2,10] 3 6 `shouldBe` 3
    it "1" $
        sumHeights [10,8,7,7,7,6,7] 1 4 `shouldBe` 1
    it "2" $
        sumHeights [10,8,7,7,7,6,7] 1 5 `shouldBe` 2
