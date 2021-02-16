{- From https://codingbat.com/prob/p183837
Given an array of strings, return a new array containing the first N strings. N will 
be in the range 1..length.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


wordsFront :: [String] -> Int -> [String]
wordsFront words n = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "[\"a\"]" $
        wordsFront ["a","b","c","d"] 1 `shouldBe` ["a"]
    it "[\"a\",\"b\"]" $
        wordsFront ["a","b","c","d"] 2 `shouldBe` ["a","b"]
    it "[\"a\",\"b\",\"c\"]" $
        wordsFront ["a","b","c","d"] 3 `shouldBe` ["a","b","c"]
    it "[\"a\",\"b\",\"c\",\"d\"]" $
        wordsFront ["a","b","c","d"] 4 `shouldBe` ["a","b","c","d"]
    it "[\"Hi\"]" $
        wordsFront ["Hi","There"] 1 `shouldBe` ["Hi"]
    it "[\"Hi\",\"There\"]" $
        wordsFront ["Hi","There"] 2 `shouldBe` ["Hi","There"]
