{-From https://codingbat.com/prob/p199484
For each multiple of 10 in the given array, change all the values following it to be
that multiple of 10, until encountering another multiple of 10. So {2, 10, 3, 4, 20,
5} yields {2, 10, 10, 10, 20, 20}.
-}
import Control.Exception (assert)


tenRun :: [Int] -> [Int]
tenRun nums = undefined

main :: IO ()
main = do
    assert (tenRun [2,10,3,4,20,5] == [2,10,10,10,20,20]) (putStrLn "Test passed")
    assert (tenRun [10,1,20,2] == [10,10,20,20]) (putStrLn "Test passed")
    assert (tenRun [10,1,9,20] == [10,10,10,20]) (putStrLn "Test passed")
    assert (tenRun [2,10,3,4,20,5] == [2,10,10,10,20,20]) (putStrLn "Test passed")
    assert (tenRun [10,1,20,2] == [10,10,20,20]) (putStrLn "Test passed")
    assert (tenRun [10,1,9,20] == [10,10,10,20]) (putStrLn "Test passed")

