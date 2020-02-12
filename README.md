# impvol: Haskell wrapper for Implied Volatility calculation

#### Status: Cleaning up and adding functionality but basics work fine

#### TODO:

- Retrieve user input and return bs, norm_bs, imp_vol, etc.

### Use GHCi to work with imported functions.

Assuming working knowledge of Haskell and Stack

```
git clone https://github.com/feio-ai/impvol.git impvol
cd impvol
stack build
stack ghci
```

#### Available functions:

```  Haskell
c_norm_black_call :: Double -> Double -> Double
	-- normalized Black-Scholes call
c_norm_vega :: Double -> Double -> Double
	-- normalized vega (volatility from BS)
c_norm_black :: Double -> Double -> Double -> Double
	-- normalized Black-Scholes function
c_black :: Double -> Double -> Double -> Double -> Double -> Double
	-- standard black function
c_norm_impl_vol_fr_trans_guess_ltd :: Double -> Double -> Double -> Int -> Double
	-- normalized implied volatility from transformed rational guess with limited iterations
c_norm_impl_vol_fr_trans_guess :: Double -> Double -> Double -> Double
	-- normalized implied volatility from transformed guess (unlimited iterations)
c_impl_vol_fr_trans_guess_ltd :: Double -> Double -> Double -> Double -> Double -> Int -> Double
	-- implied volatility from transformed guess with limited iterations
c_impl_vol_fr_trans_guess :: Double -> Double -> Double -> Double -> Double -> Double
	-- implied volatility from transformed guess
```







