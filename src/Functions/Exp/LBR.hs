{-# LANGUAGE ForeignFunctionInterface #-}

module Functions.Exp.LBR(
    setImpVolMaxItr
  , setImpVolOutputType
  , setImpVolHouseholderMethodOrder
  , normBlackCall
  , normVega
  , normBlack
  , black
  , normImpVolFromTransformedGuessItr
  , normImpVolFromTransformedGuess
  , impVolFromTransformedRationalGuessItr
  , impVolFromTransformedRationalGuess
  , main
) where

import Foreign.Ptr
import Foreign.C

foreign import ccall "lets_be_rational set_implied_volatility_maximum_iterations" c_set_impl_vol_max_it :: Double -> Double
foreign import ccall "lets_be_rational set_implied_volatility_output_type" c_set_impl_vol_out_type :: Double -> Double
foreign import ccall "lets_be_rational set_implied_volatility_householder_method_order" c_set_impl_vol_hh_meth_ord :: Double -> Double
foreign import ccall "lets_be_rational normalised_black_call" c_norm_black_call :: Double -> Double -> Double
foreign import ccall "lets_be_rational normalised_vega" c_norm_vega :: Double -> Double -> Double
foreign import ccall "lets_be_rational normalised_black" c_norm_black :: Double -> Double -> Double -> Double
foreign import ccall "lets_be_rational black" c_black :: Double -> Double -> Double -> Double -> Double -> Double
foreign import ccall "lets_be_rational normalised_implied_volatility_from_a_transformed_rational_guess_with_limited_iterations" c_norm_impl_vol_fr_trans_guess_ltd :: Double -> Double -> Double -> Int -> Double
foreign import ccall "lets_be_rational normalised_implied_volatility_from_a_transformed_rational_guess" c_norm_impl_vol_fr_trans_guess :: Double -> Double -> Double -> Double
foreign import ccall "lets_be_rational implied_volatility_from_a_transformed_rational_guess_with_limited_iterations" c_impl_vol_fr_trans_guess_ltd :: Double -> Double -> Double -> Double -> Double -> Int -> Double
foreign import ccall "lets_be_rational implied_volatility_from_a_transformed_rational_guess" c_impl_vol_fr_trans_guess :: Double -> Double -> Double -> Double -> Double -> Double

main :: IO ()
main = do
    putStrLn "Test"

setImpVolMaxItr :: Double -> Double
setImpVolMaxItr = c_set_impl_vol_max_it

setImpVolOutputType :: Double -> Double
setImpVolOutputType = c_set_impl_vol_out_type

setImpVolHouseholderMethodOrder :: Double -> Double
setImpVolHouseholderMethodOrder = c_set_impl_vol_hh_meth_ord

normBlackCall :: Double -> Double -> Double
normBlackCall = c_norm_black_call

normVega :: Double -> Double -> Double
normVega = c_norm_vega

normBlack :: Double -> Double -> Double -> Double
normBlack = c_norm_black

black :: Double -> Double -> Double -> Double -> Double -> Double
black = c_black

normImpVolFromTransformedGuessItr :: Double -> Double -> Double -> Int -> Double
normImpVolFromTransformedGuessItr = c_norm_impl_vol_fr_trans_guess_ltd

normImpVolFromTransformedGuess :: Double -> Double -> Double -> Double
normImpVolFromTransformedGuess = c_norm_impl_vol_fr_trans_guess

impVolFromTransformedRationalGuessItr :: Double -> Double -> Double -> Double -> Double -> Int -> Double
impVolFromTransformedRationalGuessItr = c_impl_vol_fr_trans_guess_ltd

impVolFromTransformedRationalGuess :: Double -> Double -> Double -> Double -> Double -> Double
impVolFromTransformedRationalGuess = c_impl_vol_fr_trans_guess
