{-From https://codingbat.com/prob/p151713
Return true if the given string begins with "mix", except the 'm' can be anything, so
"pix", "9ix" .. all count.
-}
import Test.Hspec


mixStart :: String -> Bool
mixStart str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ mixStart "mixsnacks" `shouldBe` True
   it "True" $ mixStart "pixsnacks" `shouldBe` True
   it "False" $ mixStart "pizsnacks" `shouldBe` False

