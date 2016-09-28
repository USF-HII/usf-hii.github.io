---
layout: page
---

## USF RC HII Cluster Interactive Session

Although you may access resources from the USF RC HII head node, `hii.rc.usf.edu`, its main purpose is for
submitting jobs to a compute node which has dedicated resources to run computational workloads.

Often, when developing batch jobs or running adhoc computation, an interactive session is preferable to a batch system.

HII provides a special partition, `hii-interactive`, intended for interactive sessions for real-time development
and testing of computational jobs.

To obtain an interactive session, run the following command modifying your CPU, memory, and time requirements as necessary.

```
srun --pty --partition=hii-interactive --cpus=4 --mem=24G --time=0-8:00:00 /bin/bash
```

Please be considerate and only request what is necessary as we have a limited amount of resources in this partition.

Please **DO NOT** run sbatch jobs on the `hii-interactive` partition as this may prevent others from gaining an
interactive session in a timely manner.

The above command will provide you with an interactive shell on a compute node (`svc-3024-5-6` in the example below)
where you may run nteractive jobs to quickly iterate and get feedback on an interactive run of R, Python, etc.

For example:

```
hii$ srun --pty --partition=hii-interactive --cpus=4 --mem=24G --time=0-8:00:00 /bin/bash

svc-3024-5-6$ module load apps/R/3.2.3

svc-3024-5-6$ R
> ... run some R commands

svc-3024-5-6$ exit
```

The interactive session will terminate when you exit the shell or the time limit you set expires.
