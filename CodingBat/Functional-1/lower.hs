{- From https://codingbat.com/prob/p186894
Given a list of strings, return a list where each string is converted to lower case 
(Note: String toLowerCase() method).
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


lower :: [String] -> [String]
lower strings = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "[\"hello\",\"hi\"]" $
        lower ["Hello","Hi"] `shouldBe` ["hello","hi"]
    it "[\"aaa\",\"bbb\",\"ccc\"]" $
        lower ["AAA","BBB","ccc"] `shouldBe` ["aaa","bbb","ccc"]
    it "[\"kitten\",\"chocolate\"]" $
        lower ["KitteN","ChocolaTE"] `shouldBe` ["kitten","chocolate"]
    it "[]" $
        lower [] `shouldBe` []
    it "[\"empty\",\"\"]" $
        lower ["EMPTY",""] `shouldBe` ["empty",""]
    it "[\"aax\",\"byb\",\"ycc\",\"zzz\"]" $
        lower ["aaX","bYb","Ycc","ZZZ"] `shouldBe` ["aax","byb","ycc","zzz"]
