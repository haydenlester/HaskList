module Generator.Task where

import System.Random
import HaskList.Domain.Task

randomPriority :: IO Priority
randomPriority = do
  return $ [Low .. High] !! (randomRIO 0 2)
