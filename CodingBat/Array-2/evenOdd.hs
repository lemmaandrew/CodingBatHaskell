{- From https://codingbat.com/prob/p105771
Return an array that contains the exact same numbers as the given array, but rearranged 
so that all the even numbers come before all the odd numbers. Other than that, the 
numbers can be in any order. You may modify and return the given array, or make a new array.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


evenOdd :: [Int] -> [Int]
evenOdd nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "[0,0,0,1,1,1,1]" $
        evenOdd [1,0,1,0,0,1,1] `shouldBe` [0,0,0,1,1,1,1]
    it "[2,3,3]" $
        evenOdd [3,3,2] `shouldBe` [2,3,3]
    it "[2,2,2]" $
        evenOdd [2,2,2] `shouldBe` [2,2,2]
    it "[2,2,3]" $
        evenOdd [3,2,2] `shouldBe` [2,2,3]
    it "[0,0,1,1,1]" $
        evenOdd [1,1,0,1,0] `shouldBe` [0,0,1,1,1]
    it "[1]" $
        evenOdd [1] `shouldBe` [1]
    it "[2,1]" $
        evenOdd [1,2] `shouldBe` [2,1]
    it "[2,1]" $
        evenOdd [2,1] `shouldBe` [2,1]
    it "[]" $
        evenOdd [] `shouldBe` []
