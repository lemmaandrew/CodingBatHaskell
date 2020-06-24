{-From https://codingbat.com/prob/p194491
Returns true if for every '*' (star) in the string, if there are chars both immediately
before and after the star, they are the same.
-}
import Test.Hspec


sameStarChar :: String -> Bool
sameStarChar str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ sameStarChar "xy*yzz" `shouldBe` True
   it "False" $ sameStarChar "xy*zzz" `shouldBe` False
   it "True" $ sameStarChar "*xa*az" `shouldBe` True
   it "True" $ sameStarChar "xy*yzz" `shouldBe` True
   it "False" $ sameStarChar "xy*zzz" `shouldBe` False
   it "True" $ sameStarChar "*xa*az" `shouldBe` True

