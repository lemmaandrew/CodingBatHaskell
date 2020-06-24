{-From https://codingbat.com/prob/p139564
Return a version of the given string, where for every star (*) in the string the star
and the chars immediately to its left and right are gone. So "ab*cd" yields "ad" and
"ab**cd" also yields "ad".
-}
import Test.Hspec


starOut :: String -> String
starOut str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"ad\"" $ starOut "ab*cd" `shouldBe` "ad"
   it "\"ad\"" $ starOut "ab**cd" `shouldBe` "ad"
   it "\"silly\"" $ starOut "sm*eilly" `shouldBe` "silly"

