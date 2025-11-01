#!/bin/bash
#SBATCH --job-name=Job_name
#SBATCH --account=rrg-panch
#SBATCH --nodes=1
#SBATCH --gpus-per-node=1
#SBATCH -t 24:00:00                 # time (days-hours:minutes:seconds)

echo 'STARTING JOB' 	# prints to your output file

module load MistEnv/2021a cuda/10.2.2 gcc/8.5.0 anaconda3/2021.05 openmpi/4.0.5
export PATH=$HOME/amber22/bin:$PATH
export LD_LIBRARY_PATH=$HOME/amber22/lib:$LD_LIBRARY_PATH
export AMBERHOME=$HOME/amber22
source $AMBERHOME/amber.sh

NUM_PES=$(expr $SLURM_CPUS_PER_TASK - 1 )

source /home/p/panch/yunhuip/amber22/amber.sh

#pmemd.cuda -O -i Min.in -o output/Min.out -p com_waterbox_hmass.prmtop -c com_waterbox.inpcrd -r output/Min.ncrst -inf output/Min.mdinfo
#pmemd.cuda -O -i Equil_v.in -o output/Equil_v.out -p com_waterbox_hmass.prmtop -c output/Min.ncrst -r output/Equil_v.ncrst -x output/Equil_v.nc -inf output/Equil_v.mdinfo
pmemd.cuda -O -i Equil_pt.in -o output/Equil_pt.out -p com_waterbox_hmass.prmtop -c output/Equil_v.ncrst -r output/Equil_pt.ncrst -x output/Equil_pt.nc -inf output/Equil_pt.mdinfo
#pmemd.cuda -O -i Prod.in -p com_waterbox_hmass.prmtop -c output/outname1.ncrst -o output/outname2.out -r output/outname2.ncrst -inf output/outname2.info -x output/outname2.nc

echo 'JOB ENDED'	# prints to your output file

#submit job
#sbatch --partition=gpu --gres=gpu:v100:1  --time=168:00:00  sub_job_GPU.sh
