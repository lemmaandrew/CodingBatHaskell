{- From https://codingbat.com/prob/p142270
Given a string and a non-negative int n, return a larger string that is n copies 
of the original string.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


stringTimes :: String -> Int -> String
stringTimes str n = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"HiHi\"" $
        stringTimes "Hi" 2 `shouldBe` "HiHi"
    it "\"HiHiHi\"" $
        stringTimes "Hi" 3 `shouldBe` "HiHiHi"
    it "\"Hi\"" $
        stringTimes "Hi" 1 `shouldBe` "Hi"
    it "\"\"" $
        stringTimes "Hi" 0 `shouldBe` ""
    it "\"HiHiHiHiHi\"" $
        stringTimes "Hi" 5 `shouldBe` "HiHiHiHiHi"
    it "\"Oh Boy!Oh Boy!\"" $
        stringTimes "Oh Boy!" 2 `shouldBe` "Oh Boy!Oh Boy!"
    it "\"xxxx\"" $
        stringTimes "x" 4 `shouldBe` "xxxx"
    it "\"\"" $
        stringTimes "" 4 `shouldBe` ""
    it "\"codecode\"" $
        stringTimes "code" 2 `shouldBe` "codecode"
    it "\"codecodecode\"" $
        stringTimes "code" 3 `shouldBe` "codecodecode"
