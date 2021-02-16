{- From https://codingbat.com/prob/p196441
Given a non-empty string and an int N, return the string made starting with char 
0, and then every Nth char of the string. So if N is 3, use char 0, 3, 6, ... and so 
on. N is 1 or more.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


everyNth :: String -> Int -> String
everyNth str n = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"Mrce\"" $
        everyNth "Miracle" 2 `shouldBe` "Mrce"
    it "\"aceg\"" $
        everyNth "abcdefg" 2 `shouldBe` "aceg"
    it "\"adg\"" $
        everyNth "abcdefg" 3 `shouldBe` "adg"
    it "\"Cca\"" $
        everyNth "Chocolate" 3 `shouldBe` "Cca"
    it "\"Ccas\"" $
        everyNth "Chocolates" 3 `shouldBe` "Ccas"
    it "\"Coe\"" $
        everyNth "Chocolates" 4 `shouldBe` "Coe"
    it "\"C\"" $
        everyNth "Chocolates" 100 `shouldBe` "C"
