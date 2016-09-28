---
layout: page
---

## RC/HII Cluster Interactive Sessions

The head node of the RC/HII Cluster is `hii.rc.usf.edu`.

The purpose of the head node is to provide an entry-point to transfer/develop code and submit jobs based on that
code to a partition of high-performance nodes which compute and render the artifacts in a scaleable fashion.

Although it is possible to perform work on the head node, this is strongly discouraged
as it may affect the experience of others who are utilizing the system for its intended purpose.

A conflict arises, however, when the interactive nature of the head node is preferable to submitting work to a queue
which inherently lengthens the time of job feedback.

To counter, HII provides a special partition, `hii-interactive` which gives you the ability to create an interactive session that
executes on a compute node providing the best of both worlds.

To obtain an interactive session, run the following command modifying your CPU, memory, and time requirements as necessary.

```
srun --pty --partition=hii-interactive --cpus=2 --mem=24G --time=0-8:00:00 /bin/bash
```

In this example, we request an interactive shell which lands us on compute node `svc-3024-5-6` and
provides 2 CPUS and 24GB of RAM in which we run an R session:

```
hii$ srun --pty --partition=hii-interactive --cpus=2 --mem=24G --time=0-8:00:00 /bin/bash

svc-3024-5-6$ module load apps/R/3.2.3

svc-3024-5-6$ R
> (run R commands and quit)

svc-3024-5-6$ exit
```

The interactive session will terminate when you exit the shell or the time limit you set expires.

---

Please be considerate and only request what resources you think are necessary for your work
as we have a limited amount of compute nodes and resources in this partition.

Please **DO NOT** run sbatch jobs on the `hii-interactive` partition as this may prevent others from gaining an
interactive session in a timely manner.

