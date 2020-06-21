{-From https://codingbat.com/prob/p141061
The squirrels in Palo Alto spend most of the day playing. In particular, they play if
the temperature is between 60 and 90 (inclusive). Unless it is summer, then the upper
limit is 100 instead of 90. Given an int temperature and a boolean isSummer, return true
if the squirrels play and false otherwise.
-}
import Control.Exception (assert)


squirrelPlay :: Int -> Boolean -> Boolean
squirrelPlay temp isSummer = undefined

main = do
    assert (squirrelPlay 70 false == true) (putStrLn "Test passed")
    assert (squirrelPlay 95 false == false) (putStrLn "Test passed")
    assert (squirrelPlay 95 true == true) (putStrLn "Test passed")
    assert (squirrelPlay 70 false == true) (putStrLn "Test passed")
    assert (squirrelPlay 95 false == false) (putStrLn "Test passed")
    assert (squirrelPlay 95 true == true) (putStrLn "Test passed")

