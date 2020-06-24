{-From https://codingbat.com/prob/p182879
Given 3 int values, a b c, return their sum. However, if any of the values is a teen
-- in the range 13..19 inclusive -- then that value counts as 0, except 15 and 16 do
not count as a teens. Write a separate helper "public int fixTeen(int n) {"that takes
in an int value and returns that value fixed for the teen rule. In this way, you avoid
repeating the teen code 3 times (i.e. "decomposition"). Define the helper below and at
the same indent level as the main noTeenSum().
-}
import Test.Hspec


noTeenSum :: Int -> Int -> Int -> Int
noTeenSum a b c = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "6" $ noTeenSum 1 2 3 `shouldBe` 6
   it "3" $ noTeenSum 2 13 1 `shouldBe` 3
   it "3" $ noTeenSum 2 1 14 `shouldBe` 3
   it "6" $ noTeenSum 1 2 3 `shouldBe` 6
   it "3" $ noTeenSum 2 13 1 `shouldBe` 3
   it "3" $ noTeenSum 2 1 14 `shouldBe` 3

