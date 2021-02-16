{- From https://codingbat.com/prob/p139586
Given a list of integers, return a list where each integer is multiplied with itself.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


square :: [Integer] -> [Integer]
square nums = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "[1,4,9]" $
        square [1,2,3] `shouldBe` [1,4,9]
    it "[36,64,36,64,1]" $
        square [6,8,(-6),(-8),1] `shouldBe` [36,64,36,64,1]
    it "[]" $
        square [] `shouldBe` []
    it "[144]" $
        square [12] `shouldBe` [144]
    it "[25,100]" $
        square [5,10] `shouldBe` [25,100]
    it "[36,9,144,529,16,1,361,121,4,9,4]" $
        square [6,(-3),12,23,4,1,19,11,2,3,2] `shouldBe` [36,9,144,529,16,1,361,121,4,9,4]
