#!/bin/sh

#SBATCH --job-name=sim_comparison
#SBATCH --time=2:00:00
#SBATCH --mail-user=wangmk@umich.edu
#SBATCH --mail-type=END,FAIL,BEGIN
#SBATCH --array=1-500
#SBATCH --mem=4g
#SBATCH --cpus-per-task=4
#SBATCH --account=ligen0
#SBATCH --partition=standard
#SBATCH --export=ALL
#SBATCH --output=/home/wangmk/MDAWG/LOCOM/Simulation/slurm-sim-comparison.out
#SBATCH --error=/home/wangmk/MDAWG/LOCOM/Simulation/slurm-sim-comparison-error.out

module load Rtidyverse/4.2.0
module load fftw
module load gsl
Rscript --vanilla /home/wangmk/MDAWG/LOCOM/Simulation/simulation_methods_comparison.R

