#!/bin/bash

## Replace <VALUES> with your job attributes ## 

#SBATCH -J <JOBNAME>						# job name
#SBATCH -o <JOBNAME>.out					# output and error file name
#SBATCH --nodes=1							# total number of nodes to run job on
#SBATCH --ntasks-per-node=1					# number of CPUs per node to run job on
#SBATCH -p general							# queue (partition) - general, emc
#SBATCH -t 01:30:00							# run time (hh:mm:ss) - 1.5 hours
#SBATCH --mail-user=<USERNAME@vassar.edu> 	# email address for status updates from SLURM
#SBATCH --mail-type=begin						# email me when the job starts
#SBATCH --mail-type=end						# email me when the job ends

#commands to execute the job appear below the header

cd /home/<USERNAME>/<path/to/work/directory>
/home/<USERNAME>/bin/myprogram
