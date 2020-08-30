{-From https://codingbat.com/prob/p137874
Return true if the array contains, somewhere, three increasing adjacent numbers like ....
4, 5, 6, ... or 23, 24, 25.
-}
import Test.Hspec


tripleUp :: [Int] -> Boolean
tripleUp nums = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "true" $ tripleUp [1, 4, 5, 6, 2] `shouldBe` true
   it "true" $ tripleUp [1, 2, 3] `shouldBe` true
   it "false" $ tripleUp [1, 2, 4] `shouldBe` false

