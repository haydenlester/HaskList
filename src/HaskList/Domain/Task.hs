module HaskList.Domain.Task where

import qualified Data.Text as T
import Data.Time (UTCTime)
import System.Cron.Types

---------------------------------------------------------------
data Task = Task
  { index       :: Int
  , priority    :: Priority
  , desc        :: T.Text
  , completion  :: (Int, Int)
  , schedule    :: Schedule
  } deriving (Show, Eq)

index'      :: Task -> Int
priority'   :: Task -> Priority
desc'       :: Task -> T.Text
completion' :: Task -> (Int, Int)
schedule'   :: Task -> Schedule

index' (Task{index = ret}) = ret
priority' (Task{priority = ret}) = ret
desc' (Task{desc = ret}) = ret
completion' (Task{completion = ret}) = ret
schedule' (Task{schedule = ret}) = ret

---------------------------------------------------------------

data Schedule = Schedule
  { next        :: Maybe CronSchedule
  , due         :: UTCTime
  } deriving (Show, Eq)

next' :: Schedule -> Maybe CronSchedule
due'  :: Schedule -> UTCTime

next' (Schedule{next = ret}) = ret
due' (Schedule{due = ret}) = ret

---------------------------------------------------------------

data Priority = High | Medium | Low
  deriving (Show, Eq, Ord)

---------------------------------------------------------------
