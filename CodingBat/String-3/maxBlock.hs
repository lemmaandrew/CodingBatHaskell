{-From https://codingbat.com/prob/p179479
Given a string, return the length of the largest "block" in the string. A block is a
run of adjacent chars that are the same.
-}
import Test.Hspec


maxBlock :: String -> Int
maxBlock str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "2" $ maxBlock "hoopla" `shouldBe` 2
   it "3" $ maxBlock "abbCCCddBBBxx" `shouldBe` 3
   it "0" $ maxBlock "" `shouldBe` 0

