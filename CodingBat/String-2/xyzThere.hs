{-From https://codingbat.com/prob/p136594
Return true if the given string contains an appearance of "xyz" where the xyz is not
directly preceeded by a period (.). So "xxyz" counts but "x.xyz" does not.
-}
import Test.Hspec


xyzThere :: String -> Boolean
xyzThere str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ xyzThere "abcxyz" `shouldBe` true
   it "false" $ xyzThere "abc.xyz" `shouldBe` false
   it "true" $ xyzThere "xyz.abc" `shouldBe` true

