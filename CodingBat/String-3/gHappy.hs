{-From https://codingbat.com/prob/p198664
We'll say that a lowercase 'g' in a string is "happy" if there is another 'g' immediately
to its left or right. Return true if all the g's in the given string are happy.
-}
import Control.Exception (assert)


gHappy :: String -> Boolean
gHappy str = undefined

main = do
    assert (gHappy "xxggxx" == true) (putStrLn "Test passed")
    assert (gHappy "xxgxx" == false) (putStrLn "Test passed")
    assert (gHappy "xxggyygxx" == false) (putStrLn "Test passed")
    assert (gHappy "xxggxx" == true) (putStrLn "Test passed")
    assert (gHappy "xxgxx" == false) (putStrLn "Test passed")
    assert (gHappy "xxggyygxx" == false) (putStrLn "Test passed")

