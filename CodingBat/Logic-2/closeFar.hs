{- From https://codingbat.com/prob/p138990
Given three ints, a b c, return true if one of b or c is \"close\" (differing from 
a by at most 1), while the other is \"far\", differing from both other values by 2 
or more. Note: Math.abs(num) computes the absolute value of a number.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


closeFar :: Int -> Int -> Int -> Bool
closeFar a b c = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        closeFar 1 2 10 `shouldBe` True
    it "False" $
        closeFar 1 2 3 `shouldBe` False
    it "True" $
        closeFar 4 1 3 `shouldBe` True
    it "False" $
        closeFar 4 5 3 `shouldBe` False
    it "False" $
        closeFar 4 3 5 `shouldBe` False
    it "True" $
        closeFar (-1) 10 0 `shouldBe` True
    it "True" $
        closeFar 0 (-1) 10 `shouldBe` True
    it "True" $
        closeFar 10 10 8 `shouldBe` True
    it "False" $
        closeFar 10 8 9 `shouldBe` False
    it "False" $
        closeFar 8 9 10 `shouldBe` False
    it "False" $
        closeFar 8 9 7 `shouldBe` False
    it "True" $
        closeFar 8 6 9 `shouldBe` True
