import System.Environment
import System.IO

main = do 
  putStrLn "estimation generator"
  (file:platform:args) <- getArgs
  putStrLn "starting to estimate with file"
  putStrLn file
  handle <- openFile file ReadMode
  contents <- hGetContents handle
  putStr "estimation for this project: " 
  print (estimate contents)
  

estimate :: String -> Int
estimate contents = 10 
