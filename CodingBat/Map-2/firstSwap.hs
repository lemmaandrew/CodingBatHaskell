{-From https://codingbat.com/prob/p150113
We'll say that 2 strings "match" if they are non-empty and their first chars are the
same. Loop over and then return the given array of non-empty strings as follows: if a
string matches an earlier string in the array, swap the 2 strings in the array. A particular
first char can only cause 1 swap, so once a char has caused a swap, its later swaps
are disabled. Using a map, this can be solved making just one pass over the array. More
difficult than it looks.
-}
import Test.Hspec


firstSwap :: [String] -> [String]
firstSwap strings = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "[\"ac\",\"ab\"]" $ firstSwap ["ab","ac"] `shouldBe` ["ac","ab"]
   it "[\"ay\",\"by\",\"cy\",\"cx\",\"bx\",\"ax\",\"aaa\",\"azz\"]" $ firstSwap ["ax","bx","cx","cy","by","ay","aaa","azz"] `shouldBe` ["ay","by","cy","cx","bx","ax","aaa","azz"]
   it "[\"ay\",\"by\",\"ax\",\"bx\",\"ai\",\"aj\",\"bx\",\"by\"]" $ firstSwap ["ax","bx","ay","by","ai","aj","bx","by"] `shouldBe` ["ay","by","ax","bx","ai","aj","bx","by"]
   it "[\"ac\",\"ab\"]" $ firstSwap ["ab","ac"] `shouldBe` ["ac","ab"]
   it "[\"ay\",\"by\",\"cy\",\"cx\",\"bx\",\"ax\",\"aaa\",\"azz\"]" $ firstSwap ["ax","bx","cx","cy","by","ay","aaa","azz"] `shouldBe` ["ay","by","cy","cx","bx","ax","aaa","azz"]
   it "[\"ay\",\"by\",\"ax\",\"bx\",\"ai\",\"aj\",\"bx\",\"by\"]" $ firstSwap ["ax","bx","ay","by","ai","aj","bx","by"] `shouldBe` ["ay","by","ax","bx","ai","aj","bx","by"]

