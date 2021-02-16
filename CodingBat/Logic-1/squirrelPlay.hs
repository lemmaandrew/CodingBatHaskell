{- From https://codingbat.com/prob/p141061
The squirrels in Palo Alto spend most of the day playing. In particular, they play 
if the temperature is between 60 and 90 (inclusive). Unless it is summer, then the 
upper limit is 100 instead of 90. Given an int temperature and a boolean isSummer, return 
true if the squirrels play and false otherwise.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


squirrelPlay :: Int -> Bool -> Bool
squirrelPlay temp isSummer = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        squirrelPlay 70 False `shouldBe` True
    it "False" $
        squirrelPlay 95 False `shouldBe` False
    it "True" $
        squirrelPlay 95 True `shouldBe` True
    it "True" $
        squirrelPlay 90 False `shouldBe` True
    it "True" $
        squirrelPlay 90 True `shouldBe` True
    it "False" $
        squirrelPlay 50 False `shouldBe` False
    it "False" $
        squirrelPlay 50 True `shouldBe` False
    it "False" $
        squirrelPlay 100 False `shouldBe` False
    it "True" $
        squirrelPlay 100 True `shouldBe` True
    it "False" $
        squirrelPlay 105 True `shouldBe` False
    it "False" $
        squirrelPlay 59 False `shouldBe` False
    it "False" $
        squirrelPlay 59 True `shouldBe` False
    it "True" $
        squirrelPlay 60 False `shouldBe` True
