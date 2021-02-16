{- From https://codingbat.com/prob/p137274
Given a list of integers, return a list of those numbers, omitting any that are between 
13 and 19 inclusive.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


noTeen :: [Integer] -> [Integer]
noTeen nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "[12,20]" $
        noTeen [12,13,19,20] `shouldBe` [12,20]
    it "[1,1]" $
        noTeen [1,14,1] `shouldBe` [1,1]
    it "[]" $
        noTeen [15] `shouldBe` []
    it "[(-15)]" $
        noTeen [(-15)] `shouldBe` [(-15)]
    it "[]" $
        noTeen [] `shouldBe` []
    it "[0,1,2,(-3)]" $
        noTeen [0,1,2,(-3)] `shouldBe` [0,1,2,(-3)]
    it "[21]" $
        noTeen [15,17,19,21,19] `shouldBe` [21]
    it "[(-16),2,3,25]" $
        noTeen [(-16),2,15,3,16,25] `shouldBe` [(-16),2,3,25]
