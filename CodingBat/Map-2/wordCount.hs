{- From https://codingbat.com/prob/p117630
The classic word-count algorithm: given an array of strings, return a Map<String, 
Integer> with a key for each different string, with the value the number of times that string 
appears in the array.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )
import qualified Data.Map.Strict as Map


wordCount :: [String] -> Map.Map String Integer
wordCount strings = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "Map.fromList [(\"a\",2),(\"b\",2),(\"c\",1)]" $
        wordCount ["a","b","a","c","b"] `shouldBe` Map.fromList [("a",2),("b",2),("c",1)]
    it "Map.fromList [(\"a\",1),(\"b\",1),(\"c\",1)]" $
        wordCount ["c","b","a"] `shouldBe` Map.fromList [("a",1),("b",1),("c",1)]
    it "Map.fromList [(\"c\",4)]" $
        wordCount ["c","c","c","c"] `shouldBe` Map.fromList [("c",4)]
    it "Map.fromList []" $
        wordCount [] `shouldBe` Map.fromList []
    it "Map.fromList [(\"\",1),(\"and\",1),(\"this\",2)]" $
        wordCount ["this","and","this",""] `shouldBe` Map.fromList [("",1),("and",1),("this",2)]
    it "Map.fromList [(\"X\",1),(\"Y\",1),(\"x\",2),(\"y\",1)]" $
        wordCount ["x","y","x","Y","X"] `shouldBe` Map.fromList [("X",1),("Y",1),("x",2),("y",1)]
    it "Map.fromList [(\"0\",1),(\"1\",1),(\"123\",2)]" $
        wordCount ["123","0","123","1"] `shouldBe` Map.fromList [("0",1),("1",1),("123",2)]
    it "Map.fromList [(\"a\",4),(\"b\",5),(\"d\",3),(\"e\",1),(\"f\",1),(\"one\",1),(\"two\",2),(\"x\",2),(\"z\",2)]" $
        wordCount ["d","a","e","d","a","d","b","b","z","a","a","b","z","x","b","f","x","two","b","one","two"] `shouldBe` Map.fromList [("a",4),("b",5),("d",3),("e",1),("f",1),("one",1),("two",2),("x",2),("z",2)]
    it "Map.fromList [(\"apple\",3),(\"banana\",2),(\"coffee\",1),(\"tea\",1)]" $
        wordCount ["apple","banana","apple","apple","tea","coffee","banana"] `shouldBe` Map.fromList [("apple",3),("banana",2),("coffee",1),("tea",1)]
