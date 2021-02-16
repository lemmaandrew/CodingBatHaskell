{- From https://codingbat.com/prob/p115967
Given a list of strings, return a list where each string has \"y\" added at its end, 
omitting any resulting strings that contain \"yy\" as a substring anywhere.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


noYY :: [String] -> [String]
noYY strings = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "[\"ay\",\"by\",\"cy\"]" $
        noYY ["a","b","c"] `shouldBe` ["ay","by","cy"]
    it "[\"ay\",\"by\"]" $
        noYY ["a","b","cy"] `shouldBe` ["ay","by"]
    it "[\"xxy\",\"yay\",\"zzy\"]" $
        noYY ["xx","ya","zz"] `shouldBe` ["xxy","yay","zzy"]
    it "[\"xxy\",\"zzy\"]" $
        noYY ["xx","yay","zz"] `shouldBe` ["xxy","zzy"]
    it "[\"zzzy\"]" $
        noYY ["yyx","y","zzz"] `shouldBe` ["zzzy"]
    it "[\"helloy\",\"therey\"]" $
        noYY ["hello","there"] `shouldBe` ["helloy","therey"]
    it "[\"yay\"]" $
        noYY ["ya"] `shouldBe` ["yay"]
    it "[]" $
        noYY [] `shouldBe` []
    it "[\"y\"]" $
        noYY [""] `shouldBe` ["y"]
    it "[\"xxy\",\"zzy\"]" $
        noYY ["xx","yy","zz"] `shouldBe` ["xxy","zzy"]
