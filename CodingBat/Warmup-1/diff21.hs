{-From https://codingbat.com/prob/p116624
Given an int n, return the absolute difference between n and 21, except return double
the absolute difference if n is over 21.
-}
import Test.Hspec


diff21 :: Int -> Int
diff21 n = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "2" $ diff21 19 `shouldBe` 2
   it "11" $ diff21 10 `shouldBe` 11
   it "0" $ diff21 21 `shouldBe` 0
   it "2" $ diff21 19 `shouldBe` 2
   it "11" $ diff21 10 `shouldBe` 11
   it "0" $ diff21 21 `shouldBe` 0

