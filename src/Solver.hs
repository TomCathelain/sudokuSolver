{-
-- TOM CATHELAIN, 2025
-- sudokuSolver
-- File description:
-- Solver
-}

module Solver (solveGrid) where

-- Import other files

import GridChecker (verifyGrid)

{-
--
-- $func: solveGrid
-- 
-- $desc: Main function to solve the grid
--
-}

solveGrid :: [[Int]] -> IO ()

solveGrid grid = do
    verifyGrid grid
    return ()
