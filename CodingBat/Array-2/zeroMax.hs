{- From https://codingbat.com/prob/p187050
Return a version of the given array where each zero value in the array is replaced 
by the largest odd value to the right of the zero in the array. If there is no odd 
value to the right of the zero, leave the zero as a zero.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


zeroMax :: [Int] -> [Int]
zeroMax nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "[5,5,3,3]" $
        zeroMax [0,5,0,3] `shouldBe` [5,5,3,3]
    it "[3,4,3,3]" $
        zeroMax [0,4,0,3] `shouldBe` [3,4,3,3]
    it "[1,1,0]" $
        zeroMax [0,1,0] `shouldBe` [1,1,0]
    it "[5,1,5]" $
        zeroMax [0,1,5] `shouldBe` [5,1,5]
    it "[0,2,0]" $
        zeroMax [0,2,0] `shouldBe` [0,2,0]
    it "[1]" $
        zeroMax [1] `shouldBe` [1]
    it "[0]" $
        zeroMax [0] `shouldBe` [0]
    it "[]" $
        zeroMax [] `shouldBe` []
    it "[7,3,4,3,0,2]" $
        zeroMax [7,0,4,3,0,2] `shouldBe` [7,3,4,3,0,2]
    it "[7,3,4,3,1,1]" $
        zeroMax [7,0,4,3,0,1] `shouldBe` [7,3,4,3,1,1]
    it "[7,3,4,3,0,0]" $
        zeroMax [7,0,4,3,0,0] `shouldBe` [7,3,4,3,0,0]
    it "[7,7,1,7,7,7]" $
        zeroMax [7,0,1,0,0,7] `shouldBe` [7,7,1,7,7,7]
