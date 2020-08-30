{-From https://codingbat.com/prob/p134250
We'll say that a String is xy-balanced if for all the 'x' chars in the string, there
exists a 'y' char somewhere later in the string. So "xxy" is balanced, but "xyx" is not.
One 'y' can balance multiple 'x's. Return true if the given string is xy-balanced.
-}
import Test.Hspec


xyBalance :: String -> Boolean
xyBalance str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ xyBalance "aaxbby" `shouldBe` true
   it "false" $ xyBalance "aaxbb" `shouldBe` false
   it "false" $ xyBalance "yaaxbb" `shouldBe` false

