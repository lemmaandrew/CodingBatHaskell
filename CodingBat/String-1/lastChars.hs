{- From https://codingbat.com/prob/p138183
Given 2 strings, a and b, return a new string made of the first char of a and the 
last char of b, so \"yo\" and \"java\" yields \"ya\". If either string is length 0, use 
'@' for its missing char.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


lastChars :: String -> String -> String
lastChars a b = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"ls\"" $
        lastChars "last" "chars" `shouldBe` "ls"
    it "\"ya\"" $
        lastChars "yo" "java" `shouldBe` "ya"
    it "\"h@\"" $
        lastChars "hi" "" `shouldBe` "h@"
    it "\"@o\"" $
        lastChars "" "hello" `shouldBe` "@o"
    it "\"@@\"" $
        lastChars "" "" `shouldBe` "@@"
    it "\"ki\"" $
        lastChars "kitten" "hi" `shouldBe` "ki"
    it "\"kp\"" $
        lastChars "k" "zip" `shouldBe` "kp"
    it "\"k@\"" $
        lastChars "kitten" "" `shouldBe` "k@"
    it "\"kp\"" $
        lastChars "kitten" "zip" `shouldBe` "kp"
