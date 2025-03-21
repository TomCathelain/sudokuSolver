{-
-- TOM CATHELAIN, 2025
-- sudokuSolver
-- File description:
-- GridChecker
-}

module GridChecker (verifyGrid) where

-- Import modules

import Data.List (nub, transpose)
import System.Exit (exitWith, ExitCode(ExitFailure))

{-
--
-- $func: hasDuplicates
-- 
-- $desc: Check if there are duplicates in a list
--
-}

hasDuplicates :: [Int] -> Bool

hasDuplicates [] = False
hasDuplicates xs = let nums = filter (/= 0) xs in length nums /= length (nub nums)

{-
--
-- $func: getSquare
-- 
-- $desc: Get a square in a grid
--
-}

getSquare :: [[Int]] -> Int -> Int -> [Int]

getSquare grid i j = [grid !! (i + x) !! (j + y) | x <- [0..2], y <- [0..2]]

{-
--
-- $func: checkEnoughNumbers
-- 
-- $desc: Check if there are enough valid numbers in the grid
--
-}

checkEnoughNumbers :: [[Int]] -> Bool

checkEnoughNumbers grid = length (filter (/= 0) (concat grid)) >= 17

{-
--
-- $func: checkRows
-- 
-- $desc: Check if there are duplicates in the rows
--
-}

checkRows :: [[Int]] -> Bool

checkRows grid = any hasDuplicates grid

{-
--
-- $func: checkColumns
-- 
-- $desc: Check if there are duplicates in the columns
--
-}

checkColumns :: [[Int]] -> Bool

checkColumns grid = any hasDuplicates (transpose grid)

{-
--
-- $func: checkSquares
-- 
-- $desc: Check if there are duplicates in the squares
--
-}

checkSquares :: [[Int]] -> Bool

checkSquares grid = any hasDuplicates [getSquare grid i j | i <- [0, 3, 6], j <- [0, 3, 6]]

{-
--
-- $func: verifyGrid
-- 
-- $desc: Verify if the grid is valid
--
-}

verifyGrid :: [[Int]] -> IO ()

verifyGrid grid
    | not (checkEnoughNumbers grid) = putStrLn "Error: Invalid grid" >> exitWith (ExitFailure 84)
    | checkRows grid = putStrLn "Error: Invalid grid" >> exitWith (ExitFailure 84)
    | checkColumns grid = putStrLn "Error: Invalid grid" >> exitWith (ExitFailure 84)
    | checkSquares grid = putStrLn "Error: Invalid grid" >> exitWith (ExitFailure 84)
    | otherwise = return ()
