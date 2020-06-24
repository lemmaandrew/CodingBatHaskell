{-From https://codingbat.com/prob/p136594
Return true if the given string contains an appearance of "xyz" where the xyz is not
directly preceeded by a period (.). So "xxyz" counts but "x.xyz" does not.
-}
import Test.Hspec


xyzThere :: String -> Bool
xyzThere str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ xyzThere "abcxyz" `shouldBe` True
   it "False" $ xyzThere "abc.xyz" `shouldBe` False
   it "True" $ xyzThere "xyz.abc" `shouldBe` True

