{-
-- TOM CATHELAIN, 2025
-- solver_sudoku
-- File description:
-- Main
-}

-- Import modules

import System.Environment (getArgs)
import System.Exit (exitWith, ExitCode(ExitFailure))

-- Import functions from other files

import Parser (parseFile)
import Solver (solveGrid)

{-
--
-- $func: verifyNumberArgs
-- 
-- $desc: Verify the number of arguments
--
-}

verifyNumberArgs :: [String] -> IO ()

verifyNumberArgs args
    | length args /= 1 = putStrLn "Usage: ./solver_sudoku [file]"
        >> exitWith (ExitFailure 84)
    | otherwise = return ()

{-
--
-- $func: main
-- 
-- $desc: Get args, parse file, get grid and call solver
--
-}

main :: IO ()

main = do
    args <- getArgs
    verifyNumberArgs args
    grid <- parseFile (args !! 0)
    solveGrid grid
    return ()
    
