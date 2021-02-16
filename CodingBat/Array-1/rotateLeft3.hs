{- From https://codingbat.com/prob/p185139
Given an array of ints length 3, return an array with the elements \"rotated left\" 
so {1, 2, 3} yields {2, 3, 1}.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


rotateLeft3 :: [Int] -> [Int]
rotateLeft3 nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "[2,3,1]" $
        rotateLeft3 [1,2,3] `shouldBe` [2,3,1]
    it "[11,9,5]" $
        rotateLeft3 [5,11,9] `shouldBe` [11,9,5]
    it "[0,0,7]" $
        rotateLeft3 [7,0,0] `shouldBe` [0,0,7]
    it "[2,1,1]" $
        rotateLeft3 [1,2,1] `shouldBe` [2,1,1]
    it "[0,1,0]" $
        rotateLeft3 [0,0,1] `shouldBe` [0,1,0]
