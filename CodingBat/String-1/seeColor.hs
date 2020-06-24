{-From https://codingbat.com/prob/p199216
Given a string, if the string begins with "red" or "blue" return that color string, otherwise
return the empty string.
-}
import Test.Hspec


seeColor :: String -> String
seeColor str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"red\"" $ seeColor "redxx" `shouldBe` "red"
   it "\"\"" $ seeColor "xxred" `shouldBe` ""
   it "\"blue\"" $ seeColor "blueTimes" `shouldBe` "blue"

