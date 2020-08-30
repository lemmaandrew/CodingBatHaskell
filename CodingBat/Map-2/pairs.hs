{-From https://codingbat.com/prob/p126332
Given an array of non-empty strings, create and return a Map<String, String> as follows:
for each string add its first character as a key with its last character as the value.
-}
import Test.Hspec
import qualified Data.Map.Strict as Map


pairs :: [String] -> Map.Map String String
pairs strings = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "fromList [(\"b\": \"g\", \"c\", \"e\")]" $ pairs ["code", "bug"] `shouldBe` fromList [("b": "g", "c", "e")]
   it "fromList [(\"m\", \"n\")]" $ pairs ["man", "moon", "main"] `shouldBe` fromList [("m", "n")]
   it "fromList [(\"g\": \"d\", \"m\": \"n\", \"n\", \"t\")]" $ pairs ["man", "moon", "good", "night"] `shouldBe` fromList [("g": "d", "m": "n", "n", "t")]

