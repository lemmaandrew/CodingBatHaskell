{-From https://codingbat.com/prob/p137874
Return true if the array contains, somewhere, three increasing adjacent numbers like ....
4, 5, 6, ... or 23, 24, 25.
-}
import Test.Hspec


tripleUp :: [Int] -> Bool
tripleUp nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "True" $ tripleUp [1,4,5,6,2] `shouldBe` True
   it "True" $ tripleUp [1,2,3] `shouldBe` True
   it "False" $ tripleUp [1,2,4] `shouldBe` False

