{- From https://codingbat.com/prob/p155405
Given n>=0, create an array length n*n with the following pattern, shown here for 
n=3 : {0, 0, 1,    0, 2, 1,    3, 2, 1} (spaces added to show the 3 groups).
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


squareUp :: Int -> [Int]
squareUp n = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "[0,0,1,0,2,1,3,2,1]" $
        squareUp 3 `shouldBe` [0,0,1,0,2,1,3,2,1]
    it "[0,1,2,1]" $
        squareUp 2 `shouldBe` [0,1,2,1]
    it "[0,0,0,1,0,0,2,1,0,3,2,1,4,3,2,1]" $
        squareUp 4 `shouldBe` [0,0,0,1,0,0,2,1,0,3,2,1,4,3,2,1]
    it "[1]" $
        squareUp 1 `shouldBe` [1]
    it "[]" $
        squareUp 0 `shouldBe` []
    it "[0,0,0,0,0,1,0,0,0,0,2,1,0,0,0,3,2,1,0,0,4,3,2,1,0,5,4,3,2,1,6,5,4,3,2,1]" $
        squareUp 6 `shouldBe` [0,0,0,0,0,1,0,0,0,0,2,1,0,0,0,3,2,1,0,0,4,3,2,1,0,5,4,3,2,1,6,5,4,3,2,1]
