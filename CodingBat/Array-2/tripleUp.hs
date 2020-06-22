{-From https://codingbat.com/prob/p137874
Return true if the array contains, somewhere, three increasing adjacent numbers like ....
4, 5, 6, ... or 23, 24, 25.
-}
import Control.Exception (assert)


tripleUp :: [Int] -> Bool
tripleUp nums = undefined

main :: IO ()
main = do
    assert (tripleUp [1,4,5,6,2] == True) (putStrLn "Test passed")
    assert (tripleUp [1,2,3] == True) (putStrLn "Test passed")
    assert (tripleUp [1,2,4] == False) (putStrLn "Test passed")
    assert (tripleUp [1,4,5,6,2] == True) (putStrLn "Test passed")
    assert (tripleUp [1,2,3] == True) (putStrLn "Test passed")
    assert (tripleUp [1,2,4] == False) (putStrLn "Test passed")

