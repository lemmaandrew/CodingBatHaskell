{-From https://codingbat.com/prob/p194491
Returns true if for every '*' (star) in the string, if there are chars both immediately
before and after the star, they are the same.
-}
import Test.Hspec


sameStarChar :: String -> Boolean
sameStarChar str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ sameStarChar "xy*yzz" `shouldBe` true
   it "false" $ sameStarChar "xy*zzz" `shouldBe` false
   it "true" $ sameStarChar "*xa*az" `shouldBe` true

