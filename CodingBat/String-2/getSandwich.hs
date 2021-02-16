{- From https://codingbat.com/prob/p129952
A sandwich is two pieces of bread with something in between. Return the string that 
is between the first and last appearance of \"bread\" in the given string, or return 
the empty string \"\" if there are not two pieces of bread.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


getSandwich :: String -> String
getSandwich str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"jam\"" $
        getSandwich "breadjambread" `shouldBe` "jam"
    it "\"jam\"" $
        getSandwich "xxbreadjambreadyy" `shouldBe` "jam"
    it "\"\"" $
        getSandwich "xxbreadyy" `shouldBe` ""
    it "\"breadjam\"" $
        getSandwich "xxbreadbreadjambreadyy" `shouldBe` "breadjam"
    it "\"A\"" $
        getSandwich "breadAbread" `shouldBe` "A"
    it "\"\"" $
        getSandwich "breadbread" `shouldBe` ""
    it "\"\"" $
        getSandwich "abcbreaz" `shouldBe` ""
    it "\"\"" $
        getSandwich "xyz" `shouldBe` ""
    it "\"\"" $
        getSandwich "" `shouldBe` ""
    it "\"breax\"" $
        getSandwich "breadbreaxbread" `shouldBe` "breax"
    it "\"y\"" $
        getSandwich "breaxbreadybread" `shouldBe` "y"
    it "\"breadbread\"" $
        getSandwich "breadbreadbreadbread" `shouldBe` "breadbread"
