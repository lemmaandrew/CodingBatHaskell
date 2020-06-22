{-From https://codingbat.com/prob/p121596
Given a string, return a string made of the chars at indexes 0,1, 4,5, 8,9 ... so "kittens"
yields "kien".
-}
import Control.Exception (assert)


altPairs :: String -> String
altPairs str = undefined

main :: IO ()
main = do
    assert (altPairs "kitten" == "kien") (putStrLn "Test passed")
    assert (altPairs "Chocolate" == "Chole") (putStrLn "Test passed")
    assert (altPairs "CodingHorror" == "Congrr") (putStrLn "Test passed")
    assert (altPairs "kitten" == "kien") (putStrLn "Test passed")
    assert (altPairs "Chocolate" == "Chole") (putStrLn "Test passed")
    assert (altPairs "CodingHorror" == "Congrr") (putStrLn "Test passed")

