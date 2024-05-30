-- Represents the tasks that the user
-- creates.

module HaskList.Domain.Task where

import Data.Time (TimeOfDay)

data Task = Task
  { index       :: Int
  , priority    :: Priority
  , desc        :: String
  , completion  :: (Int, Int)
  , schedule    :: Maybe Schedule
  , due         :: TimeOfDay
  } deriving (Show, Read, Eq)

data Priority = High | Medium | Low
  deriving (Show, Read, Eq)

data Schedule = Daily | Weekly | Monthly
  deriving (Show, Read, Eq)
