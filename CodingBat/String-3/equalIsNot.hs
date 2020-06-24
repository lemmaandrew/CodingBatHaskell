{-From https://codingbat.com/prob/p141736
Given a string, return true if the number of appearances of "is" anywhere in the string
is equal to the number of appearances of "not" anywhere in the string (case sensitive).
-}
import Test.Hspec


equalIsNot :: String -> Bool
equalIsNot str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "False" $ equalIsNot "This is not" `shouldBe` False
   it "True" $ equalIsNot "This is notnot" `shouldBe` True
   it "True" $ equalIsNot "noisxxnotyynotxisi" `shouldBe` True

