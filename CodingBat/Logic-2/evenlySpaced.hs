{- From https://codingbat.com/prob/p198700
Given three ints, a b c, one of them is small, one is medium and one is large. Return 
true if the three values are evenly spaced, so the difference between small and medium 
is the same as the difference between medium and large.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


evenlySpaced :: Int -> Int -> Int -> Bool
evenlySpaced a b c = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        evenlySpaced 2 4 6 `shouldBe` True
    it "True" $
        evenlySpaced 4 6 2 `shouldBe` True
    it "False" $
        evenlySpaced 4 6 3 `shouldBe` False
    it "True" $
        evenlySpaced 6 2 4 `shouldBe` True
    it "False" $
        evenlySpaced 6 2 8 `shouldBe` False
    it "True" $
        evenlySpaced 2 2 2 `shouldBe` True
    it "False" $
        evenlySpaced 2 2 3 `shouldBe` False
    it "True" $
        evenlySpaced 9 10 11 `shouldBe` True
    it "True" $
        evenlySpaced 10 9 11 `shouldBe` True
    it "False" $
        evenlySpaced 10 9 9 `shouldBe` False
    it "False" $
        evenlySpaced 2 4 4 `shouldBe` False
    it "False" $
        evenlySpaced 2 2 4 `shouldBe` False
    it "False" $
        evenlySpaced 3 6 12 `shouldBe` False
    it "False" $
        evenlySpaced 12 3 6 `shouldBe` False
