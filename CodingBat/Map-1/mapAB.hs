{-From https://codingbat.com/prob/p107259
Modify and return the given map as follows: for this problem the map may or may not
contain the "a" and "b" keys. If both keys are present, append their 2 string values
together and store the result under the key "ab".
-}
import Test.Hspec
import qualified Data.Map.Strict as Map


mapAB :: Map.Map String String -> Map.Map String String
mapAB map = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "fromList [(\"a\": \"Hi\", \"ab\": \"HiThere\", \"b\", \"There\")]" $ mapAB fromList [("a", "Hi"), ("b", "There")] `shouldBe` fromList [("a": "Hi", "ab": "HiThere", "b", "There")]
   it "fromList [(\"a\", \"Hi\")]" $ mapAB fromList [("a", "Hi")] `shouldBe` fromList [("a", "Hi")]
   it "fromList [(\"b\", \"There\")]" $ mapAB fromList [("b", "There")] `shouldBe` fromList [("b", "There")]

