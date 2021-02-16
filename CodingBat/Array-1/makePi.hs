{- From https://codingbat.com/prob/p167011
Return an int array length 3 containing the first 3 digits of pi, {3, 1, 4}.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


makePi :: [Int]
makePi = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "[3,1,4]" $
        makePi `shouldBe` [3,1,4]
