{-From https://codingbat.com/prob/p142270
Given a string and a non-negative int n, return a larger string that is n copies of
the original string.
-}
import Test.Hspec


stringTimes :: String -> Int -> String
stringTimes str n = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "\"HiHi\"" $ stringTimes "Hi" 2 `shouldBe` "HiHi"
   it "\"HiHiHi\"" $ stringTimes "Hi" 3 `shouldBe` "HiHiHi"
   it "\"Hi\"" $ stringTimes "Hi" 1 `shouldBe` "Hi"
   it "\"HiHi\"" $ stringTimes "Hi" 2 `shouldBe` "HiHi"
   it "\"HiHiHi\"" $ stringTimes "Hi" 3 `shouldBe` "HiHiHi"
   it "\"Hi\"" $ stringTimes "Hi" 1 `shouldBe` "Hi"

