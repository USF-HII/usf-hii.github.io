---
layout: page
---

## RC-HII Cluster / Slurm Array

Slurm job arrays offer a mechanism for submitting and managing collections of similar jobs in a cohesive manner.

The most common application is for applying the same processing routine to a collection of multiple input data files
without having to submit multiple jobs which could be well beyond the thousands depending on the problem at hand.

By submitting a single sbatch script, a specified number of "array-tasks” will be created based on this “master” sbatch script.

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
