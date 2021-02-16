{- From https://codingbat.com/prob/p184496
Given a list of strings, return a list of the strings, omitting any string length 
3 or 4.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


no34 :: [String] -> [String]
no34 strings = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "[\"a\",\"bb\"]" $
        no34 ["a","bb","ccc"] `shouldBe` ["a","bb"]
    it "[\"a\",\"bb\"]" $
        no34 ["a","bb","ccc","dddd"] `shouldBe` ["a","bb"]
    it "[\"apple\"]" $
        no34 ["ccc","dddd","apple"] `shouldBe` ["apple"]
    it "[]" $
        no34 ["this","not","too","long"] `shouldBe` []
    it "[\"a\",\"xx\"]" $
        no34 ["a","bbb","cccc","xx"] `shouldBe` ["a","xx"]
    it "[\"xxxxxxx\"]" $
        no34 ["dddd","ddd","xxxxxxx"] `shouldBe` ["xxxxxxx"]
    it "[]" $
        no34 [] `shouldBe` []
    it "[\"\"]" $
        no34 [""] `shouldBe` [""]
    it "[\"empty\",\"\",\"empty\"]" $
        no34 ["empty","","empty"] `shouldBe` ["empty","","empty"]
    it "[\"a\"]" $
        no34 ["a"] `shouldBe` ["a"]
    it "[\"*****\"]" $
        no34 ["aaaa","bbb","*****","333"] `shouldBe` ["*****"]
