-- This is a comment

{-
    This is also a comment
    and can span multiple lines
-}

import Data.List
import System.IO

maxInt = maxBound :: Int
minInt = minBound :: Int
bigFloat = 3.99999999999 + 0.00000000005

sumOfNums = sum [1..1000]

addEx = 5 + 4
subEx = 5 - 4
multEx = 5 * 4
divEx = 5 / 4
modEx = mod 5 4
negNumEx = 5 + (-4)

sqrtOf9 = sqrt (fromIntegral 9)
squareOf5 = 5 ^ 2
truncateVal = truncate (4.7)
roundVal = round (4.7)
ceilingVal = ceiling (4.7)
floorVal = floor (4.7)

-- && || not() bool operations
-- :t to learn about types of a function example :t truncate

primeNumbers = [3,5,7,11]
morePrimes = primeNumbers ++ [13,17,19,23,29]
favNums = 2 : 7 : 21 : 66 : []
multList = [[3,5,7],[11,13,17]]
morePrimes2 = 2 : morePrimes
lenPrime = length morePrimes2
revPrime = reverse morePrimes2
isListEmpty = null morePrimes2
secondPrime = morePrimes2 !! 1
firstPrime = head morePrimes2
lastPrime = last morePrimes2
first3Primes = take 3 morePrimes2
primeInit = init morePrimes2
is7InList = 7 `elem` morePrimes2
maxPrime = maximum morePrimes2
minPrime = minimum morePrimes2
evenList = [2,4..20]
infinitPow10 = [10,20..]
many2s = take 10 (repeat 2)
cycleList = take 10 (cycle [1,2,3,4,5])
listTimes2 = [x * 2 | x <- [1..10]]
listTimes3 = [x * 3 | x <- [1..10], x * 3 <= 50]
divBy9N13 = [x | x <- [1..500], x `mod` 13 == 0, x `mod` 9 == 0]
sortedList = sort [9,1,8,3,4,7,6]

-- 22m55s