{-From https://codingbat.com/prob/p183407
Given an array of strings, return a new List (e.g. an ArrayList) where all the strings
of the given length are omitted. See wordsWithout() below which is more difficult because
it uses arrays.
-}
import Test.Hspec


wordsWithoutList :: [String] -> Int -> [String]
wordsWithoutList words len = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "[\"bb\",\"ccc\"]" $ wordsWithoutList ["a","bb","b","ccc"] 1 `shouldBe` ["bb","ccc"]
   it "[\"a\",\"bb\",\"b\"]" $ wordsWithoutList ["a","bb","b","ccc"] 3 `shouldBe` ["a","bb","b"]
   it "[\"a\",\"bb\",\"b\",\"ccc\"]" $ wordsWithoutList ["a","bb","b","ccc"] 4 `shouldBe` ["a","bb","b","ccc"]

