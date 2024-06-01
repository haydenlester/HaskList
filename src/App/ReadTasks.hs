module App.ReadTasks where

import System.Directory
import System.IO.Error
import Control.Exception
import Control.Monad

import App.Types

type Strategy = Either () String -> String

-- Relative path to our cache file.
-- May want to lift to a config file.
rPath :: FilePath
rPath = "/.hasklist/hasklist.cache"

-- Retrieves the home directory for the user
-- and appends the relative path.
fqPath :: IO FilePath
fqPath = fmap (++ rPath) getHomeDirectory

-- Strategy for resolving ()
-- Reads an empty list in.
dummyStrategy :: Strategy
dummyStrategy = either (const "[]") id

-- Guards for cases where the file may not
-- exist. Applies a strategy to resolve it
guardRead :: IO String -> Strategy -> IO String
guardRead = (flip fmap) . tryJust (guard . isDoesNotExistError)

-- Parse the tasks
readTasks :: IO [Task]
readTasks = fmap read $ guardRead (fqPath >>= readFile) dummyStrategy
