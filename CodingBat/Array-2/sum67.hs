{- From https://codingbat.com/prob/p111327
Return the sum of the numbers in the array, except ignore sections of numbers starting 
with a 6 and extending to the next 7 (every 6 will be followed by at least one 7). Return 
0 for no numbers.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


sum67 :: [Int] -> Int
sum67 nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "5" $
        sum67 [1,2,2] `shouldBe` 5
    it "5" $
        sum67 [1,2,2,6,99,99,7] `shouldBe` 5
    it "4" $
        sum67 [1,1,6,7,2] `shouldBe` 4
    it "2" $
        sum67 [1,6,2,2,7,1,6,99,99,7] `shouldBe` 2
    it "2" $
        sum67 [1,6,2,6,2,7,1,6,99,99,7] `shouldBe` 2
    it "18" $
        sum67 [2,7,6,2,6,7,2,7] `shouldBe` 18
    it "9" $
        sum67 [2,7,6,2,6,2,7] `shouldBe` 9
    it "8" $
        sum67 [1,6,7,7] `shouldBe` 8
    it "8" $
        sum67 [6,7,1,6,7,7] `shouldBe` 8
    it "0" $
        sum67 [6,8,1,6,7] `shouldBe` 0
    it "0" $
        sum67 [] `shouldBe` 0
    it "11" $
        sum67 [6,7,11] `shouldBe` 11
    it "22" $
        sum67 [11,6,7,11] `shouldBe` 22
    it "11" $
        sum67 [2,2,6,7,7] `shouldBe` 11
