{- From https://codingbat.com/prob/p196652
Given a string, return true if the first 2 chars in the string also appear at the 
end of the string, such as with \"edited\".
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


frontAgain :: String -> Bool
frontAgain str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        frontAgain "edited" `shouldBe` True
    it "False" $
        frontAgain "edit" `shouldBe` False
    it "True" $
        frontAgain "ed" `shouldBe` True
    it "True" $
        frontAgain "jj" `shouldBe` True
    it "True" $
        frontAgain "jjj" `shouldBe` True
    it "True" $
        frontAgain "jjjj" `shouldBe` True
    it "False" $
        frontAgain "jjjk" `shouldBe` False
    it "False" $
        frontAgain "x" `shouldBe` False
    it "False" $
        frontAgain "" `shouldBe` False
    it "False" $
        frontAgain "java" `shouldBe` False
    it "True" $
        frontAgain "javaja" `shouldBe` True
