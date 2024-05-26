module HaskList.Domain.Task where

import Data.Time (UTCTime)

---------------------------------------------------------------
data Task = Task
  { index       :: Int
  , priority    :: Priority
  , desc        :: String
  , completion  :: (Int, Int)
  , due         :: UTCTime
  , schedule    :: Maybe Schedule
  } deriving (Show, Eq)

index'      :: Task -> Int
priority'   :: Task -> Priority
desc'       :: Task -> String
completion' :: Task -> (Int, Int)
due' :: Task -> UTCTime
schedule'   :: Task -> Maybe Schedule

index' (Task{index = ret}) = ret
priority' (Task{priority = ret}) = ret
desc' (Task{desc = ret}) = ret
completion' (Task{completion = ret}) = ret
due' (Task{due = ret}) = ret
schedule' (Task{schedule = ret}) = ret

---------------------------------------------------------------

data Priority = High | Medium | Low
  deriving (Show, Eq, Ord)

---------------------------------------------------------------

data Schedule = Daily | Weekly | Monthly | Yearly
  deriving (Show, Eq)

---------------------------------------------------------------
