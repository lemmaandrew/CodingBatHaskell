{- From https://codingbat.com/prob/p180840
Given 2 int arrays, each length 2, return a new array length 4 containing all their 
elements.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


plusTwo :: [Int] -> [Int] -> [Int]
plusTwo a b = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "[1,2,3,4]" $
        plusTwo [1,2] [3,4] `shouldBe` [1,2,3,4]
    it "[4,4,2,2]" $
        plusTwo [4,4] [2,2] `shouldBe` [4,4,2,2]
    it "[9,2,3,4]" $
        plusTwo [9,2] [3,4] `shouldBe` [9,2,3,4]
