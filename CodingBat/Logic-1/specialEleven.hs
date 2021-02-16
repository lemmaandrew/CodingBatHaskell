{- From https://codingbat.com/prob/p100962
We'll say a number is special if it is a multiple of 11 or if it is one more than 
a multiple of 11. Return true if the given non-negative number is special. Use the 
% \"mod\" operator -- see Introduction to Mod
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


specialEleven :: Int -> Bool
specialEleven n = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        specialEleven 22 `shouldBe` True
    it "True" $
        specialEleven 23 `shouldBe` True
    it "False" $
        specialEleven 24 `shouldBe` False
    it "False" $
        specialEleven 21 `shouldBe` False
    it "True" $
        specialEleven 11 `shouldBe` True
    it "True" $
        specialEleven 12 `shouldBe` True
    it "False" $
        specialEleven 10 `shouldBe` False
    it "False" $
        specialEleven 9 `shouldBe` False
    it "False" $
        specialEleven 8 `shouldBe` False
    it "True" $
        specialEleven 0 `shouldBe` True
    it "True" $
        specialEleven 1 `shouldBe` True
    it "False" $
        specialEleven 2 `shouldBe` False
    it "True" $
        specialEleven 121 `shouldBe` True
    it "True" $
        specialEleven 122 `shouldBe` True
    it "False" $
        specialEleven 123 `shouldBe` False
    it "False" $
        specialEleven 46 `shouldBe` False
    it "False" $
        specialEleven 49 `shouldBe` False
    it "False" $
        specialEleven 52 `shouldBe` False
    it "False" $
        specialEleven 54 `shouldBe` False
    it "True" $
        specialEleven 55 `shouldBe` True
