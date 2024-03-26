module Main (main) where

import Test.QuickCheck
import QC.Basic

main :: IO ()
main = do
  quickCheck prop_comm
  quickCheck prop_notComm
