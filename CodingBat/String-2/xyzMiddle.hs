{-From https://codingbat.com/prob/p159772
Given a string, does "xyz" appear in the middle of the string? To define middle, we'll
say that the number of chars to the left and right of the "xyz" must differ by at most
one. This problem is harder than it looks.
-}
import Control.Exception (assert)


xyzMiddle :: String -> Bool
xyzMiddle str = undefined

main :: IO ()
main = do
    assert (xyzMiddle "AAxyzBB" == True) (putStrLn "Test passed")
    assert (xyzMiddle "AxyzBB" == True) (putStrLn "Test passed")
    assert (xyzMiddle "AxyzBBB" == False) (putStrLn "Test passed")
    assert (xyzMiddle "AAxyzBB" == True) (putStrLn "Test passed")
    assert (xyzMiddle "AxyzBB" == True) (putStrLn "Test passed")
    assert (xyzMiddle "AxyzBBB" == False) (putStrLn "Test passed")

