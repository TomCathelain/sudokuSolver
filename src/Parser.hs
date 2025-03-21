{-
-- TOM CATHELAIN, 2025
-- solver_sudoku
-- File description:
-- Parser
-}

module Parser (parseFile) where

{-
--
-- $func: parseFile
-- 
-- $desc: Parse a file and return a sudoku grid
--
-}

parseFile :: String -> IO [[Int]]

parseFile file = do
    content <- readFile file
    let grid = map (map (\c -> read [c] :: Int)) (lines content)
    return grid
