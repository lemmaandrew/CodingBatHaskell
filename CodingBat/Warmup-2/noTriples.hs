{- From https://codingbat.com/prob/p170221
Given an array of ints, we'll say that a triple is a value appearing 3 times in a 
row in the array. Return true if the array does not contain any triples.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


noTriples :: [Int] -> Bool
noTriples nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        noTriples [1,1,2,2,1] `shouldBe` True
    it "False" $
        noTriples [1,1,2,2,2,1] `shouldBe` False
    it "False" $
        noTriples [1,1,1,2,2,2,1] `shouldBe` False
    it "True" $
        noTriples [1,1,2,2,1,2,1] `shouldBe` True
    it "True" $
        noTriples [1,2,1] `shouldBe` True
    it "False" $
        noTriples [1,1,1] `shouldBe` False
    it "True" $
        noTriples [1,1] `shouldBe` True
    it "True" $
        noTriples [1] `shouldBe` True
    it "True" $
        noTriples [] `shouldBe` True
