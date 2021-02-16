{- From https://codingbat.com/prob/p103869
Given a list of integers, return a list where each integer is added to 1 and the 
result is multiplied by 10.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


math1 :: [Integer] -> [Integer]
math1 nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "[20,30,40]" $
        math1 [1,2,3] `shouldBe` [20,30,40]
    it "[70,90,70,90,20]" $
        math1 [6,8,6,8,1] `shouldBe` [70,90,70,90,20]
    it "[110]" $
        math1 [10] `shouldBe` [110]
    it "[]" $
        math1 [] `shouldBe` []
    it "[60,110]" $
        math1 [5,10] `shouldBe` [60,110]
    it "[0,(-10),(-20),(-10),0]" $
        math1 [(-1),(-2),(-3),(-2),(-1)] `shouldBe` [0,(-10),(-20),(-10),0]
    it "[70,(-20),130,240,50,20,200,120,30,40,30]" $
        math1 [6,(-3),12,23,4,1,19,11,2,3,2] `shouldBe` [70,(-20),130,240,50,20,200,120,30,40,30]
