{- From https://codingbat.com/prob/p170181
Given a list of strings, return a list where each string has \"*\" added at its end.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


addStar :: [String] -> [String]
addStar strings = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "[\"a*\",\"bb*\",\"ccc*\"]" $
        addStar ["a","bb","ccc"] `shouldBe` ["a*","bb*","ccc*"]
    it "[\"hello*\",\"there*\"]" $
        addStar ["hello","there"] `shouldBe` ["hello*","there*"]
    it "[\"**\"]" $
        addStar ["*"] `shouldBe` ["**"]
    it "[]" $
        addStar [] `shouldBe` []
    it "[\"kittens*\",\"and*\",\"chocolate*\",\"and*\"]" $
        addStar ["kittens","and","chocolate","and"] `shouldBe` ["kittens*","and*","chocolate*","and*"]
    it "[\"empty*\",\"string*\",\"*\"]" $
        addStar ["empty","string",""] `shouldBe` ["empty*","string*","*"]
