{-From https://codingbat.com/prob/p159772
Given a string, does "xyz" appear in the middle of the string? To define middle, we'll
say that the number of chars to the left and right of the "xyz" must differ by at most
one. This problem is harder than it looks.
-}
import Test.Hspec


xyzMiddle :: String -> Boolean
xyzMiddle str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ xyzMiddle "AAxyzBB" `shouldBe` true
   it "true" $ xyzMiddle "AxyzBB" `shouldBe` true
   it "false" $ xyzMiddle "AxyzBBB" `shouldBe` false

