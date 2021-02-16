{- From https://codingbat.com/prob/p182873
Given 2 ints, a and b, return true if one if them is 10 or if their sum is 10.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


makes10 :: Int -> Int -> Bool
makes10 a b = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        makes10 9 10 `shouldBe` True
    it "False" $
        makes10 9 9 `shouldBe` False
    it "True" $
        makes10 1 9 `shouldBe` True
    it "True" $
        makes10 10 1 `shouldBe` True
    it "True" $
        makes10 10 10 `shouldBe` True
    it "True" $
        makes10 8 2 `shouldBe` True
    it "False" $
        makes10 8 3 `shouldBe` False
    it "True" $
        makes10 10 42 `shouldBe` True
    it "True" $
        makes10 12 (-2) `shouldBe` True
