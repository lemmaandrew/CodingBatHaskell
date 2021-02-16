{- From https://codingbat.com/prob/p136417
Given a string, consider the prefix string made of the first N chars of the string. 
Does that prefix string appear somewhere else in the string? Assume that the string is 
not empty and that N is in the range 1..str.length().
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


prefixAgain :: String -> Int -> Bool
prefixAgain str n = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        prefixAgain "abXYabc" 1 `shouldBe` True
    it "True" $
        prefixAgain "abXYabc" 2 `shouldBe` True
    it "False" $
        prefixAgain "abXYabc" 3 `shouldBe` False
    it "True" $
        prefixAgain "xyzxyxyxy" 2 `shouldBe` True
    it "False" $
        prefixAgain "xyzxyxyxy" 3 `shouldBe` False
    it "True" $
        prefixAgain "Hi12345Hi6789Hi10" 1 `shouldBe` True
    it "True" $
        prefixAgain "Hi12345Hi6789Hi10" 2 `shouldBe` True
    it "True" $
        prefixAgain "Hi12345Hi6789Hi10" 3 `shouldBe` True
    it "False" $
        prefixAgain "Hi12345Hi6789Hi10" 4 `shouldBe` False
    it "False" $
        prefixAgain "a" 1 `shouldBe` False
    it "True" $
        prefixAgain "aa" 1 `shouldBe` True
    it "False" $
        prefixAgain "ab" 1 `shouldBe` False
