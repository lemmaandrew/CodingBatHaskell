{-From https://codingbat.com/prob/p152303
Given an array of strings, return a Map<String, Integer> containing a key for every different
string in the array, always with the value 0. For example the string "hello" makes the
pair "hello":0. We'll do more complicated counting later, but for this problem the value
is simply 0.
-}
import Test.Hspec
import qualified Data.Map.Strict as Map


word0 :: [String] -> Map.Map String Integer
word0 strings = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "(Map.fromList [(\"a\",0),(\"b\",0)])" $ word0 ["a","b","a","b"] `shouldBe` (Map.fromList [("a",0),("b",0)])
   it "(Map.fromList [(\"a\",0),(\"b\",0),(\"c\",0)])" $ word0 ["a","b","a","c","b"] `shouldBe` (Map.fromList [("a",0),("b",0),("c",0)])
   it "(Map.fromList [(\"a\",0),(\"b\",0),(\"c\",0)])" $ word0 ["c","b","a"] `shouldBe` (Map.fromList [("a",0),("b",0),("c",0)])

