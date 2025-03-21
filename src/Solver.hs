{-
-- TOM CATHELAIN, 2025
-- sudokuSolver
-- File description:
-- Solver
-}

module Solver (solveGrid) where

-- Import modules

import GridChecker (transpose)

{-
--
-- $func: getSquare
-- 
-- $desc: Get the values in a 3x3 square from the grid
--
-}

getSquare :: [[Int]] -> Int -> Int -> [Int]
getSquare grid row col = 
    let 
        rowStart = (row `div` 3) * 3
        colStart = (col `div` 3) * 3
    in
        [grid !! (rowStart + r) !! (colStart + c) | r <- [0..2], c <- [0..2]]

{-
--
-- $func: findEmpty
-- 
-- $desc: Find an empty cell in the grid
--
-}

findEmpty :: [[Int]] -> Maybe (Int, Int)

findEmpty grid = case [(row, col) | row <- [0..8], col <- [0..8], grid !! row !! col == 0] of
    [] -> Nothing
    (x:_) -> Just x

{-
--
-- $func: isValid
-- 
-- $desc: Check if the number can take place in this cell
--
-}

isValid :: [[Int]] -> Int -> (Int, Int) -> Bool
isValid grid x (row, col) =
    notElem x (grid !! row) &&
    notElem x (transpose grid !! col) &&
    notElem x (getSquare grid row col) 

{-
--
-- $func: updateGrid
-- 
-- $desc: Updating grid with the new cell
--
-}

updateGrid :: [[Int]] -> Int -> Int -> Int -> [[Int]]

updateGrid grid row col x =
    take row grid ++ [take col (grid !! row) ++ [x] ++ drop (col + 1) (grid !! row)] ++ drop (row + 1) grid

{-
--
-- $func: tryValues
-- 
-- $desc: Try values in the cell found
--
-}

tryValues :: [[Int]] -> Int -> Int -> [Int] -> Maybe [[Int]]

tryValues _ _ _ [] = Nothing
tryValues grid row col (x:xs)
    | isValid grid x (row, col) =
        case solveGrid (updateGrid grid row col x) of
            Just solved -> Just solved
            Nothing -> tryValues grid row col xs
    | otherwise = tryValues grid row col xs

{-
--
-- $func: solveGrid
-- 
-- $desc: Main function to solve the grid
--
-}

solveGrid :: [[Int]] -> Maybe [[Int]]

solveGrid grid =
    case findEmpty grid of
        Nothing -> return grid
        Just (row, col) -> tryValues grid row col [1..9]