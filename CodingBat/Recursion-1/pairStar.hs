{-From https://codingbat.com/prob/p158175
Given a string, compute recursively a new string where identical chars that are adjacent
in the original string are separated from each other by a "*".
-}
import Test.Hspec


pairStar :: String -> String
pairStar str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"hel*lo\"" $ pairStar "hello" `shouldBe` "hel*lo"
   it "\"x*xy*y\"" $ pairStar "xxyy" `shouldBe` "x*xy*y"
   it "\"a*a*a*a\"" $ pairStar "aaaa" `shouldBe` "a*a*a*a"
   it "\"hel*lo\"" $ pairStar "hello" `shouldBe` "hel*lo"
   it "\"x*xy*y\"" $ pairStar "xxyy" `shouldBe` "x*xy*y"
   it "\"a*a*a*a\"" $ pairStar "aaaa" `shouldBe` "a*a*a*a"

