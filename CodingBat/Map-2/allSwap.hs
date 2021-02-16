{- From https://codingbat.com/prob/p134133
We'll say that 2 strings \"match\" if they are non-empty and their first chars are 
the same. Loop over and then return the given array of non-empty strings as follows: 
if a string matches an earlier string in the array, swap the 2 strings in the array. 
When a position in the array has been swapped, it no longer matches anything. Using a 
map, this can be solved making just one pass over the array. More difficult than it looks.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


allSwap :: [String] -> [String]
allSwap strings = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "[\"ac\",\"ab\"]" $
        allSwap ["ab","ac"] `shouldBe` ["ac","ab"]
    it "[\"ay\",\"by\",\"cy\",\"cx\",\"bx\",\"ax\",\"azz\",\"aaa\"]" $
        allSwap ["ax","bx","cx","cy","by","ay","aaa","azz"] `shouldBe` ["ay","by","cy","cx","bx","ax","azz","aaa"]
    it "[\"ay\",\"by\",\"ax\",\"bx\",\"aj\",\"ai\",\"by\",\"bx\"]" $
        allSwap ["ax","bx","ay","by","ai","aj","bx","by"] `shouldBe` ["ay","by","ax","bx","aj","ai","by","bx"]
    it "[\"ay\",\"bx\",\"cy\",\"ax\",\"cx\",\"abb\",\"aaa\"]" $
        allSwap ["ax","bx","cx","ay","cy","aaa","abb"] `shouldBe` ["ay","bx","cy","ax","cx","abb","aaa"]
    it "[\"every\",\"does\",\"ice\",\"easy\",\"it\",\"eaten\"]" $
        allSwap ["easy","does","it","every","ice","eaten"] `shouldBe` ["every","does","ice","easy","it","eaten"]
    it "[\"lily\",\"over\",\"water\",\"swims\",\"of\",\"list\",\"words\",\"wait\"]" $
        allSwap ["list","of","words","swims","over","lily","water","wait"] `shouldBe` ["lily","over","water","swims","of","list","words","wait"]
    it "[\"42\",\"8\",\"16\",\"15\",\"23\",\"4\"]" $
        allSwap ["4","8","15","16","23","42"] `shouldBe` ["42","8","16","15","23","4"]
    it "[\"aaa\"]" $
        allSwap ["aaa"] `shouldBe` ["aaa"]
    it "[]" $
        allSwap [] `shouldBe` []
    it "[\"a\",\"b\",\"c\",\"xx\",\"yy\",\"zz\"]" $
        allSwap ["a","b","c","xx","yy","zz"] `shouldBe` ["a","b","c","xx","yy","zz"]
