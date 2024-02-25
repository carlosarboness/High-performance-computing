#!/bin/bash
#SBATCH --job-name=sp-mz
#SBATCH --output=./outsp/sp-mz_%j.out
#SBATCH --error=./errsp/sp-mz_%j.err
#SBATCH --nodes=8
#SBATCH --ntasks=384
#SBATCH --qos=debug

#Script to execute all the combinations of the sp-mz

export NAS_PATH=$HOME/Project/apps/bin

echo "Using $SLURM_NTASKS processes and $SLURM_CPUS_PER_TASK threads per process"
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK


srun --nodes=4 --ntasks=8 --cpus-per-task=24 $NAS_PATH/sp-mz.D.8
srun --nodes=4 --ntasks=12 --cpus-per-task=16 $NAS_PATH/sp-mz.D.12
srun --nodes=4 --ntasks=16 --cpus-per-task=12 $NAS_PATH/sp-mz.D.16
srun --nodes=4 --ntasks=24 --cpus-per-task=8 $NAS_PATH/sp-mz.D.24
srun --nodes=4 --ntasks=32 --cpus-per-task=6 $NAS_PATH/sp-mz.D.32
srun --nodes=4 --ntasks=48 --cpus-per-task=4 $NAS_PATH/sp-mz.D.48
srun --nodes=4 --ntasks=96 --cpus-per-task=2 $NAS_PATH/sp-mz.D.96
srun --nodes=4 --ntasks=192 --cpus-per-task=1 $NAS_PATH/sp-mz.D.192

srun --nodes=6 --ntasks=12 --cpus-per-task=24 $NAS_PATH/sp-mz.D.12
srun --nodes=6 --ntasks=18 --cpus-per-task=16 $NAS_PATH/sp-mz.D.18
srun --nodes=6 --ntasks=24 --cpus-per-task=12 $NAS_PATH/sp-mz.D.24
srun --nodes=6 --ntasks=36 --cpus-per-task=8 $NAS_PATH/sp-mz.D.36
srun --nodes=6 --ntasks=48 --cpus-per-task=6 $NAS_PATH/sp-mz.D.48
srun --nodes=6 --ntasks=72 --cpus-per-task=4 $NAS_PATH/sp-mz.D.72
srun --nodes=6 --ntasks=144 --cpus-per-task=2 $NAS_PATH/sp-mz.D.144
srun --nodes=6 --ntasks=288 --cpus-per-task=1 $NAS_PATH/sp-mz.D.288

srun --nodes=8 --ntasks=16 --cpus-per-task=24 $NAS_PATH/sp-mz.D.16
srun --nodes=8 --ntasks=24 --cpus-per-task=16 $NAS_PATH/sp-mz.D.24
srun --nodes=8 --ntasks=32 --cpus-per-task=12 $NAS_PATH/sp-mz.D.32
srun --nodes=8 --ntasks=48 --cpus-per-task=8 $NAS_PATH/sp-mz.D.48
srun --nodes=8 --ntasks=64 --cpus-per-task=6 $NAS_PATH/sp-mz.D.64
srun --nodes=8 --ntasks=96 --cpus-per-task=4 $NAS_PATH/sp-mz.D.96
srun --nodes=8 --ntasks=192 --cpus-per-task=2 $NAS_PATH/sp-mz.D.192
srun --nodes=8 --ntasks=384 --cpus-per-task=1 $NAS_PATH/sp-mz.D.384
