import System.Environment
import System.IO
import Data.List.Split

mw = 2
ios = 3
android = 3  

type Platform = Int 
type Days = Int

main = do 
  putStrLn "estimation generator"
  (file:platform:args) <- getArgs
  putStrLn "starting to estimate with file"
  putStrLn file
  handle <- openFile file ReadMode
  contents <- hGetContents handle
  putStr "estimation for this project: " 
  print (estimate contents $ findPL platform)

--roadmap 
--0 use platform constants -- done
--1 get each sentence in a line -- done
--2 get each verb in a sentence 
--3 find special words like payment, integration, transfer, chat, video, help etc

estimate :: String -> Platform -> Days
--estimate contents pl  = pl * (length $ lines contents)
estimate contents pl = pl * (foldl addSentences 0 $ lines contents)

findPL :: String -> Platform 
findPL "mw" = mw 
findPL "ios" = ios
findPL "android" = android

addSentences :: Int -> String -> Int 
addSentences count line = count + (length $ splitOn "." line)
