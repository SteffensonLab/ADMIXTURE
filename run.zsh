#!/bin/bash
#Yu Guo

#e.g. K from 2 to 3
# for each repeats, using a perl command to generate a random seed number, e.g. int(rand(999999999))+1

#repeat1
admixture -s 125023432 --cv=10 -j5 LD.bed 2 | tee log2.out
admixture -s 125023432 --cv=10 -j5 LD.bed 3 | tee log3.out

#repeat2
admixture -s 156189921 --cv=10 -j5 LD.bed 2 | tee log2.out
admixture -s 156189921 --cv=10 -j5 LD.bed 3 | tee log3.out

#...repeatN

# using CLUMPP to merge all repeated output file with differernt seeds of a K

CLUMPP k2.config
CLUMPP k3.config

echo finish
