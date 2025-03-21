{-
-- TOM CATHELAIN, 2025
-- sudokuSolver
-- File description:
-- Display
-}

module Display (displayGrid) where

-- Import modules

import Control.Monad (when)

{-
--
-- $func: displayGrid
-- 
-- $desc: Display the Sudoku grid in a nice format
--
-}

displayGrid :: [[Int]] -> IO ()
displayGrid grid = do
    putStrLn "+-------+-------+-------+"
    mapM_ displayRow (zip [0..] grid)

{-
--
-- $func: displayRow
-- 
-- $desc: Display a row of the Sudoku grid
--
-}

displayRow :: (Int, [Int]) -> IO ()
displayRow (i, row) = do
    putStr "| "
    mapM_ displayCell (zip [0..] row)
    putStrLn "|"
    when (i `mod` 3 == 2) $ putStrLn "+-------+-------+-------+"

{-
--
-- $func: displayCell
-- 
-- $desc: Display a cell of the Sudoku grid
--
-}

displayCell :: (Int, Int) -> IO ()
displayCell (j, n) = do
    putStr (show n ++ " ")
    when (j `mod` 3 == 2) $ putStr "| "