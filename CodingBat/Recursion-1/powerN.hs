{-From https://codingbat.com/prob/p158888
Given base and n that are both 1 or more, compute recursively (no loops) the value of
base to the n power, so powerN(3, 2) is 9 (3 squared).
-}
import Test.Hspec


powerN :: Int -> Int -> Int
powerN base n = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "3" $ powerN 3 1 `shouldBe` 3
   it "9" $ powerN 3 2 `shouldBe` 9
   it "27" $ powerN 3 3 `shouldBe` 27
   it "3" $ powerN 3 1 `shouldBe` 3
   it "9" $ powerN 3 2 `shouldBe` 9
   it "27" $ powerN 3 3 `shouldBe` 27

