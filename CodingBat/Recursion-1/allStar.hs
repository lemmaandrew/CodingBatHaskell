{-From https://codingbat.com/prob/p183394
Given a string, compute recursively a new string where all the adjacent chars are now
separated by a "*".
-}
import Test.Hspec


allStar :: String -> String
allStar str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"h*e*l*l*o\"" $ allStar "hello" `shouldBe` "h*e*l*l*o"
   it "\"a*b*c\"" $ allStar "abc" `shouldBe` "a*b*c"
   it "\"a*b\"" $ allStar "ab" `shouldBe` "a*b"

