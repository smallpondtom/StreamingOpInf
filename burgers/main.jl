"""
Main execution script for Streaming-OpInf Burgers example.
"""

## Install extra necessary package from GitHub 
using Pkg
Pkg.add(url = "https://github.com/smallpondtom/IncrementalSVD.jl.git")
Pkg.add(url = "https://github.com/smallpondtom/LiftAndLearn.jl.git", rev = "stream")

## Generate data
include("01-datagen.jl")
       
## Generate the POD basis
include("02-basis.jl")

## Train the iSVD-RLS models
include("03-train-2p.jl")

## Train the iSVD-LS model
include("03-train-1p.jl")

## Test the trained models
include("04-test.jl")

## Plot the results
include("05-plot.jl")
