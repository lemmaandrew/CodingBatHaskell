{- From https://codingbat.com/prob/p143900
Given a string, compute recursively the number of times lowercase \"hi\" appears 
in the string, however do not count \"hi\" that have an 'x' immedately before them.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


countHi2 :: String -> Int
countHi2 str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "1" $
        countHi2 "ahixhi" `shouldBe` 1
    it "2" $
        countHi2 "ahibhi" `shouldBe` 2
    it "0" $
        countHi2 "xhixhi" `shouldBe` 0
    it "1" $
        countHi2 "hixhi" `shouldBe` 1
    it "2" $
        countHi2 "hixhhi" `shouldBe` 2
    it "3" $
        countHi2 "hihihi" `shouldBe` 3
    it "3" $
        countHi2 "hihihix" `shouldBe` 3
    it "2" $
        countHi2 "xhihihix" `shouldBe` 2
    it "0" $
        countHi2 "xxhi" `shouldBe` 0
    it "1" $
        countHi2 "hixxhi" `shouldBe` 1
    it "1" $
        countHi2 "hi" `shouldBe` 1
    it "0" $
        countHi2 "xxxx" `shouldBe` 0
    it "0" $
        countHi2 "h" `shouldBe` 0
    it "0" $
        countHi2 "x" `shouldBe` 0
    it "0" $
        countHi2 "" `shouldBe` 0
    it "1" $
        countHi2 "Hellohi" `shouldBe` 1
