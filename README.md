# Streaming-OpInf

This repository contains the code to reproduce the experiments presented in the paper:

**Efficient Streaming Operator Learning for Large-Scale Dynamical Systems**

This repository contains the 1D viscous Burgers equation experiment and Kuramoto-Sivashinsky equation (KSE) example. The experiments demonstrate the performance of the Streaming-OpInf method for learning reduced-order models from streaming data. The 3D channel data is not available for public release and thus experiments on that dataset are not included here.

## Requirements

- You must have Julia installed on your system. You can download it from [the official Julia website](https://julialang.org/downloads/).

## Running the Experiments

To run the experiments, first clone this repository

```bash
git clone https://github.com/smallpondtom/StreamingOpInf.git
```

Prepare the Julia environment 

```bash
cd StreamingOpInf
julia
julia> ]
(@v1.11) pkg> instantiate 
```

Exit Julia by typing `exit()` or pressing `Ctrl+D`. The command `julia` will envoke the Julia REPL. The command `]` will enter the package manager mode. The command `instantiate` will install all the required packages specified in the `Project.toml` file and generate a `Manifest.toml` file for your dependencies.

Now you are ready to run the experiments. Make sure you are in the root directory of the project, and then execute the appropriate script for your operating system:

- For Windows PowerShell:
```powershell
.\run_experiments.ps1 -Experiment burgers
.\run_experiments.ps1 -Experiment kse
.\run_experiments.ps1 -Experiment both
```

- For Windows Command Prompt:
```cmd
run_experiments.bat burgers
run_experiments.bat kse
run_experiments.bat both
```

- For Unix-based systems (Linux, macOS):
```bash
chmod +x ./run_experiments.sh burgers
chmod +x ./run_experiments.sh kse
chmod +x ./run_experiments.sh both
```

It is going to take a while to run each experiment so maybe run them overnight.

## Contact

For any questions, please contact Tomoki Koike at [tkoike@gatech.edu](mailto:tkoike@gatech.edu).