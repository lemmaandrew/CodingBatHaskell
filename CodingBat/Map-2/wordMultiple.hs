{-From https://codingbat.com/prob/p190862
Given an array of strings, return a Map<String, Boolean> where each different string is
a key and its value is true if that string appears 2 or more times in the array.
-}
import Test.Hspec
import qualified Data.Map.Strict as Map


wordMultiple :: [String] -> Map.Map String Bool
wordMultiple strings = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "(Map.fromList [(\"a\",True),(\"b\",True),(\"c\",False)])" $ wordMultiple ["a","b","a","c","b"] `shouldBe` (Map.fromList [("a",True),("b",True),("c",False)])
   it "(Map.fromList [(\"a\",False),(\"b\",False),(\"c\",False)])" $ wordMultiple ["c","b","a"] `shouldBe` (Map.fromList [("a",False),("b",False),("c",False)])
   it "(Map.fromList [(\"c\",True)])" $ wordMultiple ["c","c","c","c"] `shouldBe` (Map.fromList [("c",True)])

