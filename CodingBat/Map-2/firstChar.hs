{-From https://codingbat.com/prob/p168493
Given an array of non-empty strings, return a Map<String, String> with a key for every
different first character seen, with the value of all the strings starting with that character
appended together in the order they appear in the array.
-}
import Test.Hspec
import qualified Data.Map.Strict as Map


firstChar :: [String] -> Map.Map String String
firstChar strings = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "fromList [(\"s\": \"saltsoda\", \"t\", \"teatoast\")]" $ firstChar ["salt", "tea", "soda", "toast"] `shouldBe` fromList [("s": "saltsoda", "t", "teatoast")]
   it "fromList [(\"a\": \"aaaAA\", \"b\": \"bb\", \"c\": \"cccCC\", \"d\", \"d\")]" $ firstChar ["aa", "bb", "cc", "aAA", "cCC", "d"] `shouldBe` fromList [("a": "aaaAA", "b": "bb", "c": "cccCC", "d", "d")]
   it "fromList []" $ firstChar [] `shouldBe` fromList []

