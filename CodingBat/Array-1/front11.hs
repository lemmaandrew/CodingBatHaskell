{- From https://codingbat.com/prob/p128270
Given 2 int arrays, a and b, of any length, return a new array with the first element 
of each array. If either array is length 0, ignore that array.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


front11 :: [Int] -> [Int] -> [Int]
front11 a b = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "[1,7]" $
        front11 [1,2,3] [7,9,8] `shouldBe` [1,7]
    it "[1,2]" $
        front11 [1] [2] `shouldBe` [1,2]
    it "[1]" $
        front11 [1,7] [] `shouldBe` [1]
    it "[2]" $
        front11 [] [2,8] `shouldBe` [2]
    it "[]" $
        front11 [] [] `shouldBe` []
    it "[3,1]" $
        front11 [3] [1,4,1,9] `shouldBe` [3,1]
    it "[1]" $
        front11 [1,4,1,9] [] `shouldBe` [1]
