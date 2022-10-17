#!/bin/bash

#SBATCH --job-name=mdrun
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --time=1:00:00
#SBATCH --mem=8GB

module purge
module load gromacs/openmpi/intel/2018.3

gmx_mpi mdrun -deffnm md_adp
