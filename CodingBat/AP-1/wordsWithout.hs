{- From https://codingbat.com/prob/p121236
Given an array of strings, return a new array without the strings that are equal 
to the target string. One approach is to count the occurrences of the target string, 
make a new array of the correct length, and then copy over the correct strings.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


wordsWithout :: [String] -> String -> [String]
wordsWithout words target = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "[\"b\",\"c\"]" $
        wordsWithout ["a","b","c","a"] "a" `shouldBe` ["b","c"]
    it "[\"a\",\"c\",\"a\"]" $
        wordsWithout ["a","b","c","a"] "b" `shouldBe` ["a","c","a"]
    it "[\"a\",\"b\",\"a\"]" $
        wordsWithout ["a","b","c","a"] "c" `shouldBe` ["a","b","a"]
    it "[\"c\",\"a\",\"a\"]" $
        wordsWithout ["b","c","a","a"] "b" `shouldBe` ["c","a","a"]
    it "[\"xx\",\"yyy\",\"yy\"]" $
        wordsWithout ["xx","yyy","x","yy","x"] "x" `shouldBe` ["xx","yyy","yy"]
    it "[\"xx\",\"yyy\",\"x\",\"x\"]" $
        wordsWithout ["xx","yyy","x","yy","x"] "yy" `shouldBe` ["xx","yyy","x","x"]
    it "[\"ab\",\"ac\"]" $
        wordsWithout ["aa","ab","ac","aa"] "aa" `shouldBe` ["ab","ac"]
