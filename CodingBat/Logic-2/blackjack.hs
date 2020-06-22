{-From https://codingbat.com/prob/p117019
Given 2 int values greater than 0, return whichever value is nearest to 21 without going
over. Return 0 if they both go over.
-}
import Control.Exception (assert)


blackjack :: Int -> Int -> Int
blackjack a b = undefined

main :: IO ()
main = do
    assert (blackjack 19 21 == 21) (putStrLn "Test passed")
    assert (blackjack 21 19 == 21) (putStrLn "Test passed")
    assert (blackjack 19 22 == 19) (putStrLn "Test passed")
    assert (blackjack 19 21 == 21) (putStrLn "Test passed")
    assert (blackjack 21 19 == 21) (putStrLn "Test passed")
    assert (blackjack 19 22 == 19) (putStrLn "Test passed")

