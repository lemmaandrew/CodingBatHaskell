{-From https://codingbat.com/prob/p144623
Given a string and an index, return a string length 2 starting at the given index. If
the index is too big or too small to define a string length 2, use the first 2 chars.
The string length will be at least 2.
-}
import Test.Hspec


twoChar :: String -> Int -> String
twoChar str index = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"ja\"" $ twoChar "java" 0 `shouldBe` "ja"
   it "\"va\"" $ twoChar "java" 2 `shouldBe` "va"
   it "\"ja\"" $ twoChar "java" 3 `shouldBe` "ja"
   it "\"ja\"" $ twoChar "java" 0 `shouldBe` "ja"
   it "\"va\"" $ twoChar "java" 2 `shouldBe` "va"
   it "\"ja\"" $ twoChar "java" 3 `shouldBe` "ja"

