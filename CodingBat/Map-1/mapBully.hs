{-From https://codingbat.com/prob/p197888
Modify and return the given map as follows: if the key "a" has a value, set the key
"b" to have that value, and set the key "a" to have the value "". Basically "b" is
a bully, taking the value and replacing it with the empty string.
-}
import Test.Hspec
import qualified Data.Map.Strict as Map


mapBully :: Map.Map String String -> Map.Map String String
mapBully map = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "(Map.fromList [(\"a\",\"\"),(\"b\",\"candy\")])" $ mapBully (Map.fromList [("a","candy"),("b","dirt")]) `shouldBe` (Map.fromList [("a",""),("b","candy")])
   it "(Map.fromList [(\"a\",\"\"),(\"b\",\"candy\")])" $ mapBully (Map.fromList [("a","candy")]) `shouldBe` (Map.fromList [("a",""),("b","candy")])
   it "(Map.fromList [(\"a\",\"\"),(\"b\",\"candy\"),(\"c\",\"meh\")])" $ mapBully (Map.fromList [("a","candy"),("b","carrot"),("c","meh")]) `shouldBe` (Map.fromList [("a",""),("b","candy"),("c","meh")])

