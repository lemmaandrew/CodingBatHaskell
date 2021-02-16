{- From https://codingbat.com/prob/p179196
Given three ints, a b c, return true if one of them is 10 or more less than one of 
the others.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


lessBy10 :: Int -> Int -> Int -> Bool
lessBy10 a b c = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        lessBy10 1 7 11 `shouldBe` True
    it "False" $
        lessBy10 1 7 10 `shouldBe` False
    it "True" $
        lessBy10 11 1 7 `shouldBe` True
    it "False" $
        lessBy10 10 7 1 `shouldBe` False
    it "True" $
        lessBy10 (-10) 2 2 `shouldBe` True
    it "False" $
        lessBy10 2 11 11 `shouldBe` False
    it "True" $
        lessBy10 3 3 30 `shouldBe` True
    it "False" $
        lessBy10 3 3 3 `shouldBe` False
    it "True" $
        lessBy10 10 1 11 `shouldBe` True
    it "True" $
        lessBy10 10 11 1 `shouldBe` True
    it "False" $
        lessBy10 10 11 2 `shouldBe` False
    it "True" $
        lessBy10 3 30 3 `shouldBe` True
    it "True" $
        lessBy10 2 2 (-8) `shouldBe` True
    it "True" $
        lessBy10 2 8 12 `shouldBe` True
