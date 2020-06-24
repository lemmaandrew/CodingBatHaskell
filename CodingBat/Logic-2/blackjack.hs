{-From https://codingbat.com/prob/p117019
Given 2 int values greater than 0, return whichever value is nearest to 21 without going
over. Return 0 if they both go over.
-}
import Test.Hspec


blackjack :: Int -> Int -> Int
blackjack a b = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "21" $ blackjack 19 21 `shouldBe` 21
   it "21" $ blackjack 21 19 `shouldBe` 21
   it "19" $ blackjack 19 22 `shouldBe` 19

