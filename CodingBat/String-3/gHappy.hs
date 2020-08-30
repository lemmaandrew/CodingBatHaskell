{-From https://codingbat.com/prob/p198664
We'll say that a lowercase 'g' in a string is "happy" if there is another 'g' immediately
to its left or right. Return true if all the g's in the given string are happy.
-}
import Test.Hspec


gHappy :: String -> Boolean
gHappy str = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ gHappy "xxggxx" `shouldBe` true
   it "false" $ gHappy "xxgxx" `shouldBe` false
   it "false" $ gHappy "xxggyygxx" `shouldBe` false

