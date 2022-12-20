#!/bin/bash

#SBATCH --job-name=aimd_water
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=12
#SBATCH --cpus-per-task=1
#SBATCH --time=6:00:00
#SBATCH --mem=20GB
#SBATCH --reservation=gmh4

module load cp2k/openmpi/intel/20201212
mpirun -np 12 cp2k.popt -i water.inp -o aimd_water.log
