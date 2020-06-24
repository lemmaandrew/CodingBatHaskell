{-From https://codingbat.com/prob/p184029
Given a string, compute recursively (no loops) the number of times lowercase "hi" appears
in the string.
-}
import Test.Hspec


countHi :: String -> Int
countHi str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "1" $ countHi "xxhixx" `shouldBe` 1
   it "2" $ countHi "xhixhix" `shouldBe` 2
   it "1" $ countHi "hi" `shouldBe` 1

