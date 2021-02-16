{- From https://codingbat.com/prob/p123614
Return the number of times that the string \"code\" appears anywhere in the given 
string, except we'll accept any letter for the 'd', so \"cope\" and \"cooe\" count.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


countCode :: String -> Int
countCode str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "1" $
        countCode "aaacodebbb" `shouldBe` 1
    it "2" $
        countCode "codexxcode" `shouldBe` 2
    it "2" $
        countCode "cozexxcope" `shouldBe` 2
    it "1" $
        countCode "cozfxxcope" `shouldBe` 1
    it "1" $
        countCode "xxcozeyycop" `shouldBe` 1
    it "0" $
        countCode "cozcop" `shouldBe` 0
    it "0" $
        countCode "abcxyz" `shouldBe` 0
    it "1" $
        countCode "code" `shouldBe` 1
    it "0" $
        countCode "ode" `shouldBe` 0
    it "0" $
        countCode "c" `shouldBe` 0
    it "0" $
        countCode "" `shouldBe` 0
    it "3" $
        countCode "AAcodeBBcoleCCccoreDD" `shouldBe` 3
    it "2" $
        countCode "AAcodeBBcoleCCccorfDD" `shouldBe` 2
    it "3" $
        countCode "coAcodeBcoleccoreDD" `shouldBe` 3
