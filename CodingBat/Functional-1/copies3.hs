{- From https://codingbat.com/prob/p181634
Given a list of strings, return a list where each string is replaced by 3 copies 
of the string concatenated together.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


copies3 :: [String] -> [String]
copies3 strings = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "[\"aaa\",\"bbbbbb\",\"ccccccccc\"]" $
        copies3 ["a","bb","ccc"] `shouldBe` ["aaa","bbbbbb","ccccccccc"]
    it "[\"242424\",\"aaa\",\"\"]" $
        copies3 ["24","a",""] `shouldBe` ["242424","aaa",""]
    it "[\"hellohellohello\",\"theretherethere\"]" $
        copies3 ["hello","there"] `shouldBe` ["hellohellohello","theretherethere"]
    it "[\"nonono\"]" $
        copies3 ["no"] `shouldBe` ["nonono"]
    it "[]" $
        copies3 [] `shouldBe` []
    it "[\"thisthisthis\",\"andandand\",\"thatthatthat\",\"andandand\"]" $
        copies3 ["this","and","that","and"] `shouldBe` ["thisthisthis","andandand","thatthatthat","andandand"]
