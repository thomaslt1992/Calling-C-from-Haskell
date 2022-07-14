{-# LANGUAGE ForeignFunctionInterface #-}
module Main(main) where

-- we need CDouble for C's double type; Haskell's Double may be different
import Foreign.C.Types(CDouble(..))
-- we need function pointer type and free function
import Foreign.Ptr(FunPtr, freeHaskellFunPtr)

-- a "wrapper" import gives a factory for converting a Haskell function to a foreign function pointer
foreign import ccall "wrapper"
  wrap :: (CDouble -> CDouble) -> IO (FunPtr (CDouble -> CDouble))

-- import the foreign function as normal
foreign import ccall "callerback.h twice"
  twice :: FunPtr (CDouble -> CDouble) -> CDouble -> IO CDouble

-- here's the function to use as a callback
square :: CDouble -> CDouble
square x = x * x

main :: IO ()
main = do
  squareW <- wrap square     -- make function pointer from the function
  let x = 4
  y <- twice squareW x       -- use the foreign function with our callback
  z <- twice squareW y
  print y                    -- printing the y as result of the C function
  print z
  freeHaskellFunPtr squareW  -- Releasing the fucntion