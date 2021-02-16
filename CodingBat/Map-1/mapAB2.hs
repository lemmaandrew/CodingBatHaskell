{- From https://codingbat.com/prob/p115011
Modify and return the given map as follows: if the keys \"a\" and \"b\" are both 
in the map and have equal values, remove them both.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )
import qualified Data.Map.Strict as Map


mapAB2 :: Map.Map String String -> Map.Map String String
mapAB2 map = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "Map.fromList [(\"c\",\"cake\")]" $
        mapAB2 (Map.fromList [("a","aaa"),("b","aaa"),("c","cake")]) `shouldBe` Map.fromList [("c","cake")]
    it "Map.fromList [(\"a\",\"aaa\"),(\"b\",\"bbb\")]" $
        mapAB2 (Map.fromList [("a","aaa"),("b","bbb")]) `shouldBe` Map.fromList [("a","aaa"),("b","bbb")]
    it "Map.fromList [(\"a\",\"aaa\"),(\"b\",\"bbb\"),(\"c\",\"aaa\")]" $
        mapAB2 (Map.fromList [("a","aaa"),("b","bbb"),("c","aaa")]) `shouldBe` Map.fromList [("a","aaa"),("b","bbb"),("c","aaa")]
    it "Map.fromList [(\"a\",\"aaa\")]" $
        mapAB2 (Map.fromList [("a","aaa")]) `shouldBe` Map.fromList [("a","aaa")]
    it "Map.fromList [(\"b\",\"bbb\")]" $
        mapAB2 (Map.fromList [("b","bbb")]) `shouldBe` Map.fromList [("b","bbb")]
    it "Map.fromList [(\"c\",\"ccc\")]" $
        mapAB2 (Map.fromList [("a",""),("b",""),("c","ccc")]) `shouldBe` Map.fromList [("c","ccc")]
    it "Map.fromList []" $
        mapAB2 (Map.fromList []) `shouldBe` Map.fromList []
    it "Map.fromList [(\"a\",\"a\"),(\"b\",\"b\"),(\"z\",\"zebra\")]" $
        mapAB2 (Map.fromList [("a","a"),("b","b"),("z","zebra")]) `shouldBe` Map.fromList [("a","a"),("b","b"),("z","zebra")]
