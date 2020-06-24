{-From https://codingbat.com/prob/p178728
Given 2 ints, a and b, return their sum. However, "teen" values in the range 13..19 inclusive,
are extra lucky. So if either value is a teen, just return 19.
-}
import Test.Hspec


teenSum :: Int -> Int -> Int
teenSum a b = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "7" $ teenSum 3 4 `shouldBe` 7
   it "19" $ teenSum 10 13 `shouldBe` 19
   it "19" $ teenSum 13 2 `shouldBe` 19

