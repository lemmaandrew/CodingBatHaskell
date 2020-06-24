{-From https://codingbat.com/prob/p183837
Given an array of strings, return a new array containing the first N strings. N will
be in the range 1..length.
-}
import Test.Hspec


wordsFront :: [String] -> Int -> [String]
wordsFront words n = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "[\"a\"]" $ wordsFront ["a","b","c","d"] 1 `shouldBe` ["a"]
   it "[\"a\",\"b\"]" $ wordsFront ["a","b","c","d"] 2 `shouldBe` ["a","b"]
   it "[\"a\",\"b\",\"c\"]" $ wordsFront ["a","b","c","d"] 3 `shouldBe` ["a","b","c"]
   it "[\"a\"]" $ wordsFront ["a","b","c","d"] 1 `shouldBe` ["a"]
   it "[\"a\",\"b\"]" $ wordsFront ["a","b","c","d"] 2 `shouldBe` ["a","b"]
   it "[\"a\",\"b\",\"c\"]" $ wordsFront ["a","b","c","d"] 3 `shouldBe` ["a","b","c"]

