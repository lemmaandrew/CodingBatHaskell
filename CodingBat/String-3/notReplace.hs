{- From https://codingbat.com/prob/p154137
Given a string, return a string where every appearance of the lowercase word \"is\" 
has been replaced with \"is not\". The word \"is\" should not be immediately preceeded 
or followed by a letter -- so for example the \"is\" in \"this\" does not count. (Note: 
Character.isLetter(char) tests if a char is a letter.)
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


notReplace :: String -> String
notReplace str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"is not test\"" $
        notReplace "is test" `shouldBe` "is not test"
    it "\"is not-is not\"" $
        notReplace "is-is" `shouldBe` "is not-is not"
    it "\"This is not right\"" $
        notReplace "This is right" `shouldBe` "This is not right"
    it "\"This is not isabell\"" $
        notReplace "This is isabell" `shouldBe` "This is not isabell"
    it "\"\"" $
        notReplace "" `shouldBe` ""
    it "\"is not\"" $
        notReplace "is" `shouldBe` "is not"
    it "\"isis\"" $
        notReplace "isis" `shouldBe` "isis"
    it "\"Dis is not bliss is not\"" $
        notReplace "Dis is bliss is" `shouldBe` "Dis is not bliss is not"
    it "\"is not his\"" $
        notReplace "is his" `shouldBe` "is not his"
    it "\"xis yis\"" $
        notReplace "xis yis" `shouldBe` "xis yis"
    it "\"AAAis is not\"" $
        notReplace "AAAis is" `shouldBe` "AAAis is not"
