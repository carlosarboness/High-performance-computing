#!/bin/bash
#SBATCH --job-name=lu-mz_t1
#SBATCH --output=./outlu/bt-mz_%j.out
#SBATCH --error=./errlu/bt-mz_%j.err
#SBTACH --nodes=1
#SBATCH --ntasks=8
#SBATCH --cpus-per-task=1
#SBATCH --qos=debug

#Script to execute the baseline of the lu-mz for the speedup

export NAS_PATH=$HOME/Project/apps/bin

echo "Using $SLURM_NTASKS processes and $SLURM_CPUS_PER_TASK threads per process"
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

srun $NAS_PATH/lu-mz.D.$SLURM_NTASKS
