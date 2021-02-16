{- From https://codingbat.com/prob/p150113
We'll say that 2 strings \"match\" if they are non-empty and their first chars are 
the same. Loop over and then return the given array of non-empty strings as follows: 
if a string matches an earlier string in the array, swap the 2 strings in the array. 
A particular first char can only cause 1 swap, so once a char has caused a swap, its 
later swaps are disabled. Using a map, this can be solved making just one pass over the 
array. More difficult than it looks.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


firstSwap :: [String] -> [String]
firstSwap strings = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "[\"ac\",\"ab\"]" $
        firstSwap ["ab","ac"] `shouldBe` ["ac","ab"]
    it "[\"ay\",\"by\",\"cy\",\"cx\",\"bx\",\"ax\",\"aaa\",\"azz\"]" $
        firstSwap ["ax","bx","cx","cy","by","ay","aaa","azz"] `shouldBe` ["ay","by","cy","cx","bx","ax","aaa","azz"]
    it "[\"ay\",\"by\",\"ax\",\"bx\",\"ai\",\"aj\",\"bx\",\"by\"]" $
        firstSwap ["ax","bx","ay","by","ai","aj","bx","by"] `shouldBe` ["ay","by","ax","bx","ai","aj","bx","by"]
    it "[\"ay\",\"bx\",\"cy\",\"ax\",\"cx\",\"aaa\",\"abb\"]" $
        firstSwap ["ax","bx","cx","ay","cy","aaa","abb"] `shouldBe` ["ay","bx","cy","ax","cx","aaa","abb"]
    it "[\"every\",\"does\",\"ice\",\"easy\",\"it\",\"eaten\"]" $
        firstSwap ["easy","does","it","every","ice","eaten"] `shouldBe` ["every","does","ice","easy","it","eaten"]
    it "[\"lily\",\"over\",\"water\",\"swims\",\"of\",\"list\",\"words\",\"wait\"]" $
        firstSwap ["list","of","words","swims","over","lily","water","wait"] `shouldBe` ["lily","over","water","swims","of","list","words","wait"]
    it "[\"42\",\"8\",\"16\",\"15\",\"23\",\"4\"]" $
        firstSwap ["4","8","15","16","23","42"] `shouldBe` ["42","8","16","15","23","4"]
    it "[\"aaa\"]" $
        firstSwap ["aaa"] `shouldBe` ["aaa"]
    it "[]" $
        firstSwap [] `shouldBe` []
    it "[\"a\",\"b\",\"c\",\"xx\",\"yy\",\"zz\"]" $
        firstSwap ["a","b","c","xx","yy","zz"] `shouldBe` ["a","b","c","xx","yy","zz"]
