{-From https://codingbat.com/prob/p105671
Given a list of strings, return a list of the strings, omitting any string that contains
a "z". (Note: the str.contains(x) method returns a boolean)
-}
import Test.Hspec


noZ :: [String] -> [String]
noZ strings = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "[\"aaa\", \"bbb\"]" $ noZ ["aaa", "bbb", "aza"] `shouldBe` ["aaa", "bbb"]
   it "[\"hi\"]" $ noZ ["hziz", "hzello", "hi"] `shouldBe` ["hi"]
   it "[\"hello\", \"are\"]" $ noZ ["hello", "howz", "are", "youz"] `shouldBe` ["hello", "are"]

