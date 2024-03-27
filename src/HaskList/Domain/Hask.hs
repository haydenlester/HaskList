module HaskList.Domain.Task where

import qualified Data.Text as T
import Data.Time (UTCTime)
import System.Cron.Types

---------------------------------------------------------------
data Priority = High | Medium | Low
  deriving (Show, Eq, Ord)

data Schedule = Schedule
  { next        :: Maybe CronSchedule
  , due         :: UTCTime
  } deriving (Show, Eq)

data Task = Task
  { index       :: Int
  , priority    :: Priority
  , desc        :: T.Text
  , completion  :: (Int, Int)
  , schedule    :: Schedule
  } deriving (Show, Eq)


instance Ord Task where
  compare t1 t2 = compare (index' t1) (index' t2)

---------------------------------------------------------------

-- Accessors

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
