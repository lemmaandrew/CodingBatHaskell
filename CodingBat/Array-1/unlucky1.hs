{- From https://codingbat.com/prob/p197308
We'll say that a 1 immediately followed by a 3 in an array is an \"unlucky\" 1. Return 
true if the given array contains an unlucky 1 in the first 2 or last 2 positions in the 
array.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


unlucky1 :: [Int] -> Bool
unlucky1 nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        unlucky1 [1,3,4,5] `shouldBe` True
    it "True" $
        unlucky1 [2,1,3,4,5] `shouldBe` True
    it "False" $
        unlucky1 [1,1,1] `shouldBe` False
    it "True" $
        unlucky1 [1,3,1] `shouldBe` True
    it "True" $
        unlucky1 [1,1,3] `shouldBe` True
    it "False" $
        unlucky1 [1,2,3] `shouldBe` False
    it "False" $
        unlucky1 [3,3,3] `shouldBe` False
    it "True" $
        unlucky1 [1,3] `shouldBe` True
    it "False" $
        unlucky1 [1,4] `shouldBe` False
    it "False" $
        unlucky1 [1] `shouldBe` False
    it "False" $
        unlucky1 [] `shouldBe` False
    it "False" $
        unlucky1 [1,1,1,3,1] `shouldBe` False
    it "True" $
        unlucky1 [1,1,3,1,1] `shouldBe` True
    it "True" $
        unlucky1 [1,1,1,1,3] `shouldBe` True
    it "False" $
        unlucky1 [1,4,1,5] `shouldBe` False
    it "False" $
        unlucky1 [1,1,2,3] `shouldBe` False
    it "False" $
        unlucky1 [2,3,2,1] `shouldBe` False
    it "True" $
        unlucky1 [2,3,1,3] `shouldBe` True
    it "True" $
        unlucky1 [1,2,3,4,1,3] `shouldBe` True
