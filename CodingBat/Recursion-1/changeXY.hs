{- From https://codingbat.com/prob/p101372
Given a string, compute recursively (no loops) a new string where all the lowercase 
'x' chars have been changed to 'y' chars.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


changeXY :: String -> String
changeXY str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"codey\"" $
        changeXY "codex" `shouldBe` "codey"
    it "\"yyhiyy\"" $
        changeXY "xxhixx" `shouldBe` "yyhiyy"
    it "\"yhiyhiy\"" $
        changeXY "xhixhix" `shouldBe` "yhiyhiy"
    it "\"hiy\"" $
        changeXY "hiy" `shouldBe` "hiy"
    it "\"h\"" $
        changeXY "h" `shouldBe` "h"
    it "\"y\"" $
        changeXY "x" `shouldBe` "y"
    it "\"\"" $
        changeXY "" `shouldBe` ""
    it "\"yyy\"" $
        changeXY "xxx" `shouldBe` "yyy"
    it "\"yyhyyi\"" $
        changeXY "yyhxyi" `shouldBe` "yyhyyi"
    it "\"hihi\"" $
        changeXY "hihi" `shouldBe` "hihi"
