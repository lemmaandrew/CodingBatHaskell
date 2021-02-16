{- From https://codingbat.com/prob/p148813
Modify and return the given map as follows: if the key \"a\" has a value, set the 
key \"b\" to have that same value. In all cases remove the key \"c\", leaving the rest 
of the map unchanged.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )
import qualified Data.Map.Strict as Map


mapShare :: Map.Map String String -> Map.Map String String
mapShare map = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "Map.fromList [(\"a\",\"aaa\"),(\"b\",\"aaa\")]" $
        mapShare (Map.fromList [("a","aaa"),("b","bbb"),("c","ccc")]) `shouldBe` Map.fromList [("a","aaa"),("b","aaa")]
    it "Map.fromList [(\"b\",\"xyz\")]" $
        mapShare (Map.fromList [("b","xyz"),("c","ccc")]) `shouldBe` Map.fromList [("b","xyz")]
    it "Map.fromList [(\"a\",\"aaa\"),(\"b\",\"aaa\"),(\"d\",\"hi\")]" $
        mapShare (Map.fromList [("a","aaa"),("c","meh"),("d","hi")]) `shouldBe` Map.fromList [("a","aaa"),("b","aaa"),("d","hi")]
    it "Map.fromList [(\"a\",\"xyz\"),(\"b\",\"xyz\"),(\"z\",\"zzz\")]" $
        mapShare (Map.fromList [("a","xyz"),("b","1234"),("c","yo"),("z","zzz")]) `shouldBe` Map.fromList [("a","xyz"),("b","xyz"),("z","zzz")]
    it "Map.fromList [(\"a\",\"xyz\"),(\"b\",\"xyz\"),(\"d\",\"ddd\"),(\"e\",\"everything\")]" $
        mapShare (Map.fromList [("a","xyz"),("b","1234"),("c","yo"),("d","ddd"),("e","everything")]) `shouldBe` Map.fromList [("a","xyz"),("b","xyz"),("d","ddd"),("e","everything")]
