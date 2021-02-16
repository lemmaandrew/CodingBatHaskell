{- From https://codingbat.com/prob/p183394
Given a string, compute recursively a new string where all the adjacent chars are 
now separated by a \"*\".
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


allStar :: String -> String
allStar str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"h*e*l*l*o\"" $
        allStar "hello" `shouldBe` "h*e*l*l*o"
    it "\"a*b*c\"" $
        allStar "abc" `shouldBe` "a*b*c"
    it "\"a*b\"" $
        allStar "ab" `shouldBe` "a*b"
    it "\"a\"" $
        allStar "a" `shouldBe` "a"
    it "\"\"" $
        allStar "" `shouldBe` ""
    it "\"3*.*1*4\"" $
        allStar "3.14" `shouldBe` "3*.*1*4"
    it "\"C*h*o*c*o*l*a*t*e\"" $
        allStar "Chocolate" `shouldBe` "C*h*o*c*o*l*a*t*e"
    it "\"1*2*3*4\"" $
        allStar "1234" `shouldBe` "1*2*3*4"
