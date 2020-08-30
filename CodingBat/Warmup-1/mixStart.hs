{-From https://codingbat.com/prob/p151713
Return true if the given string begins with "mix", except the 'm' can be anything, so
"pix", "9ix" .. all count.
-}
import Test.Hspec


mixStart :: String -> Boolean
mixStart str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ mixStart "mix snacks" `shouldBe` true
   it "true" $ mixStart "pix snacks" `shouldBe` true
   it "false" $ mixStart "piz snacks" `shouldBe` false

