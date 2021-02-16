{- From https://codingbat.com/prob/p139677
Given 2 arrays that are the same length containing strings, compare the 1st string 
in one array to the 1st string in the other array, the 2nd to the 2nd and so on. Count 
the number of times that the 2 strings are non-empty and start with the same char. The 
strings may be any length, including 0.
-}
import Test.Hspec ( hspec, describe, it, shouldBe )


matchUp :: [String] -> [String] -> Int
matchUp a b = undefined


main :: IO ()
main = hspec $ describe "Tests:" $ do
    it "1" $
        matchUp ["aa","bb","cc"] ["aaa","xx","bb"] `shouldBe` 1
    it "2" $
        matchUp ["aa","bb","cc"] ["aaa","b","bb"] `shouldBe` 2
    it "1" $
        matchUp ["aa","bb","cc"] ["","","ccc"] `shouldBe` 1
    it "1" $
        matchUp ["","","ccc"] ["aa","bb","cc"] `shouldBe` 1
    it "0" $
        matchUp ["","",""] ["","bb","cc"] `shouldBe` 0
    it "0" $
        matchUp ["aa","bb","cc"] ["","",""] `shouldBe` 0
    it "1" $
        matchUp ["aa","","ccc"] ["","bb","cc"] `shouldBe` 1
    it "0" $
        matchUp ["x","y","z"] ["y","z","x"] `shouldBe` 0
    it "1" $
        matchUp ["","y","z"] ["","y","x"] `shouldBe` 1
    it "3" $
        matchUp ["x","y","z"] ["xx","yyy","zzz"] `shouldBe` 3
    it "2" $
        matchUp ["x","y","z"] ["xx","yyy",""] `shouldBe` 2
    it "3" $
        matchUp ["b","x","y","z"] ["a","xx","yyy","zzz"] `shouldBe` 3
    it "1" $
        matchUp ["aaa","bb","c"] ["aaa","xx","bb"] `shouldBe` 1
