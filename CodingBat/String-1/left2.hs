{- From https://codingbat.com/prob/p197720
Given a string, return a \"rotated left 2\" version where the first 2 chars are moved 
to the end. The string length will be at least 2.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


left2 :: String -> String
left2 str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "\"lloHe\"" $
        left2 "Hello" `shouldBe` "lloHe"
    it "\"vaja\"" $
        left2 "java" `shouldBe` "vaja"
    it "\"Hi\"" $
        left2 "Hi" `shouldBe` "Hi"
    it "\"deco\"" $
        left2 "code" `shouldBe` "deco"
    it "\"tca\"" $
        left2 "cat" `shouldBe` "tca"
    it "\"34512\"" $
        left2 "12345" `shouldBe` "34512"
    it "\"ocolateCh\"" $
        left2 "Chocolate" `shouldBe` "ocolateCh"
    it "\"icksbr\"" $
        left2 "bricks" `shouldBe` "icksbr"
