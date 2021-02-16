{- From https://codingbat.com/prob/p161642
Given a string, take the last char and return a new string with the last char added 
at the front and back, so \"cat\" yields \"tcatt\". The original string will be length 
1 or more.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


backAround :: String -> String
backAround str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"tcatt\"" $
        backAround "cat" `shouldBe` "tcatt"
    it "\"oHelloo\"" $
        backAround "Hello" `shouldBe` "oHelloo"
    it "\"aaa\"" $
        backAround "a" `shouldBe` "aaa"
    it "\"cabcc\"" $
        backAround "abc" `shouldBe` "cabcc"
    it "\"dreadd\"" $
        backAround "read" `shouldBe` "dreadd"
    it "\"obooo\"" $
        backAround "boo" `shouldBe` "obooo"
