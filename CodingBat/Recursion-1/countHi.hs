{- From https://codingbat.com/prob/p184029
Given a string, compute recursively (no loops) the number of times lowercase \"hi\" 
appears in the string.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


countHi :: String -> Int
countHi str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "1" $
        countHi "xxhixx" `shouldBe` 1
    it "2" $
        countHi "xhixhix" `shouldBe` 2
    it "1" $
        countHi "hi" `shouldBe` 1
    it "2" $
        countHi "hihih" `shouldBe` 2
    it "0" $
        countHi "h" `shouldBe` 0
    it "0" $
        countHi "" `shouldBe` 0
    it "4" $
        countHi "ihihihihih" `shouldBe` 4
    it "5" $
        countHi "ihihihihihi" `shouldBe` 5
    it "3" $
        countHi "hiAAhi12hi" `shouldBe` 3
    it "3" $
        countHi "xhixhxihihhhih" `shouldBe` 3
    it "1" $
        countHi "ship" `shouldBe` 1
