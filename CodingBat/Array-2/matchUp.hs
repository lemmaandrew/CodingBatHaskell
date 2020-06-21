{-From https://codingbat.com/prob/p136254
Given arrays nums1 and nums2 of the same length, for every element in nums1, consider
the corresponding element in nums2 (at the same index). Return the count of the number
of times that the two elements differ by 2 or less, but are not equal.
-}
import Control.Exception (assert)


matchUp :: [Int] -> [Int] -> Int
matchUp nums1 nums2 = undefined

main = do
    assert (matchUp [1,2,3] [2,3,10] == 2) (putStrLn "Test passed")
    assert (matchUp [1,2,3] [2,3,5] == 3) (putStrLn "Test passed")
    assert (matchUp [1,2,3] [2,3,3] == 2) (putStrLn "Test passed")
    assert (matchUp [1,2,3] [2,3,10] == 2) (putStrLn "Test passed")
    assert (matchUp [1,2,3] [2,3,5] == 3) (putStrLn "Test passed")
    assert (matchUp [1,2,3] [2,3,3] == 2) (putStrLn "Test passed")

