# estimation_generator
estimation generator written in haskell 

run cabal build to generate an executable 
exec file can be located under estimation_generator/dist/build/estimation-generator

run 
   → ./estimation-generator ../../../hede.txt ios
   
   first parameter is the filePath to raw estimations 
   second parameter is the platform for the esmation
    currently supporting 
      mw -> server side code
      ios -> iPhone client
      android -> Android client 
