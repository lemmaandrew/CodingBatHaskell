{- From https://codingbat.com/prob/p194491
Returns true if for every '*' (star) in the string, if there are chars both immediately 
before and after the star, they are the same.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


sameStarChar :: String -> Bool
sameStarChar str = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        sameStarChar "xy*yzz" `shouldBe` True
    it "False" $
        sameStarChar "xy*zzz" `shouldBe` False
    it "True" $
        sameStarChar "*xa*az" `shouldBe` True
    it "False" $
        sameStarChar "*xa*bz" `shouldBe` False
    it "True" $
        sameStarChar "*xa*a*" `shouldBe` True
    it "True" $
        sameStarChar "" `shouldBe` True
    it "True" $
        sameStarChar "*xa*a*a" `shouldBe` True
    it "False" $
        sameStarChar "*xa*a*b" `shouldBe` False
    it "True" $
        sameStarChar "*12*2*2" `shouldBe` True
    it "False" $
        sameStarChar "12*2*3*" `shouldBe` False
    it "True" $
        sameStarChar "abcDEF" `shouldBe` True
    it "False" $
        sameStarChar "XY*YYYY*Z*" `shouldBe` False
    it "True" $
        sameStarChar "XY*YYYY*Y*" `shouldBe` True
    it "False" $
        sameStarChar "12*2*3*" `shouldBe` False
    it "True" $
        sameStarChar "*" `shouldBe` True
    it "True" $
        sameStarChar "**" `shouldBe` True
