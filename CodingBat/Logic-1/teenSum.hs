{- From https://codingbat.com/prob/p178728
Given 2 ints, a and b, return their sum. However, \"teen\" values in the range 13..19 
inclusive, are extra lucky. So if either value is a teen, just return 19.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


teenSum :: Int -> Int -> Int
teenSum a b = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "7" $
        teenSum 3 4 `shouldBe` 7
    it "19" $
        teenSum 10 13 `shouldBe` 19
    it "19" $
        teenSum 13 2 `shouldBe` 19
    it "19" $
        teenSum 3 19 `shouldBe` 19
    it "19" $
        teenSum 13 13 `shouldBe` 19
    it "20" $
        teenSum 10 10 `shouldBe` 20
    it "19" $
        teenSum 6 14 `shouldBe` 19
    it "19" $
        teenSum 15 2 `shouldBe` 19
    it "19" $
        teenSum 19 19 `shouldBe` 19
    it "19" $
        teenSum 19 20 `shouldBe` 19
    it "19" $
        teenSum 2 18 `shouldBe` 19
    it "16" $
        teenSum 12 4 `shouldBe` 16
    it "22" $
        teenSum 2 20 `shouldBe` 22
    it "19" $
        teenSum 2 17 `shouldBe` 19
    it "19" $
        teenSum 2 16 `shouldBe` 19
    it "13" $
        teenSum 6 7 `shouldBe` 13
