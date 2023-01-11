# MicroCOSM
This repository includes the codebase and documentation for MicroCOSM (Microsimulation for the Control of South African Morbidity and Mortality)

Until further notice, the codebase included here is _not_ the most recent version of MicroCOSM and can only be used for the simulation of HIV, HPV and cervical cancer in South Africa. 
Documentation still to be added.

File types:
* Microsimulation.cpp and .h are the main code files for the model.
* Other C++ files (not my code) contain functions for the random number generator and statistical distributions. 
* *RandomUniformHPV.txt files numbered from 1-24 contain random numbers that generate the 24 best fitting parameter combinations.
* Other txt files contain epidemiodemiological data and fixed parameters.

The files in their current format will run the 'status quo' of HPV vaccination and cervical cancer screening in South Africa, from 1985 to 2040, 5 iterations per parameter combination (PC). The output will be text files containing average (over 5 iterations) age standardised rates (ASR) between 1985 and 2040 of cervical cancer incidence, diagnosed cervical cancer incidence, and cervical cancer death, standardised using two different standard world populations. 

To compile: g++ -std=c++14 Microsimulation.cpp StatFunctions.cpp mersenne.cpp -o Microsimulation

To run: ./Microsimulation 1 (This will run the code for the first PC. The code is set up to run on a cluster, with each PC running on one core.)

One PC and 5 iterations should run about 30minutes.

Please email me at carivs@sun.ac.za if you have any questions.
