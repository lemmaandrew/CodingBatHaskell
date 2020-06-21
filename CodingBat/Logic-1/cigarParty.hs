{-From https://codingbat.com/prob/p159531
When squirrels get together for a party, they like to have cigars. A squirrel party is
successful when the number of cigars is between 40 and 60, inclusive. Unless it is the
weekend, in which case there is no upper bound on the number of cigars. Return true if
the party with the given values is successful, or false otherwise.
-}
import Control.Exception (assert)


cigarParty :: Int -> Boolean -> Boolean
cigarParty cigars isWeekend = undefined

main = do
    assert (cigarParty 30 false == false) (putStrLn "Test passed")
    assert (cigarParty 50 false == true) (putStrLn "Test passed")
    assert (cigarParty 70 true == true) (putStrLn "Test passed")
    assert (cigarParty 30 false == false) (putStrLn "Test passed")
    assert (cigarParty 50 false == true) (putStrLn "Test passed")
    assert (cigarParty 70 true == true) (putStrLn "Test passed")

