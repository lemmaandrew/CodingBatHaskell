{- From https://codingbat.com/prob/p178318
Given a string, return the count of the number of times that a substring length 2 
appears in the string and also as the last 2 chars of the string, so \"hixxxhi\" yields 
1 (we won't count the end substring).
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


last2 :: String -> Int
last2 str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "1" $
        last2 "hixxhi" `shouldBe` 1
    it "1" $
        last2 "xaxxaxaxx" `shouldBe` 1
    it "2" $
        last2 "axxxaaxx" `shouldBe` 2
    it "3" $
        last2 "xxaxxaxxaxx" `shouldBe` 3
    it "0" $
        last2 "xaxaxaxx" `shouldBe` 0
    it "2" $
        last2 "xxxx" `shouldBe` 2
    it "1" $
        last2 "13121312" `shouldBe` 1
    it "1" $
        last2 "11212" `shouldBe` 1
    it "0" $
        last2 "13121311" `shouldBe` 0
    it "2" $
        last2 "1717171" `shouldBe` 2
    it "0" $
        last2 "hi" `shouldBe` 0
    it "0" $
        last2 "h" `shouldBe` 0
    it "0" $
        last2 "" `shouldBe` 0
