---
layout: page
---

## [HII-HPC Cluster](../hii-hpc.html)

### Submitting a Slurm Job

A typical way of submitting a job to the HII-HPC Cluster is by writing a **submission script**.
A submission script is a shell script, e.g. a [Bash](http://mywiki.wooledge.org/BashGuide) script,
whose comments, if they are prefixed with SBATCH,
are understood by Slurm as parameters describing resource requests and other submission options.

The script itself is a job step and other job steps are created inside the script with the `srun` command.

For instance, the following script, named `hello-world.sh`,

```
#!/bin/bash

#SBATCH --job-name=hello-world               # identifies a job-name for easy reference
#SBATCH --output=hello-world.log             # create a known log file name to view results
#SBATCH --partition=hii-test                 # use "hii02" for production
#SBATCH --ntasks=1                           # number of tasks (default is 1)
#SBATCH --mem=1G                             # memory per node
#SBATCH --time=0-00:20                       # time in the form <days>-<hours>:<minutes>
#SBATCH --mail-type=END                      # Type of email notification: BEGIN,END,FAIL,ALL
#SBATCH --mail-user=jsmith@hii-alpha.foobar  # Email to which notifications will be sent

srun hostname
srun sleep 60
```

would request 1 CPU for 20 minutes which may utilize up to 1 GB Memory to run on the `hii-test`
partition when resources are available. When started, the job sould run the first job step
`srun hostname`, which will launch the UNIX command `hostname` on the node on which the requested
CPU was allocated. Then, a second job step will start the `sleep` command.

The purpose of the `--job-name` parameter is to give a meaningful name to the job
and the `--output` parameter defines the file to which output of the job (STDERR/STDOUT) will
be sent.

Since jobs may take some time to be dispatched and/or run, we provide `--mail-user` and
`--mail-type` parameters to receive an e-mail notification when the job ends either in a
`COMPLETED` or `FAILED` state.

Once the submission script is created, submit it to Slurm through the `sbatch` command, which, upon success,
responds with the jobid attributed to the job.

```
$ sbatch hello-world.sh
sbatch: Submitted batch job 4834857
```

At this point, you may use the `squeue` command to view the current state of your job:

```
$ squeue -l -u $USER
Sun Oct  9 10:35:54 2016
JOBID PARTITION     NAME     USER    STATE       TIME TIME_LIMI  NODES NODELIST(REASON)
4834857  hii-test hello-wo  jsmith  RUNNING       0:15     20:00      1 svc-3024-5-30
```


The job will enter the queue first in the `PENDING` state and once resources become available an
allocation is created for it and it goes to the `RUNNING` state.

If the job completes correctly, it goes to the `COMPLETED` state, otherwise, it is set to the `FAILED` state.

Once a job finishes you will no longer see it with the `squeue` command.

Use the `sacct` command providing it with the jobid that `sbatch` returned
during job submission to review its exist status:

```
hii$ sacct -j 4834857
       JobID    JobName  Partition    Account  AllocCPUS      State ExitCode
------------ ---------- ---------- ---------- ---------- ---------- --------
4834857      hello-wor+   hii-test        hii          1  COMPLETED      0:0
4834857.bat+      batch                   hii          1  COMPLETED      0:0
4834857.0      hostname                   hii          1  COMPLETED      0:0
4834857.1         sleep                   hii          1  COMPLETED      0:0
```

Upon completion, the output file (`hello-world.log`) contains the output of the commands run (`hostname`):

```
hii$ cat hello-world.log
svc-3024-5-30.rc.usf.edu
```
