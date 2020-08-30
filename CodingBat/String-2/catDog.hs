{-From https://codingbat.com/prob/p111624
Return true if the string "cat" and "dog" appear the same number of times in the given
string.
-}
import Test.Hspec


catDog :: String -> Boolean
catDog str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ catDog "catdog" `shouldBe` true
   it "false" $ catDog "catcat" `shouldBe` false
   it "true" $ catDog "1cat1cadodog" `shouldBe` true

