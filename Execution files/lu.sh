#!/bin/bash
#SBATCH --job-name=lu-mz
#SBATCH --output=./outlu/lu-mz_%j.out
#SBATCH --error=./errlu/lu-mz_%j.err
#SBATCH --nodes=8
#SBATCH --ntasks=16
#SBATCH --qos=debug

#Script to execute all the combinations of the lu-mz

export NAS_PATH=$HOME/Project/apps/bin

echo "Using $SLURM_NTASKS processes and $SLURM_CPUS_PER_TASK threads per process"
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

srun --nodes=4 --ntasks=8 --cpus-per-task=24 $NAS_PATH/lu-mz.D.8
srun --nodes=4 --ntasks=12 --cpus-per-task=16 $NAS_PATH/lu-mz.D.12
srun --nodes=4 --ntasks=16 --cpus-per-task=12 $NAS_PATH/lu-mz.D.16

srun --nodes=6 --ntasks=12 --cpus-per-task=24 $NAS_PATH/lu-mz.D.12

srun --nodes=8 --ntasks=16 --cpus-per-task=24 $NAS_PATH/lu-mz.D.16
