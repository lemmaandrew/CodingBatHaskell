{-From https://codingbat.com/prob/p111624
Return true if the string "cat" and "dog" appear the same number of times in the given
string.
-}
import Test.Hspec


catDog :: String -> Bool
catDog str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ catDog "catdog" `shouldBe` True
   it "False" $ catDog "catcat" `shouldBe` False
   it "True" $ catDog "1cat1cadodog" `shouldBe` True
   it "True" $ catDog "catdog" `shouldBe` True
   it "False" $ catDog "catcat" `shouldBe` False
   it "True" $ catDog "1cat1cadodog" `shouldBe` True

