{-From https://codingbat.com/prob/p191914
Given a string, return a new string where "not " has been added to the front. However,
if the string already begins with "not", return the string unchanged. Note: use .equals()
to compare 2 strings.
-}
import Test.Hspec


notString :: String -> String
notString str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"notcandy\"" $ notString "candy" `shouldBe` "notcandy"
   it "\"notx\"" $ notString "x" `shouldBe` "notx"
   it "\"notbad\"" $ notString "notbad" `shouldBe` "notbad"

