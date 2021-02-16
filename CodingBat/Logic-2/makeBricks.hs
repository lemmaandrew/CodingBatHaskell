{- From https://codingbat.com/prob/p183562
We want to make a row of bricks that is goal inches long. We have a number of small 
bricks (1 inch each) and big bricks (5 inches each). Return true if it is possible to make 
the goal by choosing from the given bricks. This is a little harder than it looks and 
can be done without any loops. See also: Introduction to MakeBricks
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


makeBricks :: Int -> Int -> Int -> Bool
makeBricks small big goal = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "True" $
        makeBricks 3 1 8 `shouldBe` True
    it "False" $
        makeBricks 3 1 9 `shouldBe` False
    it "True" $
        makeBricks 3 2 10 `shouldBe` True
    it "True" $
        makeBricks 3 2 8 `shouldBe` True
    it "False" $
        makeBricks 3 2 9 `shouldBe` False
    it "True" $
        makeBricks 6 1 11 `shouldBe` True
    it "False" $
        makeBricks 6 0 11 `shouldBe` False
    it "True" $
        makeBricks 1 4 11 `shouldBe` True
    it "True" $
        makeBricks 0 3 10 `shouldBe` True
    it "False" $
        makeBricks 1 4 12 `shouldBe` False
    it "True" $
        makeBricks 3 1 7 `shouldBe` True
    it "False" $
        makeBricks 1 1 7 `shouldBe` False
    it "True" $
        makeBricks 2 1 7 `shouldBe` True
    it "True" $
        makeBricks 7 1 11 `shouldBe` True
    it "True" $
        makeBricks 7 1 8 `shouldBe` True
    it "False" $
        makeBricks 7 1 13 `shouldBe` False
    it "True" $
        makeBricks 43 1 46 `shouldBe` True
    it "False" $
        makeBricks 40 1 46 `shouldBe` False
    it "True" $
        makeBricks 40 2 47 `shouldBe` True
    it "True" $
        makeBricks 40 2 50 `shouldBe` True
    it "False" $
        makeBricks 40 2 52 `shouldBe` False
    it "False" $
        makeBricks 22 2 33 `shouldBe` False
    it "True" $
        makeBricks 0 2 10 `shouldBe` True
    it "True" $
        makeBricks 1000000 1000 1000100 `shouldBe` True
    it "False" $
        makeBricks 2 1000000 100003 `shouldBe` False
    it "True" $
        makeBricks 20 0 19 `shouldBe` True
    it "False" $
        makeBricks 20 0 21 `shouldBe` False
    it "False" $
        makeBricks 20 4 51 `shouldBe` False
    it "True" $
        makeBricks 20 4 39 `shouldBe` True
