{-# LANGUAGE CPP #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -fno-warn-implicit-prelude #-}
module Paths_calculate_complexity (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "C:\\Users\\Mingda Rui\\Desktop\\calculate-complexity\\.stack-work\\install\\a9453259\\bin"
libdir     = "C:\\Users\\Mingda Rui\\Desktop\\calculate-complexity\\.stack-work\\install\\a9453259\\lib\\x86_64-windows-ghc-8.0.2\\calculate-complexity-0.1.0.0-3HXZJ7MBDVkDxlF9pn6d8I"
dynlibdir  = "C:\\Users\\Mingda Rui\\Desktop\\calculate-complexity\\.stack-work\\install\\a9453259\\lib\\x86_64-windows-ghc-8.0.2"
datadir    = "C:\\Users\\Mingda Rui\\Desktop\\calculate-complexity\\.stack-work\\install\\a9453259\\share\\x86_64-windows-ghc-8.0.2\\calculate-complexity-0.1.0.0"
libexecdir = "C:\\Users\\Mingda Rui\\Desktop\\calculate-complexity\\.stack-work\\install\\a9453259\\libexec"
sysconfdir = "C:\\Users\\Mingda Rui\\Desktop\\calculate-complexity\\.stack-work\\install\\a9453259\\etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "calculate_complexity_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "calculate_complexity_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "calculate_complexity_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "calculate_complexity_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "calculate_complexity_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "calculate_complexity_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "\\" ++ name)
