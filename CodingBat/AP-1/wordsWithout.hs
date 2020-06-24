{-From https://codingbat.com/prob/p121236
Given an array of strings, return a new array without the strings that are equal to the
target string. One approach is to count the occurrences of the target string, make a new
array of the correct length, and then copy over the correct strings.
-}
import Test.Hspec


wordsWithout :: [String] -> String -> [String]
wordsWithout words target = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "[\"b\",\"c\"]" $ wordsWithout ["a","b","c","a"] "a" `shouldBe` ["b","c"]
   it "[\"a\",\"c\",\"a\"]" $ wordsWithout ["a","b","c","a"] "b" `shouldBe` ["a","c","a"]
   it "[\"a\",\"b\",\"a\"]" $ wordsWithout ["a","b","c","a"] "c" `shouldBe` ["a","b","a"]

