{-From https://codingbat.com/prob/p170924
Given a string, compute recursively (no loops) a new string where all appearances of "pi"
have been replaced by "3.14".
-}
import Test.Hspec


changePi :: String -> String
changePi str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"x3.14x\"" $ changePi "xpix" `shouldBe` "x3.14x"
   it "\"3.143.14\"" $ changePi "pipi" `shouldBe` "3.143.14"
   it "\"3.14p\"" $ changePi "pip" `shouldBe` "3.14p"

