{-From https://codingbat.com/prob/p198664
We'll say that a lowercase 'g' in a string is "happy" if there is another 'g' immediately
to its left or right. Return true if all the g's in the given string are happy.
-}
import Control.Exception (assert)


gHappy :: String -> Bool
gHappy str = undefined

main :: IO ()
main = do
    assert (gHappy "xxggxx" == True) (putStrLn "Test passed")
    assert (gHappy "xxgxx" == False) (putStrLn "Test passed")
    assert (gHappy "xxggyygxx" == False) (putStrLn "Test passed")
    assert (gHappy "xxggxx" == True) (putStrLn "Test passed")
    assert (gHappy "xxgxx" == False) (putStrLn "Test passed")
    assert (gHappy "xxggyygxx" == False) (putStrLn "Test passed")

