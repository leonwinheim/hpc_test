#!/bin/bash
#SBATCH --job-name=test_hpc
#SBATCH --output=temp/output_%j.log
#SBATCH --time=00:01:00
#SBATCH --partition=standard
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem=1G

module load python/3.10
source ~/my_project_envs/myenv/bin/activate

cd /scratch/username/my_project_data
srun python ../../my_project/src/heavy_part.py