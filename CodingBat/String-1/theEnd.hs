{- From https://codingbat.com/prob/p162477
Given a string, return a string length 1 from its front, unless front is false, in 
which case return a string length 1 from its back. The string will be non-empty.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


theEnd :: String -> Bool -> String
theEnd str front = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"H\"" $
        theEnd "Hello" True `shouldBe` "H"
    it "\"o\"" $
        theEnd "Hello" False `shouldBe` "o"
    it "\"o\"" $
        theEnd "oh" True `shouldBe` "o"
    it "\"h\"" $
        theEnd "oh" False `shouldBe` "h"
    it "\"x\"" $
        theEnd "x" True `shouldBe` "x"
    it "\"x\"" $
        theEnd "x" False `shouldBe` "x"
    it "\"j\"" $
        theEnd "java" True `shouldBe` "j"
    it "\"e\"" $
        theEnd "chocolate" False `shouldBe` "e"
    it "\"1\"" $
        theEnd "1234" True `shouldBe` "1"
    it "\"e\"" $
        theEnd "code" False `shouldBe` "e"
