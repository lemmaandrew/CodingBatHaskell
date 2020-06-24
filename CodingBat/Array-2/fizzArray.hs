{-From https://codingbat.com/prob/p180920
Given a number n, create and return a new int array of length n, containing the numbers
0, 1, 2, ... n-1. The given n may be 0, in which case just return a length 0 array.
You do not need a separate if-statement for the length-0 case; the for-loop should naturally
execute 0 times in that case, so it just works. The syntax to make a new int array
is: new int[desired_length]    ÿ (See also: FizzBuzz Code)
-}
import Test.Hspec


fizzArray :: Int -> [Int]
fizzArray n = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "[0,1,2,3]" $ fizzArray 4 `shouldBe` [0,1,2,3]
   it "[0]" $ fizzArray 1 `shouldBe` [0]
   it "[0,1,2,3,4,5,6,7,8,9]" $ fizzArray 10 `shouldBe` [0,1,2,3,4,5,6,7,8,9]
   it "[0,1,2,3]" $ fizzArray 4 `shouldBe` [0,1,2,3]
   it "[0]" $ fizzArray 1 `shouldBe` [0]
   it "[0,1,2,3,4,5,6,7,8,9]" $ fizzArray 10 `shouldBe` [0,1,2,3,4,5,6,7,8,9]

