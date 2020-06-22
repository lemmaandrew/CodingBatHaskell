{-From https://codingbat.com/prob/p123614
Return the number of times that the string "code" appears anywhere in the given string,
except we'll accept any letter for the 'd', so "cope" and "cooe" count.
-}
import Control.Exception (assert)


countCode :: String -> Int
countCode str = undefined

main :: IO ()
main = do
    assert (countCode "aaacodebbb" == 1) (putStrLn "Test passed")
    assert (countCode "codexxcode" == 2) (putStrLn "Test passed")
    assert (countCode "cozexxcope" == 2) (putStrLn "Test passed")
    assert (countCode "aaacodebbb" == 1) (putStrLn "Test passed")
    assert (countCode "codexxcode" == 2) (putStrLn "Test passed")
    assert (countCode "cozexxcope" == 2) (putStrLn "Test passed")

