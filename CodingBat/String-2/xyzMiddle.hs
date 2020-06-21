{-From https://codingbat.com/prob/p159772
Given a string, does "xyz" appear in the middle of the string? To define middle, we'll
say that the number of chars to the left and right of the "xyz" must differ by at most
one. This problem is harder than it looks.
-}
import Control.Exception (assert)


xyzMiddle :: String -> Boolean
xyzMiddle str = undefined

main = do
    assert (xyzMiddle "AAxyzBB" == true) (putStrLn "Test passed")
    assert (xyzMiddle "AxyzBB" == true) (putStrLn "Test passed")
    assert (xyzMiddle "AxyzBBB" == false) (putStrLn "Test passed")
    assert (xyzMiddle "AAxyzBB" == true) (putStrLn "Test passed")
    assert (xyzMiddle "AxyzBB" == true) (putStrLn "Test passed")
    assert (xyzMiddle "AxyzBBB" == false) (putStrLn "Test passed")

