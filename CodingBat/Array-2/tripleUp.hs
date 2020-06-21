{-From https://codingbat.com/prob/p137874
Return true if the array contains, somewhere, three increasing adjacent numbers like ....
4, 5, 6, ... or 23, 24, 25.
-}
import Control.Exception (assert)


tripleUp :: [Int] -> Boolean
tripleUp nums = undefined

main = do
    assert (tripleUp [1,4,5,6,2] == true) (putStrLn "Test passed")
    assert (tripleUp [1,2,3] == true) (putStrLn "Test passed")
    assert (tripleUp [1,2,4] == false) (putStrLn "Test passed")
    assert (tripleUp [1,4,5,6,2] == true) (putStrLn "Test passed")
    assert (tripleUp [1,2,3] == true) (putStrLn "Test passed")
    assert (tripleUp [1,2,4] == false) (putStrLn "Test passed")

