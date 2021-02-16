{- From https://codingbat.com/prob/p127384
Return the sum of the numbers in the array, returning 0 for an empty array. Except 
the number 13 is very unlucky, so it does not count and numbers that come immediately 
after a 13 also do not count.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


sum13 :: [Int] -> Int
sum13 nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "6" $
        sum13 [1,2,2,1] `shouldBe` 6
    it "2" $
        sum13 [1,1] `shouldBe` 2
    it "6" $
        sum13 [1,2,2,1,13] `shouldBe` 6
    it "4" $
        sum13 [1,2,13,2,1,13] `shouldBe` 4
    it "3" $
        sum13 [13,1,2,13,2,1,13] `shouldBe` 3
    it "0" $
        sum13 [] `shouldBe` 0
    it "0" $
        sum13 [13] `shouldBe` 0
    it "0" $
        sum13 [13,13] `shouldBe` 0
    it "0" $
        sum13 [13,0,13] `shouldBe` 0
    it "0" $
        sum13 [13,1,13] `shouldBe` 0
    it "14" $
        sum13 [5,7,2] `shouldBe` 14
    it "5" $
        sum13 [5,13,2] `shouldBe` 5
    it "0" $
        sum13 [0] `shouldBe` 0
    it "0" $
        sum13 [13,0] `shouldBe` 0
