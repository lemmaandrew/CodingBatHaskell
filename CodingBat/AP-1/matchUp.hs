{-From https://codingbat.com/prob/p139677
Given 2 arrays that are the same length containing strings, compare the 1st string in
one array to the 1st string in the other array, the 2nd to the 2nd and so on. Count
the number of times that the 2 strings are non-empty and start with the same char. The
strings may be any length, including 0.
-}
import Test.Hspec


matchUp :: [String] -> [String] -> Int
matchUp a b = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "1" $ matchUp ["aa", "bb", "cc"] ["aaa", "xx", "bb"] `shouldBe` 1
   it "2" $ matchUp ["aa", "bb", "cc"] ["aaa", "b", "bb"] `shouldBe` 2
   it "1" $ matchUp ["aa", "bb", "cc"] ["", "", "ccc"] `shouldBe` 1

