{-From https://codingbat.com/prob/p125327
Given an array of strings, return a Map<String, Integer> containing a key for every different
string in the array, and the value is that string's length.
-}
import Test.Hspec
import qualified Data.Map.Strict as Map


wordLen :: [String] -> Map.Map String Integer
wordLen strings = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "fromList [(\"bb\": 2, \"a\", 1)]" $ wordLen ["a", "bb", "a", "bb"] `shouldBe` fromList [("bb": 2, "a", 1)]
   it "fromList [(\"that\": 4, \"and\": 3, \"this\", 4)]" $ wordLen ["this", "and", "that", "and"] `shouldBe` fromList [("that": 4, "and": 3, "this", 4)]
   it "fromList [(\"code\": 4, \"bug\", 3)]" $ wordLen ["code", "code", "code", "bug"] `shouldBe` fromList [("code": 4, "bug", 3)]

