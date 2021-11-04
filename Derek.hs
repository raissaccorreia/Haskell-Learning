-- This is a comment

{-
    This is also a comment
    and can span multiple lines
-}

import Data.List
import System.IO
import Distribution.Simple.Compiler (absolutePackageDBPaths)

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
-- :r to recompile and :q to quit or ctrl+d

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
sumOfLists = zipWith (+) [1,2,3,4,5] [6,7,8,9,10]
listBiggerThan5 = filter (>5) morePrimes2
evensUpTo20 = takeWhile (<= 20) [2,4..]
multOfList = foldl (*) 1 [2,3,4,5]
multTables = [[x * y | y <- [1..10]] | x <- [1..10]]

main = do
    putStrLn "What's your name"
    name <- getLine
    putStrLn ("Hello " ++ name)

-- functions and type declarations

-- funcName param1 param2 = operations (returned value)

addMe x y = x + y
addTuples (x, y) (x2,y2) = (x + x2, y + y2)

-- enum like

whatAge 16 = "You can drive"
whatAge 18 = "You can vote"
whatAge 21 = "You're an adult"
whatAge x = "Nothing important"

-- conditional expressions
isOdd n
    | mod n 2 == 0 = False
    | otherwise = True

whatGrade age
    | (age >= 5) && (age<=6) = "Kindergarten"
    | (age > 6) && (age <= 10) = "Elementary School"
    | (age > 10) && (age <= 14) = "Middle School"
    | (age > 14) && (age <= 18) = "High School"
    | otherwise = "College"

-- recursion exemple
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- where clause

batAvgRating hits atBats
    | avg <= 0.20 = "Terrible"
    | avg <= 0.25 = "Average"
    | avg <= 0.28 = "Good"
    | otherwise = "Awesome"
    where avg = hits / atBats

-- operating with lists element by element

times4 x = x * 4
listTimes4 = map times4 [1,2,3,4,5]

areStringsEq [] [] = True
areStringsEq (x:xs) (y:ys) = x == y && areStringsEq xs ys
areStringsEq _ _ = False

-- function can call function as parameter

doMult func = func 3
num3Times4 = doMult times4

-- common if then else

doubleEvenNumber y =
    if (y `mod` 2 /= 0)
        then y
        else y * 2

-- switch case

getClass n = case n of
    5 -> "Go to Kindergarten"
    6 -> "Go to elementary school"
    x | x > 6 && x <= 10 -> "Go to middle school"
    x | x > 10 && x <= 14 -> "Go to high school"
    _ -> "Go to college"

module SampFunctions (getClass, doubleEvenNumber) where
import SampFunctions

data BaseballPlayer = Pitcher
                    | Catcher
                    | Infielder
                    | Outfield
                    deriving Show

-- struct

data Customer = Customer String String Double
    deriving Show

tomSmith = Customer "Tom Smith" "123 Main" 20.50
getBalance (Customer _ _ b) = b

data Employee = Employee {
    empName :: String,
    empID :: Int,
    empSalary :: Float
} deriving (Eq, Show)

samSmith = Employee {
    empName = "Sam Smith",
    empID = 200,
    empSalary = 20000
}

-- file IO

writeToFile = do
    theFile <- openFile "test.txt" WriteMode
    hPutStrLn theFile ("Random line of text")
    hClose theFile