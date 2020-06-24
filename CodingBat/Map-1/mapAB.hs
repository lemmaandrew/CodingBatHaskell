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
   it "(Map.fromList [(\"a\",\"Hi\"),(\"ab\",\"HiThere\"),(\"b\",\"There\")])" $ mapAB (Map.fromList [("a","Hi"),("b","There")]) `shouldBe` (Map.fromList [("a","Hi"),("ab","HiThere"),("b","There")])
   it "(Map.fromList [(\"a\",\"Hi\")])" $ mapAB (Map.fromList [("a","Hi")]) `shouldBe` (Map.fromList [("a","Hi")])
   it "(Map.fromList [(\"b\",\"There\")])" $ mapAB (Map.fromList [("b","There")]) `shouldBe` (Map.fromList [("b","There")])
   it "(Map.fromList [(\"a\",\"Hi\"),(\"ab\",\"HiThere\"),(\"b\",\"There\")])" $ mapAB (Map.fromList [("a","Hi"),("b","There")]) `shouldBe` (Map.fromList [("a","Hi"),("ab","HiThere"),("b","There")])
   it "(Map.fromList [(\"a\",\"Hi\")])" $ mapAB (Map.fromList [("a","Hi")]) `shouldBe` (Map.fromList [("a","Hi")])
   it "(Map.fromList [(\"b\",\"There\")])" $ mapAB (Map.fromList [("b","There")]) `shouldBe` (Map.fromList [("b","There")])

