{- From https://codingbat.com/prob/p109537
Start with 2 int arrays, a and b, each length 2. Consider the sum of the values in 
each array. Return the array which has the largest sum. In event of a tie, return a.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


biggerTwo :: [Int] -> [Int] -> [Int]
biggerTwo a b = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "[3,4]" $
        biggerTwo [1,2] [3,4] `shouldBe` [3,4]
    it "[3,4]" $
        biggerTwo [3,4] [1,2] `shouldBe` [3,4]
    it "[1,2]" $
        biggerTwo [1,1] [1,2] `shouldBe` [1,2]
    it "[2,1]" $
        biggerTwo [2,1] [1,1] `shouldBe` [2,1]
    it "[2,2]" $
        biggerTwo [2,2] [1,3] `shouldBe` [2,2]
    it "[1,3]" $
        biggerTwo [1,3] [2,2] `shouldBe` [1,3]
    it "[6,7]" $
        biggerTwo [6,7] [3,1] `shouldBe` [6,7]
