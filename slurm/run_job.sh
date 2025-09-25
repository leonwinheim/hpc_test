#!/bin/bash
#SBATCH --job-name=test_hpc
#SBATCH --output=temp/output_%j.log
#SBATCH --time=00:01:00
#SBATCH --partition=gpu
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --gres=gpu:1
#SBATCH --mem=1G

#SBATCH --mail-type=ALL
#SBATCH --mail-user=leon.winheim@kit.edu

module load devel/python/3.12.3-gnu-14.2
source ~/hpc_test/envs/myenv/bin/activate

cd hpc_test
srun python task.py