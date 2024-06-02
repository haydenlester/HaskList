module App.Configuration where

-- Controls configuration
-- Got idea from reading:
-- https://github.com/robertmassaioli/hdo

import System.Directory

data Config = Config
              { dbName :: String
              , appDir :: FilePath
              }

getDefaultDir :: IO FilePath
getDefaultDir =  getAppUserDataDirectory "hasklist"

constructConfig :: FilePath -> IO Config
constructConfig fp = return Config
                      { dbName = ".hasklist"
                      , appDir = fp
                      }

defaultConfig :: IO Config
defaultConfig = getDefaultDir >>= constructConfig
