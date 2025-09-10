#!/bin/bash
#SBATCH -J jobname 							# job name
#SBATCH -o jobname.out						# output and error file name
#SBATCH –nodes=1							# total number of nodes to run job on
#SBATCH –ntasks-per-node=48				# number of CPUs per node to run job on 
#SBATCH -p general							# queue (partition) - general, emc, lambda
#SBATCH -t 01:30:00							# run time (hh:mm:ss) - 1.5 hours
#SBATCH –mail-user=username@vassar.edu	# user Email address for errors, reports
#SBATCH –mail-type=begin					# email me when the job starts
#SBATCH –mail-type=end						# email me when the job finishes

#commands to execute the job appear below the header

module load mpich-3.3
cd /home/username/path-to-work-directory
srun –mpi=pmi2 -n $totalcpus /home/username/bin/myprogram
