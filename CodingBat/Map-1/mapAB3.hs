{-From https://codingbat.com/prob/p115012
Modify and return the given map as follows: if exactly one of the keys "a" or "b" has
a value in the map (but not both), set the other to have that same value in the map.
-}
import Test.Hspec
import qualified Data.Map.Strict as Map


mapAB3 :: Map.Map String String -> Map.Map String String
mapAB3 map = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "(Map.fromList [(\"a\",\"aaa\"),(\"b\",\"aaa\"),(\"c\",\"cake\")])" $ mapAB3 (Map.fromList [("a","aaa"),("c","cake")]) `shouldBe` (Map.fromList [("a","aaa"),("b","aaa"),("c","cake")])
   it "(Map.fromList [(\"a\",\"bbb\"),(\"b\",\"bbb\"),(\"c\",\"cake\")])" $ mapAB3 (Map.fromList [("b","bbb"),("c","cake")]) `shouldBe` (Map.fromList [("a","bbb"),("b","bbb"),("c","cake")])
   it "(Map.fromList [(\"a\",\"aaa\"),(\"b\",\"bbb\"),(\"c\",\"cake\")])" $ mapAB3 (Map.fromList [("a","aaa"),("b","bbb"),("c","cake")]) `shouldBe` (Map.fromList [("a","aaa"),("b","bbb"),("c","cake")])

