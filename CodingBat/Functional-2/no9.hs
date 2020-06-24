{-From https://codingbat.com/prob/p124510
Given a list of non-negative integers, return a list of those numbers except omitting any
that end with 9. (Note:    % by 10)
-}
import Test.Hspec


no9 :: [Integer] -> [Integer]
no9 nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "[1,2]" $ no9 [1,2,19] `shouldBe` [1,2]
   it "[3]" $ no9 [9,19,29,3] `shouldBe` [3]
   it "[1,2,3]" $ no9 [1,2,3] `shouldBe` [1,2,3]

