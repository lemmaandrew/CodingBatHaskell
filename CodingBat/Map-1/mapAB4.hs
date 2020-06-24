{-From https://codingbat.com/prob/p136950
Modify and return the given map as follows: if the keys "a" and "b" have values that
have different lengths, then set "c" to have the longer value. If the values exist and
have the same length, change them both to the empty string in the map.
-}
import Test.Hspec
import qualified Data.Map.Strict as Map


mapAB4 :: Map.Map String String -> Map.Map String String
mapAB4 map = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "(Map.fromList [(\"a\",\"aaa\"),(\"b\",\"bb\"),(\"c\",\"aaa\")])" $ mapAB4 (Map.fromList [("a","aaa"),("b","bb"),("c","cake")]) `shouldBe` (Map.fromList [("a","aaa"),("b","bb"),("c","aaa")])
   it "(Map.fromList [(\"a\",\"aa\"),(\"b\",\"bbb\"),(\"c\",\"bbb\")])" $ mapAB4 (Map.fromList [("a","aa"),("b","bbb"),("c","cake")]) `shouldBe` (Map.fromList [("a","aa"),("b","bbb"),("c","bbb")])
   it "(Map.fromList [(\"a\",\"aa\"),(\"b\",\"bbb\"),(\"c\",\"bbb\")])" $ mapAB4 (Map.fromList [("a","aa"),("b","bbb")]) `shouldBe` (Map.fromList [("a","aa"),("b","bbb"),("c","bbb")])

