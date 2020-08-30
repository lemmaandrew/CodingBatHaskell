{-From https://codingbat.com/prob/p190862
Given an array of strings, return a Map<String, Boolean> where each different string is
a key and its value is true if that string appears 2 or more times in the array.
-}
import Test.Hspec
import qualified Data.Map.Strict as Map


wordMultiple :: [String] -> Map.Map String Boolean
wordMultiple strings = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "fromList [(\"a\": true, \"b\": true, \"c\", false)]" $ wordMultiple ["a", "b", "a", "c", "b"] `shouldBe` fromList [("a": true, "b": true, "c", false)]
   it "fromList [(\"a\": false, \"b\": false, \"c\", false)]" $ wordMultiple ["c", "b", "a"] `shouldBe` fromList [("a": false, "b": false, "c", false)]
   it "fromList [(\"c\", true)]" $ wordMultiple ["c", "c", "c", "c"] `shouldBe` fromList [("c", true)]

