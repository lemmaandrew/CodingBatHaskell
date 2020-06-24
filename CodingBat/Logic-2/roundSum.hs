{-From https://codingbat.com/prob/p186753
For this problem, we'll round an int value up to the next multiple of 10 if its rightmost
digit is 5 or more, so 15 rounds up to 20. Alternately, round down to the previous multiple
of 10 if its rightmost digit is less than 5, so 12 rounds down to 10. Given 3 ints,
a b c, return the sum of their rounded values. To avoid code repetition, write a separate
helper "public int round10(int num) {" and call it 3 times. Write the helper entirely
below and at the same indent level as roundSum().
-}
import Test.Hspec


roundSum :: Int -> Int -> Int -> Int
roundSum a b c = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "60" $ roundSum 16 17 18 `shouldBe` 60
   it "30" $ roundSum 12 13 14 `shouldBe` 30
   it "10" $ roundSum 6 4 4 `shouldBe` 10

