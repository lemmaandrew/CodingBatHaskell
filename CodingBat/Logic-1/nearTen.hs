{- From https://codingbat.com/prob/p193613
Given a non-negative number \"num\", return true if num is within 2 of a multiple 
of 10. Note: (a % b) is the remainder of dividing a by b, so (7 % 5) is 2. See also: 
Introduction to Mod
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


nearTen :: Int -> Bool
nearTen num = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        nearTen 12 `shouldBe` True
    it "False" $
        nearTen 17 `shouldBe` False
    it "True" $
        nearTen 19 `shouldBe` True
    it "True" $
        nearTen 31 `shouldBe` True
    it "False" $
        nearTen 6 `shouldBe` False
    it "True" $
        nearTen 10 `shouldBe` True
    it "True" $
        nearTen 11 `shouldBe` True
    it "True" $
        nearTen 21 `shouldBe` True
    it "True" $
        nearTen 22 `shouldBe` True
    it "False" $
        nearTen 23 `shouldBe` False
    it "False" $
        nearTen 54 `shouldBe` False
    it "False" $
        nearTen 155 `shouldBe` False
    it "True" $
        nearTen 158 `shouldBe` True
    it "False" $
        nearTen 3 `shouldBe` False
    it "True" $
        nearTen 1 `shouldBe` True
