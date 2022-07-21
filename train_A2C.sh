#!/bin/bash
#SBATCH -J train_A2C           # Job name
#SBATCH -p normal           # Queue (partition) name
#SBATCH -N 1              # Total # of nodes (must be 1 for serial)
#SBATCH -n 1
#SBATCH -t 48:00:00        # Run time (hh:mm:ss)
#SBATCH --mail-type=all    # Send email at begin and end of job
#SBATCH --mail-user=wwongkam@umd.edu

module add python3/3.7.13
module load tacc-singularity
export WORKING_DIR=/work/08801/wwongkam/ls6/diplomacy_research_retrain
export PYTHONPATH=$PYTHONPATH:/work/08801/wwongkam/ls6/diplomacy_research_retrain
python3 diplomacy_research/models/self_play/algorithms/a2c/train.py --model_id 12 --value_model_id 1
