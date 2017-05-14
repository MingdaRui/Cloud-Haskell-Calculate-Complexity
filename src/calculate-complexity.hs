module Calculate
    ( mingdaCalculate
    ) where

import System.Environment
import System.IO
import System.Directory
import Control.Monad
import Data.List

mingdaCalculate = do
      arg <- getArgs
      n <- countLines arg
      when (n >= 0) $ putStrLn $ show n

countLines :: [String] -> IO Integer
countLines [filename] = countInputFile filename
countLines content = length (lines content)

countInputFile :: String -> IO Integer
countInputFile filename = do
    content <- readFile filename
    return $ toInteger $ length $ lines content
