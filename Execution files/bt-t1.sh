#!/bin/bash
#SBATCH --job-name=bt-mz_t1
#SBATCH --output=./outbt/bt-mz_%j.out
#SBATCH --error=./errbt/bt-mz_%j.err
#SBTACH --nodes=1
#SBATCH --ntasks=8
#SBATCH --cpus-per-task=1
#SBATCH --qos=debug

#Script to execute the baseline of the bt-mz for the speedup

export NAS_PATH=$HOME/Project/apps/bin

echo "Using $SLURM_NTASKS processes and $SLURM_CPUS_PER_TASK threads per process"
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

srun $NAS_PATH/bt-mz.D.$SLURM_NTASKS
