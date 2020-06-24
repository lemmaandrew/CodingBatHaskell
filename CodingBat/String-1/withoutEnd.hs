{-From https://codingbat.com/prob/p130896
Given a string, return a version without the first and last char, so "Hello" yields "ell".
The string length will be at least 2.
-}
import Test.Hspec


withoutEnd :: String -> String
withoutEnd str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"ell\"" $ withoutEnd "Hello" `shouldBe` "ell"
   it "\"av\"" $ withoutEnd "java" `shouldBe` "av"
   it "\"odin\"" $ withoutEnd "coding" `shouldBe` "odin"
   it "\"ell\"" $ withoutEnd "Hello" `shouldBe` "ell"
   it "\"av\"" $ withoutEnd "java" `shouldBe` "av"
   it "\"odin\"" $ withoutEnd "coding" `shouldBe` "odin"

