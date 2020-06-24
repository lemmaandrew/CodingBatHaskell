{-From https://codingbat.com/prob/p103869
Given a list of integers, return a list where each integer is added to 1 and the result
is multiplied by 10.
-}
import Test.Hspec


math1 :: [Integer] -> [Integer]
math1 nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "[20,30,40]" $ math1 [1,2,3] `shouldBe` [20,30,40]
   it "[70,90,70,90,20]" $ math1 [6,8,6,8,1] `shouldBe` [70,90,70,90,20]
   it "[110]" $ math1 [10] `shouldBe` [110]
   it "[20,30,40]" $ math1 [1,2,3] `shouldBe` [20,30,40]
   it "[70,90,70,90,20]" $ math1 [6,8,6,8,1] `shouldBe` [70,90,70,90,20]
   it "[110]" $ math1 [10] `shouldBe` [110]

