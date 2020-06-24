{-From https://codingbat.com/prob/p184030
Given an "out" string length 4, such as "<<>>", and a word, return a new string where
the word is in the middle of the out string, e.g. "<<word>>". Note: use str.substring(i,
j) to extract the String starting at index i and going up to but not including index
j.
-}
import Test.Hspec


makeOutWord :: String -> String -> String
makeOutWord out word = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"<<Yay>>\"" $ makeOutWord "<<>>" "Yay" `shouldBe` "<<Yay>>"
   it "\"<<WooHoo>>\"" $ makeOutWord "<<>>" "WooHoo" `shouldBe` "<<WooHoo>>"
   it "\"[[word]]\"" $ makeOutWord "[[]]" "word" `shouldBe` "[[word]]"
   it "\"<<Yay>>\"" $ makeOutWord "<<>>" "Yay" `shouldBe` "<<Yay>>"
   it "\"<<WooHoo>>\"" $ makeOutWord "<<>>" "WooHoo" `shouldBe` "<<WooHoo>>"
   it "\"[[word]]\"" $ makeOutWord "[[]]" "word" `shouldBe` "[[word]]"

