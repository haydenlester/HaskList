module QC.Basic
  (prop_comm, prop_notComm) where

import HaskList.Basic

prop_comm :: Int -> Int -> Bool
prop_comm x y = (comm y x) == (comm x y)

prop_notComm :: Int -> Int -> Bool
prop_notComm x y = (notComm y x) == (notComm x y)
