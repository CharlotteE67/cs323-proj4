# CS323 Project4

###  Target Code Generation

##### **Team Members: Li Yuanzhao(11812420), Xu Xinyu(11811536), Jiang Yuchen(11812419)**

**Contribution: A, A, A**

## I. Overview

​		In this project, we are required to implement the generation of target code of given intermediate representation(IR) code on SPL language. We suppose that IR codes are correct so that we can directly output mips32 instruction files. Our files can be run successfully with GCC version 7.4.0, GNU Flex version 2.6.4 and GNU Bison version 3.0.4 .



## II. Design and Implementation

​		There is no further design on project files. The main task is to finish the incomplete methods in `mips32.cpp` . We first change them to `.cpp` form in order to use the data structure designed only in `cpp`. Then we construct a map which stores the pair of variable name and its register name. In `struct RegDesc` , we take use of `dirty` to represent which the register is using or not and it's 0 by default.

​		After that, we try to implement the incomplete methods given in `mips32.cpp` . We search the register list to find the unused register and load word to it for other operations.  Specially, if we want to get a register for write purpose, there is no need to load word since the content is unknown. For spilling register, we will spill the used register and store its value so that we can reuse the register safely for other operations. When facing function, `varMap`, `offsetCnt` and `arg_num` are reset for function block. We will store registers and other status information before calling function. The rest parts are easy to translate according to mips32 instructions.

![image-20220111035724527](SID-Project4.assets/image-20220111035724527.png)

​																				Figure.1 spill_register()



## III. Test Cases

​		For give test cases, we generate the target mips32 code for them and all of them can be executed successfully and correctly.

![image-20220111031418040](SID-Project4.assets/image-20220111031418040.png)

​																				Figure.2 test_01

![image-20220111031620807](SID-Project4.assets/image-20220111031620807.png)

​																				Figure.3 test_02

![image-20220111031656450](SID-Project4.assets/image-20220111031656450.png)

​																				Figure.4 test_03

![image-20220111033052727](SID-Project4.assets/image-20220111033052727.png)

​																				Figure.5 test_04



## IV. Instructions

​			Change directory to the root path and using `make splc` to create `splc` in `./bin` root for spl codes' parsing. Then using `bin/splc <test_root>/<test_file_name>` to create mips32 code result. And you can use `make clean` to delete all created files.



