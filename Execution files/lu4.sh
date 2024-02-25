#!/bin/bash
#SBATCH --job-name=lu4-mz
#SBATCH --output=./outlu/runtime/lu-mz_%j.out
#SBATCH --error=./errlu/runtime/lu-mz_%j.err
#SBATCH --nodes=4
#SBATCH --ntasks=16
#SBATCH --qos=debug

#Script to execute all the combinations of lu-mz with 4 nodes 
#(used when using runtime because they lasted longer)

export NAS_PATH=$HOME/Project/apps/bin

echo "Using $SLURM_NTASKS processes and $SLURM_CPUS_PER_TASK threads per process"
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

srun --ntasks=8 --cpus-per-task=24 $NAS_PATH/lu-mz.D.8
srun --ntasks=12 --cpus-per-task=16 $NAS_PATH/lu-mz.D.12
srun --ntasks=16 --cpus-per-task=12 $NAS_PATH/lu-mz.D.16
