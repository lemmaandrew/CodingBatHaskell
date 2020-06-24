{-From https://codingbat.com/prob/p130781
Given a string, return a "rotated right 2" version where the last 2 chars are moved to
the start. The string length will be at least 2.
-}
import Test.Hspec


right2 :: String -> String
right2 str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"loHel\"" $ right2 "Hello" `shouldBe` "loHel"
   it "\"vaja\"" $ right2 "java" `shouldBe` "vaja"
   it "\"Hi\"" $ right2 "Hi" `shouldBe` "Hi"
   it "\"loHel\"" $ right2 "Hello" `shouldBe` "loHel"
   it "\"vaja\"" $ right2 "java" `shouldBe` "vaja"
   it "\"Hi\"" $ right2 "Hi" `shouldBe` "Hi"

