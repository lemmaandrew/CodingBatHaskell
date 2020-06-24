{-From https://codingbat.com/prob/p198664
We'll say that a lowercase 'g' in a string is "happy" if there is another 'g' immediately
to its left or right. Return true if all the g's in the given string are happy.
-}
import Test.Hspec


gHappy :: String -> Bool
gHappy str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ gHappy "xxggxx" `shouldBe` True
   it "False" $ gHappy "xxgxx" `shouldBe` False
   it "False" $ gHappy "xxggyygxx" `shouldBe` False

