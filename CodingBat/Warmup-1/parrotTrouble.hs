{-From https://codingbat.com/prob/p140449
We have a loud talking parrot. The "hour" parameter is the current hour time in the range
0..23. We are in trouble if the parrot is talking and the hour is before 7 or after
20. Return true if we are in trouble.
-}
import Test.Hspec


parrotTrouble :: Boolean -> Int -> Boolean
parrotTrouble talking hour = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ parrotTrouble true 6 `shouldBe` true
   it "false" $ parrotTrouble true 7 `shouldBe` false
   it "false" $ parrotTrouble false 6 `shouldBe` false

