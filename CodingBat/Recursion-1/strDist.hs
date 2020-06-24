{-From https://codingbat.com/prob/p195413
Given a string and a non-empty substring sub, compute recursively the largest substring
which starts and ends with sub and return its length.
-}
import Test.Hspec


strDist :: String -> String -> Int
strDist str sub = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "9" $ strDist "catcowcat" "cat" `shouldBe` 9
   it "3" $ strDist "catcowcat" "cow" `shouldBe` 3
   it "9" $ strDist "cccatcowcatxx" "cat" `shouldBe` 9

