{- From https://codingbat.com/prob/p115384
Given two int values, return whichever value is larger. However if the two values 
have the same remainder when divided by 5, then the return the smaller value. However, 
in all cases, if the two values are the same, return 0. Note: the % \"mod\" operator 
computes the remainder, e.g. 7 % 5 is 2.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


maxMod5 :: Int -> Int -> Int
maxMod5 a b = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "3" $
        maxMod5 2 3 `shouldBe` 3
    it "6" $
        maxMod5 6 2 `shouldBe` 6
    it "3" $
        maxMod5 3 2 `shouldBe` 3
    it "12" $
        maxMod5 8 12 `shouldBe` 12
    it "7" $
        maxMod5 7 12 `shouldBe` 7
    it "6" $
        maxMod5 11 6 `shouldBe` 6
    it "2" $
        maxMod5 2 7 `shouldBe` 2
    it "0" $
        maxMod5 7 7 `shouldBe` 0
    it "9" $
        maxMod5 9 1 `shouldBe` 9
    it "9" $
        maxMod5 9 14 `shouldBe` 9
    it "2" $
        maxMod5 1 2 `shouldBe` 2
