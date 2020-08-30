{-From https://codingbat.com/prob/p115011
Modify and return the given map as follows: if the keys "a" and "b" are both in the
map and have equal values, remove them both.
-}
import Test.Hspec
import qualified Data.Map.Strict as Map


mapAB2 :: Map.Map String String -> Map.Map String String
mapAB2 map = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "fromList [(\"c\", \"cake\")]" $ mapAB2 fromList [("a", "aaa"), ("b", "aaa"), ("c", "cake")] `shouldBe` fromList [("c", "cake")]
   it "fromList [(\"a\": \"aaa\", \"b\", \"bbb\")]" $ mapAB2 fromList [("a", "aaa"), ("b", "bbb")] `shouldBe` fromList [("a": "aaa", "b", "bbb")]
   it "fromList [(\"a\": \"aaa\", \"b\": \"bbb\", \"c\", \"aaa\")]" $ mapAB2 fromList [("a", "aaa"), ("b", "bbb"), ("c", "aaa")] `shouldBe` fromList [("a": "aaa", "b": "bbb", "c", "aaa")]

