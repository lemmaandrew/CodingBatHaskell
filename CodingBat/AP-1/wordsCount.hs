{- From https://codingbat.com/prob/p124620
Given an array of strings, return the count of the number of strings with the given 
length.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


wordsCount :: [String] -> Int -> Int
wordsCount words len = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "2" $
        wordsCount ["a","bb","b","ccc"] 1 `shouldBe` 2
    it "1" $
        wordsCount ["a","bb","b","ccc"] 3 `shouldBe` 1
    it "0" $
        wordsCount ["a","bb","b","ccc"] 4 `shouldBe` 0
    it "2" $
        wordsCount ["xx","yyy","x","yy","z"] 1 `shouldBe` 2
    it "2" $
        wordsCount ["xx","yyy","x","yy","z"] 2 `shouldBe` 2
    it "1" $
        wordsCount ["xx","yyy","x","yy","z"] 3 `shouldBe` 1
