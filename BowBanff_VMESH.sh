#!/bin/bash
#SBATCH --account=rpp-kshook 
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16
#SBATCH --mem=40G
#SBATCH --time=01:00:00
#SBATCH --job-name=BowBanff_VMESH
#SBATCH --mail-user=ala.bahrami@usask.ca
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END

# module load
module load gcc/12.3 openmpi/4.1.5
module load netcdf-fortran/4.6.1

dir_mesh=/scratch/baha2501/MESH_code/MESH_Code/r1860_ME_ZT 

# run MESH 
mpirun $dir_mesh/mpi_sa_mesh_r1860_ME_ZT
