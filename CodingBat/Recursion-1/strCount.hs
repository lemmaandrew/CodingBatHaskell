{-From https://codingbat.com/prob/p186177
Given a string and a non-empty substring sub, compute recursively the number of times that
sub appears in the string, without the sub strings overlapping.
-}
import Test.Hspec


strCount :: String -> String -> Int
strCount str sub = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "2" $ strCount "catcowcat" "cat" `shouldBe` 2
   it "1" $ strCount "catcowcat" "cow" `shouldBe` 1
   it "0" $ strCount "catcowcat" "dog" `shouldBe` 0

