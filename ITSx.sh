#!/bin/bash

#SBATCH --nodes=1
#SBATCH --ntasks=15
#SBATCH --mem-per-cpu=3G
#SBATCH --time=5:00:00
#SBATCH -p intel

module load ITSx
module unload perl/5.20.2 
module load perl/5.14.2

ITSx -i Capnod_Rocks.fa -o Capnod_Rocks --save_regions all --preserve True
ITSx -i Chaet_Rocks.fa -o Chaet_Rocks --save_regions all --preserve True
ITSx -i Dothid_Rocks.fa -o Dothid_Rocks --save_regions all --preserve True
ITSx -i Pleo_Rocks.fa -o Pleo_Rocks --save_regions all --preserve True
