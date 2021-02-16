{- From https://codingbat.com/prob/p183592
Given a string, take the first 2 chars and return the string with the 2 chars added 
at both the front and back, so \"kitten\" yields\"kikittenki\". If the string length 
is less than 2, use whatever chars are there.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


front22 :: String -> String
front22 str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"kikittenki\"" $
        front22 "kitten" `shouldBe` "kikittenki"
    it "\"HaHaHa\"" $
        front22 "Ha" `shouldBe` "HaHaHa"
    it "\"ababcab\"" $
        front22 "abc" `shouldBe` "ababcab"
    it "\"ababab\"" $
        front22 "ab" `shouldBe` "ababab"
    it "\"aaa\"" $
        front22 "a" `shouldBe` "aaa"
    it "\"\"" $
        front22 "" `shouldBe` ""
    it "\"LoLogicLo\"" $
        front22 "Logic" `shouldBe` "LoLogicLo"
