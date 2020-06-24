{-From https://codingbat.com/prob/p199720
Given a string, return a string made of the first 2 chars (if present), however include
first char only if it is 'o' and include the second only if it is 'z', so "ozymandias"
yields "oz".
-}
import Test.Hspec


startOz :: String -> String
startOz str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"oz\"" $ startOz "ozymandias" `shouldBe` "oz"
   it "\"z\"" $ startOz "bzoo" `shouldBe` "z"
   it "\"o\"" $ startOz "oxx" `shouldBe` "o"

