{-From https://codingbat.com/prob/p100905
Given a string, if the string "del" appears starting at index 1, return a string where
that "del" has been deleted. Otherwise, return the string unchanged.
-}
import Test.Hspec


delDel :: String -> String
delDel str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"abc\"" $ delDel "adelbc" `shouldBe` "abc"
   it "\"aHello\"" $ delDel "adelHello" `shouldBe` "aHello"
   it "\"adedbc\"" $ delDel "adedbc" `shouldBe` "adedbc"
   it "\"abc\"" $ delDel "adelbc" `shouldBe` "abc"
   it "\"aHello\"" $ delDel "adelHello" `shouldBe` "aHello"
   it "\"adedbc\"" $ delDel "adedbc" `shouldBe` "adedbc"

