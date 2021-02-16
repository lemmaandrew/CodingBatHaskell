{- From https://codingbat.com/prob/p140449
We have a loud talking parrot. The \"hour\" parameter is the current hour time in 
the range 0..23. We are in trouble if the parrot is talking and the hour is before 7 
or after 20. Return true if we are in trouble.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


parrotTrouble :: Bool -> Int -> Bool
parrotTrouble talking hour = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        parrotTrouble True 6 `shouldBe` True
    it "False" $
        parrotTrouble True 7 `shouldBe` False
    it "False" $
        parrotTrouble False 6 `shouldBe` False
    it "True" $
        parrotTrouble True 21 `shouldBe` True
    it "False" $
        parrotTrouble False 21 `shouldBe` False
    it "False" $
        parrotTrouble False 20 `shouldBe` False
    it "True" $
        parrotTrouble True 23 `shouldBe` True
    it "False" $
        parrotTrouble False 23 `shouldBe` False
    it "False" $
        parrotTrouble True 20 `shouldBe` False
    it "False" $
        parrotTrouble False 12 `shouldBe` False
