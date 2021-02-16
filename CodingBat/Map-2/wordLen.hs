{- From https://codingbat.com/prob/p125327
Given an array of strings, return a Map<String, Integer> containing a key for every 
different string in the array, and the value is that string's length.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )
import qualified Data.Map.Strict as Map


wordLen :: [String] -> Map.Map String Integer
wordLen strings = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "Map.fromList [(\"a\",1),(\"bb\",2)]" $
        wordLen ["a","bb","a","bb"] `shouldBe` Map.fromList [("a",1),("bb",2)]
    it "Map.fromList [(\"and\",3),(\"that\",4),(\"this\",4)]" $
        wordLen ["this","and","that","and"] `shouldBe` Map.fromList [("and",3),("that",4),("this",4)]
    it "Map.fromList [(\"bug\",3),(\"code\",4)]" $
        wordLen ["code","code","code","bug"] `shouldBe` Map.fromList [("bug",3),("code",4)]
    it "Map.fromList []" $
        wordLen [] `shouldBe` Map.fromList []
    it "Map.fromList [(\"z\",1)]" $
        wordLen ["z"] `shouldBe` Map.fromList [("z",1)]
