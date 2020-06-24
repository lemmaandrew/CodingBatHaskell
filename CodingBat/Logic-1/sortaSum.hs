{-From https://codingbat.com/prob/p183071
Given 2 ints, a and b, return their sum. However, sums in the range 10..19 inclusive,
are forbidden, so in that case just return 20.
-}
import Test.Hspec


sortaSum :: Int -> Int -> Int
sortaSum a b = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "7" $ sortaSum 3 4 `shouldBe` 7
   it "20" $ sortaSum 9 4 `shouldBe` 20
   it "21" $ sortaSum 10 11 `shouldBe` 21
   it "7" $ sortaSum 3 4 `shouldBe` 7
   it "20" $ sortaSum 9 4 `shouldBe` 20
   it "21" $ sortaSum 10 11 `shouldBe` 21

