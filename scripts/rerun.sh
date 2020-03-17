#!/bin/bash
#
# Re-run the code locally
#
# Usage:
#
#   ./scripts/rerun.sh
#
#
#SBATCH --partition=gelifes
#SBATCH --time=10:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=10G
#SBATCH --job-name=bprofile
#SBATCH --output=bprofile.log
module load R

Rscript profile.R

