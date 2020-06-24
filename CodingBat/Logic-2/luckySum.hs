{-From https://codingbat.com/prob/p130788
Given 3 int values, a b c, return their sum. However, if one of the values is 13 then
it does not count towards the sum and values to its right do not count. So for example,
if b is 13, then both b and c do not count.
-}
import Test.Hspec


luckySum :: Int -> Int -> Int -> Int
luckySum a b c = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "6" $ luckySum 1 2 3 `shouldBe` 6
   it "3" $ luckySum 1 2 13 `shouldBe` 3
   it "1" $ luckySum 1 13 3 `shouldBe` 1

