{- From https://codingbat.com/prob/p136950
Modify and return the given map as follows: if the keys \"a\" and \"b\" have values 
that have different lengths, then set \"c\" to have the longer value. If the values exist 
and have the same length, change them both to the empty string in the map.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )
import qualified Data.Map.Strict as Map


mapAB4 :: Map.Map String String -> Map.Map String String
mapAB4 map = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "Map.fromList [(\"a\",\"aaa\"),(\"b\",\"bb\"),(\"c\",\"aaa\")]" $
        mapAB4 (Map.fromList [("a","aaa"),("b","bb"),("c","cake")]) `shouldBe` Map.fromList [("a","aaa"),("b","bb"),("c","aaa")]
    it "Map.fromList [(\"a\",\"aa\"),(\"b\",\"bbb\"),(\"c\",\"bbb\")]" $
        mapAB4 (Map.fromList [("a","aa"),("b","bbb"),("c","cake")]) `shouldBe` Map.fromList [("a","aa"),("b","bbb"),("c","bbb")]
    it "Map.fromList [(\"a\",\"aa\"),(\"b\",\"bbb\"),(\"c\",\"bbb\")]" $
        mapAB4 (Map.fromList [("a","aa"),("b","bbb")]) `shouldBe` Map.fromList [("a","aa"),("b","bbb"),("c","bbb")]
    it "Map.fromList [(\"a\",\"aaa\")]" $
        mapAB4 (Map.fromList [("a","aaa")]) `shouldBe` Map.fromList [("a","aaa")]
    it "Map.fromList [(\"b\",\"bbb\")]" $
        mapAB4 (Map.fromList [("b","bbb")]) `shouldBe` Map.fromList [("b","bbb")]
    it "Map.fromList [(\"a\",\"\"),(\"b\",\"\"),(\"c\",\"cake\")]" $
        mapAB4 (Map.fromList [("a","aaa"),("b","bbb"),("c","cake")]) `shouldBe` Map.fromList [("a",""),("b",""),("c","cake")]
    it "Map.fromList [(\"a\",\"\"),(\"b\",\"\"),(\"c\",\"cake\")]" $
        mapAB4 (Map.fromList [("a","a"),("b","b"),("c","cake")]) `shouldBe` Map.fromList [("a",""),("b",""),("c","cake")]
    it "Map.fromList [(\"a\",\"\"),(\"b\",\"b\"),(\"c\",\"b\")]" $
        mapAB4 (Map.fromList [("a",""),("b","b"),("c","cake")]) `shouldBe` Map.fromList [("a",""),("b","b"),("c","b")]
    it "Map.fromList [(\"a\",\"a\"),(\"b\",\"\"),(\"c\",\"a\")]" $
        mapAB4 (Map.fromList [("a","a"),("b",""),("c","cake")]) `shouldBe` Map.fromList [("a","a"),("b",""),("c","a")]
    it "Map.fromList [(\"c\",\"cat\"),(\"d\",\"dog\")]" $
        mapAB4 (Map.fromList [("c","cat"),("d","dog")]) `shouldBe` Map.fromList [("c","cat"),("d","dog")]
    it "Map.fromList [(\"ccc\",\"ccc\")]" $
        mapAB4 (Map.fromList [("ccc","ccc")]) `shouldBe` Map.fromList [("ccc","ccc")]
    it "Map.fromList [(\"c\",\"a\"),(\"d\",\"b\")]" $
        mapAB4 (Map.fromList [("c","a"),("d","b")]) `shouldBe` Map.fromList [("c","a"),("d","b")]
    it "Map.fromList []" $
        mapAB4 (Map.fromList []) `shouldBe` Map.fromList []
    it "Map.fromList [(\"a\",\"\"),(\"z\",\"z\")]" $
        mapAB4 (Map.fromList [("a",""),("z","z")]) `shouldBe` Map.fromList [("a",""),("z","z")]
    it "Map.fromList [(\"b\",\"\"),(\"z\",\"z\")]" $
        mapAB4 (Map.fromList [("b",""),("z","z")]) `shouldBe` Map.fromList [("b",""),("z","z")]
