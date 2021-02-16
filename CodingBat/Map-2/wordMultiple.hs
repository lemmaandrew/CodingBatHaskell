{- From https://codingbat.com/prob/p190862
Given an array of strings, return a Map<String, Boolean> where each different string 
is a key and its value is true if that string appears 2 or more times in the array.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )
import qualified Data.Map.Strict as Map


wordMultiple :: [String] -> Map.Map String Bool
wordMultiple strings = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "Map.fromList [(\"a\",True),(\"b\",True),(\"c\",False)]" $
        wordMultiple ["a","b","a","c","b"] `shouldBe` Map.fromList [("a",True),("b",True),("c",False)]
    it "Map.fromList [(\"a\",False),(\"b\",False),(\"c\",False)]" $
        wordMultiple ["c","b","a"] `shouldBe` Map.fromList [("a",False),("b",False),("c",False)]
    it "Map.fromList [(\"c\",True)]" $
        wordMultiple ["c","c","c","c"] `shouldBe` Map.fromList [("c",True)]
    it "Map.fromList []" $
        wordMultiple [] `shouldBe` Map.fromList []
    it "Map.fromList [(\"and\",False),(\"this\",True)]" $
        wordMultiple ["this","and","this"] `shouldBe` Map.fromList [("and",False),("this",True)]
    it "Map.fromList [(\"a\",True),(\"b\",True),(\"d\",True),(\"e\",False),(\"x\",False),(\"z\",True)]" $
        wordMultiple ["d","a","e","d","a","d","b","b","z","a","a","b","z","x"] `shouldBe` Map.fromList [("a",True),("b",True),("d",True),("e",False),("x",False),("z",True)]
