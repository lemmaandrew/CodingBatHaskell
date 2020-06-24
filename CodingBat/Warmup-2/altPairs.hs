{-From https://codingbat.com/prob/p121596
Given a string, return a string made of the chars at indexes 0,1, 4,5, 8,9 ... so "kittens"
yields "kien".
-}
import Test.Hspec


altPairs :: String -> String
altPairs str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"kien\"" $ altPairs "kitten" `shouldBe` "kien"
   it "\"Chole\"" $ altPairs "Chocolate" `shouldBe` "Chole"
   it "\"Congrr\"" $ altPairs "CodingHorror" `shouldBe` "Congrr"

