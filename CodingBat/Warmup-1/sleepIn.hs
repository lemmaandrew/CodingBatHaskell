{-From https://codingbat.com/prob/p187868
The parameter weekday is true if it is a weekday, and the parameter vacation is true
if we are on vacation. We sleep in if it is not a weekday or we're on vacation. Return
true if we sleep in.
-}
import Test.Hspec


sleepIn :: Boolean -> Boolean -> Boolean
sleepIn weekday vacation = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ sleepIn false false `shouldBe` true
   it "false" $ sleepIn true false `shouldBe` false
   it "true" $ sleepIn false true `shouldBe` true

