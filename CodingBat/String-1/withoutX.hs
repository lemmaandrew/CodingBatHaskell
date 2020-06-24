{-From https://codingbat.com/prob/p151940
Given a string, if the first or last chars are 'x', return the string without those 'x'
chars, and otherwise return the string unchanged.
-}
import Test.Hspec


withoutX :: String -> String
withoutX str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"Hi\"" $ withoutX "xHix" `shouldBe` "Hi"
   it "\"Hi\"" $ withoutX "xHi" `shouldBe` "Hi"
   it "\"Hxi\"" $ withoutX "Hxix" `shouldBe` "Hxi"
   it "\"Hi\"" $ withoutX "xHix" `shouldBe` "Hi"
   it "\"Hi\"" $ withoutX "xHi" `shouldBe` "Hi"
   it "\"Hxi\"" $ withoutX "Hxix" `shouldBe` "Hxi"

