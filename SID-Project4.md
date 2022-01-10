# CS323 Project4

###  Target Code Generation

##### **Team Members: Li Yuanzhao(11812420), Xu Xinyu(11811536), Jiang Yuchen(11812419)**

## I. Overview

​		In this project, we are required to implement the generation of target code of given intermediate representation(IR) code on SPL language. We suppose that IR codes are correct so that we can directly output mips32 instruction files. Our files can be run successfully with GCC version 7.4.0, GNU Flex version 2.6.4 and GNU Bison version 3.0.4 .



## II. Design and Implementation

​		There is no further design on project files. We only change them to `.cpp` form in order to use the data structure design only for `cpp`. The main task is to finish the incomplete methods in `mips32.cpp` . 

## III. Test Cases

​		For give test cases, we generate the target mips32 code for them and all of them can be executed successfully and correctly.



## IV. Instructions

​			Change directory to the root path and using `make splc` to create `splc` in `./bin` root for spl codes' parsing. Then using `bin/splc <test_root>/<test_file_name>` to create immediate code result. And you can use `make clean` to delete all created files.



