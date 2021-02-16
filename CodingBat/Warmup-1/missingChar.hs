{- From https://codingbat.com/prob/p190570
Given a non-empty string and an int n, return a new string where the char at index 
n has been removed. The value of n will be a valid index of a char in the original 
string (i.e. n will be in the range 0..str.length()-1 inclusive).
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


missingChar :: String -> Int -> String
missingChar str n = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"ktten\"" $
        missingChar "kitten" 1 `shouldBe` "ktten"
    it "\"itten\"" $
        missingChar "kitten" 0 `shouldBe` "itten"
    it "\"kittn\"" $
        missingChar "kitten" 4 `shouldBe` "kittn"
    it "\"i\"" $
        missingChar "Hi" 0 `shouldBe` "i"
    it "\"H\"" $
        missingChar "Hi" 1 `shouldBe` "H"
    it "\"ode\"" $
        missingChar "code" 0 `shouldBe` "ode"
    it "\"cde\"" $
        missingChar "code" 1 `shouldBe` "cde"
    it "\"coe\"" $
        missingChar "code" 2 `shouldBe` "coe"
    it "\"cod\"" $
        missingChar "code" 3 `shouldBe` "cod"
    it "\"chocolat\"" $
        missingChar "chocolate" 8 `shouldBe` "chocolat"
