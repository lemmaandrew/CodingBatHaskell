{- From https://codingbat.com/prob/p126332
Given an array of non-empty strings, create and return a Map<String, String> as follows: 
for each string add its first character as a key with its last character as the value.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )
import qualified Data.Map.Strict as Map


pairs :: [String] -> Map.Map String String
pairs strings = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "Map.fromList [(\"b\",\"g\"),(\"c\",\"e\")]" $
        pairs ["code","bug"] `shouldBe` Map.fromList [("b","g"),("c","e")]
    it "Map.fromList [(\"m\",\"n\")]" $
        pairs ["man","moon","main"] `shouldBe` Map.fromList [("m","n")]
    it "Map.fromList [(\"g\",\"d\"),(\"m\",\"n\"),(\"n\",\"t\")]" $
        pairs ["man","moon","good","night"] `shouldBe` Map.fromList [("g","d"),("m","n"),("n","t")]
    it "Map.fromList []" $
        pairs [] `shouldBe` Map.fromList []
    it "Map.fromList [(\"a\",\"a\"),(\"b\",\"b\")]" $
        pairs ["a","b"] `shouldBe` Map.fromList [("a","a"),("b","b")]
    it "Map.fromList [(\"a\",\"d\"),(\"c\",\"s\")]" $
        pairs ["are","codes","and","cods"] `shouldBe` Map.fromList [("a","d"),("c","s")]
    it "Map.fromList [(\"a\",\"e\"),(\"b\",\"a\"),(\"c\",\"e\"),(\"t\",\"a\")]" $
        pairs ["apple","banana","tea","coffee"] `shouldBe` Map.fromList [("a","e"),("b","a"),("c","e"),("t","a")]
