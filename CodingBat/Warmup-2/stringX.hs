{-From https://codingbat.com/prob/p171260
Given a string, return a version where all the "x" have been removed. Except an "x" at
the very start or end should not be removed.
-}
import Test.Hspec


stringX :: String -> String
stringX str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"xHix\"" $ stringX "xxHxix" `shouldBe` "xHix"
   it "\"abcd\"" $ stringX "abxxxcd" `shouldBe` "abcd"
   it "\"xabcdx\"" $ stringX "xabxxxcdx" `shouldBe` "xabcdx"
   it "\"xHix\"" $ stringX "xxHxix" `shouldBe` "xHix"
   it "\"abcd\"" $ stringX "abxxxcd" `shouldBe` "abcd"
   it "\"xabcdx\"" $ stringX "xabxxxcdx" `shouldBe` "xabcdx"

