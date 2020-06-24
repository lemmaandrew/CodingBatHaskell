{-From https://codingbat.com/prob/p139150
Start with two arrays of strings, A and B, each with its elements in alphabetical order
and without duplicates. Return a new array containing the first N elements from the two
arrays. The result array should be in alphabetical order and without duplicates. A and
B will both have a length which is N or more. The best "linear" solution makes a single
pass over A and B, taking advantage of the fact that they are in alphabetical order,
copying elements directly to the new array.
-}
import Test.Hspec


mergeTwo :: [String] -> [String] -> Int -> [String]
mergeTwo a b n = undefined

main :: IO ()
main = hspec $ describe "Tests:" $ do
   it "[\"a\",\"b\",\"c\"]" $ mergeTwo ["a","c","z"] ["b","f","z"] 3 `shouldBe` ["a","b","c"]
   it "[\"a\",\"c\",\"f\"]" $ mergeTwo ["a","c","z"] ["c","f","z"] 3 `shouldBe` ["a","c","f"]
   it "[\"c\",\"f\",\"g\"]" $ mergeTwo ["f","g","z"] ["c","f","g"] 3 `shouldBe` ["c","f","g"]
   it "[\"a\",\"b\",\"c\"]" $ mergeTwo ["a","c","z"] ["b","f","z"] 3 `shouldBe` ["a","b","c"]
   it "[\"a\",\"c\",\"f\"]" $ mergeTwo ["a","c","z"] ["c","f","z"] 3 `shouldBe` ["a","c","f"]
   it "[\"c\",\"f\",\"g\"]" $ mergeTwo ["f","g","z"] ["c","f","g"] 3 `shouldBe` ["c","f","g"]

