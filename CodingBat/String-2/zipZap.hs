{-From https://codingbat.com/prob/p180759
Look for patterns like "zip" and "zap" in the string -- length-3, starting with 'z' and
ending with 'p'. Return a string where for all such words, the middle letter is gone,
so "zipXzap" yields "zpXzp".
-}
import Test.Hspec


zipZap :: String -> String
zipZap str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"zpXzp\"" $ zipZap "zipXzap" `shouldBe` "zpXzp"
   it "\"zpzp\"" $ zipZap "zopzop" `shouldBe` "zpzp"
   it "\"zzzpzp\"" $ zipZap "zzzopzop" `shouldBe` "zzzpzp"

