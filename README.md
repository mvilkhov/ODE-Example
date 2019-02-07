# ODE-Example

## Solving a system of ordinary differential equation in Julia and Matlab

### Installation and Requirements
You can download this repository as a zip file, or clone or pull it by using the command (from the command-line):

	$ git pull https://github.com/mvilkhov/ODE-Example.git

or

	$ git clone https://github.com/mvilkhov/ODE-Example.git

Julia must be installed on your machine along with the [ODE] package and some graphing package to visualize the results (i.e. [PyPlot]. Julia can be downloaded/installed on any platform. To install the ODE and PyPlot package issue the command:

  	julia> Pkg.add("ODE")
    julia> Pkg.add("PyPlot")

in the Julia REPL.

### Problem Statement
Setup and solve ordinary differential equations for the following reaction

![alt text](https://github.com/mvilkhov/ODE-Example/blob/master/ODE_example.pdf)



### Running the model
To run the model, set the directory to the ``Julia`` folder and issue the command ``include("run.jl")`` in the Julia REPL.

The ``run.jl`` script has several user inputs available:

Variable | User Input | Description
--- | --- | ---
tStart | 0.0 | Initial time point
tStep	| 0.1 | Time step
tStop	| 10 | Last time point
x0 | [0.0; 0.0; 0.0;] | Vector of initial conditions

The ``Balances.jl`` script contains the kinetic parameters and differential equations that are integrated by the ODE solver. 

Output | Description
--- | ---
t | Vector of simulated time vector
X | Abundance of each species for the corresponding time vector
