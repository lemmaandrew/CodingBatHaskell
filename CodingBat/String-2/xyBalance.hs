{-From https://codingbat.com/prob/p134250
We'll say that a String is xy-balanced if for all the 'x' chars in the string, there
exists a 'y' char somewhere later in the string. So "xxy" is balanced, but "xyx" is not.
One 'y' can balance multiple 'x's. Return true if the given string is xy-balanced.
-}
import Test.Hspec


xyBalance :: String -> Bool
xyBalance str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ xyBalance "aaxbby" `shouldBe` True
   it "False" $ xyBalance "aaxbb" `shouldBe` False
   it "False" $ xyBalance "yaaxbb" `shouldBe` False
   it "True" $ xyBalance "aaxbby" `shouldBe` True
   it "False" $ xyBalance "aaxbb" `shouldBe` False
   it "False" $ xyBalance "yaaxbb" `shouldBe` False

