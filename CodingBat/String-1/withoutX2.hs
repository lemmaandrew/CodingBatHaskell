{-From https://codingbat.com/prob/p151359
Given a string, if one or both of the first 2 chars is 'x', return the string without
those 'x' chars, and otherwise return the string unchanged. This is a little harder than
it looks.
-}
import Test.Hspec


withoutX2 :: String -> String
withoutX2 str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"Hi\"" $ withoutX2 "xHi" `shouldBe` "Hi"
   it "\"Hi\"" $ withoutX2 "Hxi" `shouldBe` "Hi"
   it "\"Hi\"" $ withoutX2 "Hi" `shouldBe` "Hi"
   it "\"Hi\"" $ withoutX2 "xHi" `shouldBe` "Hi"
   it "\"Hi\"" $ withoutX2 "Hxi" `shouldBe` "Hi"
   it "\"Hi\"" $ withoutX2 "Hi" `shouldBe` "Hi"

