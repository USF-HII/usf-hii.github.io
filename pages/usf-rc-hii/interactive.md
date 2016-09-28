---
layout: page
---

## HII-RC Interactive

The head node of the HII-RC Cluster is `hii.rc.usf.edu`.
The purpose of this node is providing an entry-point to develop and submit
code to an HPC queue which distributes the computational work across a partition of compute nodes.

Although it is possible to perform work on the head node, this is strongly discouraged
as it may affect the experience of others who are utilizing the system for its intended purpose.

To achieve the best of both worlds, HII provides a special partition,
`hii-interactive` which provides resources to run interactive sessions
on a compute-farm with the necessary resources available.

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

Please try to be considerate and request the approximate resources necessary
as there are a limited amount of resources allocated to the `hii-interactive` partition.

Please submit batch jobs on another partitions besides `hii-interactive` as these jobs may
prevent others from gaining an interactive session in a timely manner.

