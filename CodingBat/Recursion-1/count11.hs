{- From https://codingbat.com/prob/p167015
Given a string, compute recursively (no loops) the number of \"11\" substrings in 
the string. The \"11\" substrings should not overlap.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


count11 :: String -> Int
count11 str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "2" $
        count11 "11abc11" `shouldBe` 2
    it "3" $
        count11 "abc11x11x11" `shouldBe` 3
    it "1" $
        count11 "111" `shouldBe` 1
    it "2" $
        count11 "1111" `shouldBe` 2
    it "0" $
        count11 "1" `shouldBe` 0
    it "0" $
        count11 "" `shouldBe` 0
    it "0" $
        count11 "hi" `shouldBe` 0
    it "4" $
        count11 "11x111x1111" `shouldBe` 4
    it "1" $
        count11 "1x111" `shouldBe` 1
    it "0" $
        count11 "1Hello1" `shouldBe` 0
    it "0" $
        count11 "Hello" `shouldBe` 0
