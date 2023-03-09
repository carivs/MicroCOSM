# Microsimulation for the Control of South African Morbidity and Mortality (MicroCOSM)
This repository includes the code base and documentation for MicroCOSM v1.0

MicroCOSM is an agent based model developed to simulate the epidemiology of various diseases and the social processes that drive these diseases in South Africa. The version included in this repository focuses on the simulation of HIV, HPV and cervical cancer in South Africa. 

## Description of files

* Microsimulation.cpp and .h are the main code files for the model.
* Other C++ files contain functions for the random number generator and statistical distributions. 
* *RandomUniformHPV.txt files numbered from 1-24 contain random numbers that generate the 24 best fitting parameter combinations.
* Other txt files contain epidemiological data and fixed parameters.

## Usage

To compile the code and create the executable "Microsimulation":

```gcc
g++ -std=c++14 Microsimulation.cpp StatFunctions.cpp mersenne.cpp -o Microsimulation
```

To run the code for one parameter combination:

```
./Microsimulation 1 
```

The code is set up to run on a cluster, with each parameter combination running on one core. One parameter combination and 5 iterations should run about 30 minutes.

## Expected outputs
The files will run the 'status quo' of HPV vaccination and cervical cancer screening in South Africa, from 1985 to 2040, 5 iterations per parameter combination (PC). The output will be text files containing the average (over 5 iterations) age standardised rates (ASR) between 1985 and 2040:

* cervical cancer incidence,
* diagnosed cervical cancer incidence, and 
* cervical cancer mortality, all standardised using two different standard world populations. 

## Support

Please email me at carivs@sun.ac.za if you have any questions.
