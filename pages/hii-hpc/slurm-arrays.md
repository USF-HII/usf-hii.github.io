---
layout: page
---

## [HII-HPC Cluster](../hii-hpc.html)

### Submitting a Slurm Job Array

Slurm job arrays offer a mechanism for submitting and managing collections of similar jobs in a cohesive manner.

The most common application is for applying the same processing routine to a collection of multiple input data files
without having to submit multiple jobs.

For a project which has a small number of variations (e.g. 10 different input files), a series
of singleton Slurm jobs may be adequate, but when variations number in the hundreds or greater a Slurm
job array is the preferred solution.

### Overview

Although you will submit a single sbatch script for a Slurm job array, Slurm will generate
multiple tasks off of the sbatch script which only differ in the environmental variable
`SLURM_ARRAY_TASK_ID` which allows the job to know "Which one of the many I am."

### Example

As an example, consider the following sbatch script `hello-world-array.sh`:

```
#!/bin/bash

#SBATCH --job-name=hello-world-array
#SBATCH --output=hello-world-array-%a.log
#SBATCH --array=1-4
#SBATCH --time=0-00:10
#SBATCH --partition=hii-test
#SBATCH --ntasks=1
#SBATCH --mem=1G

task_number=${SLURM_ARRAY_TASK_ID}

# Now run a program with ${task_number} as an argument to vary its input file, behavior, etc.

/bin/echo "task_number=${task_number}"
```

Submit the script as follows:

```
hii$ sbatch hello-world-array.sh
Submitted batch job 4504001
```

Once completed, the output from the task job can be enumerated via the `head` program:

```
hii$ head hello-world-array*.log

==> hello-world-array-1.log <==
task_number=1

==> hello-world-array-2.log <==
task_number=2

==> hello-world-array-3.log <==
task_number=3

==> hello-world-array-4.log <==
task_number=4
```
