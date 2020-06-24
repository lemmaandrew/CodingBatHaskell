{-From https://codingbat.com/prob/p118230
Given a string, compute recursively a new string where all the 'x' chars have been removed.
-}
import Test.Hspec


noX :: String -> String
noX str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"ab\"" $ noX "xaxb" `shouldBe` "ab"
   it "\"abc\"" $ noX "abc" `shouldBe` "abc"
   it "\"\"" $ noX "xx" `shouldBe` ""
   it "\"ab\"" $ noX "xaxb" `shouldBe` "ab"
   it "\"abc\"" $ noX "abc" `shouldBe` "abc"
   it "\"\"" $ noX "xx" `shouldBe` ""

