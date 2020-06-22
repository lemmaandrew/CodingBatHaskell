{-From https://codingbat.com/prob/p126332
Given an array of non-empty strings, create and return a Map<String, String> as follows:
for each string add its first character as a key with its last character as the value.
-}
import Control.Exception (assert)
import qualified Data.Map.Strict as Map


pairs :: [String] -> Map.Map String String
pairs strings = undefined

main :: IO ()
main = do
    assert (pairs ["code","bug"] == (Map.fromList [("b","g"),("c","e")])) (putStrLn "Test passed")
    assert (pairs ["man","moon","main"] == (Map.fromList [("m","n")])) (putStrLn "Test passed")
    assert (pairs ["man","moon","good","night"] == (Map.fromList [("g","d"),("m","n"),("n","t")])) (putStrLn "Test passed")
    assert (pairs ["code","bug"] == (Map.fromList [("b","g"),("c","e")])) (putStrLn "Test passed")
    assert (pairs ["man","moon","main"] == (Map.fromList [("m","n")])) (putStrLn "Test passed")
    assert (pairs ["man","moon","good","night"] == (Map.fromList [("g","d"),("m","n"),("n","t")])) (putStrLn "Test passed")

