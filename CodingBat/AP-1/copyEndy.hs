{- From https://codingbat.com/prob/p130124
We'll say that a positive int n is \"endy\" if it is in the range 0..10 or 90..100 
(inclusive). Given an array of positive ints, return a new array of length \"count\" containing 
the first endy numbers from the original array. Decompose out a separate isEndy(int 
n) method to test if a number is endy. The original array will contain at least \"count\" 
endy numbers.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


copyEndy :: [Int] -> Int -> [Int]
copyEndy nums count = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "[9,90]" $
        copyEndy [9,11,90,22,6] 2 `shouldBe` [9,90]
    it "[9,90,6]" $
        copyEndy [9,11,90,22,6] 3 `shouldBe` [9,90,6]
    it "[1,1]" $
        copyEndy [12,1,1,13,0,20] 2 `shouldBe` [1,1]
    it "[1,1,0]" $
        copyEndy [12,1,1,13,0,20] 3 `shouldBe` [1,1,0]
    it "[0]" $
        copyEndy [0] 1 `shouldBe` [0]
    it "[10,90]" $
        copyEndy [10,11,90] 2 `shouldBe` [10,90]
    it "[90,100]" $
        copyEndy [90,22,100] 2 `shouldBe` [90,100]
    it "[10]" $
        copyEndy [12,11,10,89,101,4] 1 `shouldBe` [10]
    it "[2,2]" $
        copyEndy [13,2,2,0] 2 `shouldBe` [2,2]
    it "[2,2,0]" $
        copyEndy [13,2,2,0] 3 `shouldBe` [2,2,0]
    it "[2,2]" $
        copyEndy [13,2,13,2,0,30] 2 `shouldBe` [2,2]
    it "[2,2,0]" $
        copyEndy [13,2,13,2,0,30] 3 `shouldBe` [2,2,0]
