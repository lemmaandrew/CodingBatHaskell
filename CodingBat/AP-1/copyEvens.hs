{- From https://codingbat.com/prob/p134174
Given an array of positive ints, return a new array of length \"count\" containing 
the first even numbers from the original array. The original array will contain at least 
\"count\" even numbers.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


copyEvens :: [Int] -> Int -> [Int]
copyEvens nums count = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "[2,4]" $
        copyEvens [3,2,4,5,8] 2 `shouldBe` [2,4]
    it "[2,4,8]" $
        copyEvens [3,2,4,5,8] 3 `shouldBe` [2,4,8]
    it "[6,2,4]" $
        copyEvens [6,1,2,4,5,8] 3 `shouldBe` [6,2,4]
    it "[6,2,4,8]" $
        copyEvens [6,1,2,4,5,8] 4 `shouldBe` [6,2,4,8]
    it "[4]" $
        copyEvens [3,1,4,1,5] 1 `shouldBe` [4]
    it "[2]" $
        copyEvens [2] 1 `shouldBe` [2]
    it "[6,2]" $
        copyEvens [6,2,4,8] 2 `shouldBe` [6,2]
    it "[6,2,4]" $
        copyEvens [6,2,4,8] 3 `shouldBe` [6,2,4]
    it "[6,2,4,8]" $
        copyEvens [6,2,4,8] 4 `shouldBe` [6,2,4,8]
    it "[8]" $
        copyEvens [1,8,4] 1 `shouldBe` [8]
    it "[8,4]" $
        copyEvens [1,8,4] 2 `shouldBe` [8,4]
    it "[2,8]" $
        copyEvens [2,8,4] 2 `shouldBe` [2,8]
