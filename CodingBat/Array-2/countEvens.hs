{- From https://codingbat.com/prob/p162010
Return the number of even ints in the given array. Note: the % \"mod\" operator computes 
the remainder, e.g. 5 % 2 is 1.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


countEvens :: [Int] -> Int
countEvens nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "3" $
        countEvens [2,1,2,3,4] `shouldBe` 3
    it "3" $
        countEvens [2,2,0] `shouldBe` 3
    it "0" $
        countEvens [1,3,5] `shouldBe` 0
    it "0" $
        countEvens [] `shouldBe` 0
    it "1" $
        countEvens [11,9,0,1] `shouldBe` 1
    it "2" $
        countEvens [2,11,9,0] `shouldBe` 2
    it "1" $
        countEvens [2] `shouldBe` 1
    it "2" $
        countEvens [2,5,12] `shouldBe` 2
