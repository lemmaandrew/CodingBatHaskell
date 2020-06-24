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
   it "\"not candy\"" $ notString "candy" `shouldBe` "not candy"
   it "\"not x\"" $ notString "x" `shouldBe` "not x"
   it "\"not bad\"" $ notString "not bad" `shouldBe` "not bad"

