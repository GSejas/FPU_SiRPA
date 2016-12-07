This file contains all of the scrips used for the operators and other stuff. 

Here I set the contraints for every diff clock frequency. For finding the fastest unit, I set a 
frequency of 1GHz to find which performs the best, while also relaxing some other constraints.

The top_script.tcl file tries to automate the synthesis of each operator, with each variant, with the different clock frequencies.

The file_list holds the names of all of the files needed for the synthesis. This can be found at RTL/FPU/v2/*
