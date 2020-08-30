{-From https://codingbat.com/prob/p117630
The classic word-count algorithm: given an array of strings, return a Map<String, Integer>
with a key for each different string, with the value the number of times that string
appears in the array.
-}
import Test.Hspec
import qualified Data.Map.Strict as Map


wordCount :: [String] -> Map.Map String Integer
wordCount strings = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "fromList [(\"a\": 2, \"b\": 2, \"c\", 1)]" $ wordCount ["a", "b", "a", "c", "b"] `shouldBe` fromList [("a": 2, "b": 2, "c", 1)]
   it "fromList [(\"a\": 1, \"b\": 1, \"c\", 1)]" $ wordCount ["c", "b", "a"] `shouldBe` fromList [("a": 1, "b": 1, "c", 1)]
   it "fromList [(\"c\", 4)]" $ wordCount ["c", "c", "c", "c"] `shouldBe` fromList [("c", 4)]

