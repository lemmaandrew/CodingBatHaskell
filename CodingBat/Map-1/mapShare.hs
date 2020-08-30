{-From https://codingbat.com/prob/p148813
Modify and return the given map as follows: if the key "a" has a value, set the key
"b" to have that same value. In all cases remove the key "c", leaving the rest of the
map unchanged.
-}
import Test.Hspec
import qualified Data.Map.Strict as Map


mapShare :: Map.Map String String -> Map.Map String String
mapShare map = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "fromList [(\"a\": \"aaa\", \"b\", \"aaa\")]" $ mapShare fromList [("a", "aaa"), ("b", "bbb"), ("c", "ccc")] `shouldBe` fromList [("a": "aaa", "b", "aaa")]
   it "fromList [(\"b\", \"xyz\")]" $ mapShare fromList [("b", "xyz"), ("c", "ccc")] `shouldBe` fromList [("b", "xyz")]
   it "fromList [(\"a\": \"aaa\", \"b\": \"aaa\", \"d\", \"hi\")]" $ mapShare fromList [("a", "aaa"), ("c", "meh"), ("d", "hi")] `shouldBe` fromList [("a": "aaa", "b": "aaa", "d", "hi")]

