---
layout: page
---

## USF RC HII Cluster Interactive Session


The head node's main purpose is to access the cluster in order to develop and submit batch jobs
which are then distributed to compute nodes which can handle computationally-intensive workloads.

Although it is possible to perform work on the USF RC HII head node, `hii.rc.usf.edu`, this is strongly discouraged
as it can affect other users from utilizing the compute node for its primary purpose.

A conflict arises, however, when the interactive nature of the head node is preferable to submitting work to a queue
which will lengthen the time to receive job feedback.

HII provides a special partition, `hii-interactive` which gives you the benefits of an interactive session but
executes your session on a compute node providing the best of both worlds.

To obtain an interactive session, run the following command modifying your CPU, memory, and time requirements as necessary.

```
srun --pty --partition=hii-interactive --cpus=4 --mem=24G --time=0-8:00:00 /bin/bash
```

In this example, we request an interactive shell which lands us on compute node `svc-3024-5-6` and guarantees us
24GB of RAM and 4 CPUS. It will remain open for 8 hours or until you choose to exit the session.

```
hii$ srun --pty --partition=hii-interactive --cpus=4 --mem=24G --time=0-8:00:00 /bin/bash

svc-3024-5-6$ module load apps/R/3.2.3

svc-3024-5-6$ R
> ... run some R commands

svc-3024-5-6$ exit
```

The interactive session will terminate when you exit the shell or the time limit you set expires.

---

Please be considerate and only request what is necessary as we have a limited amount of resources in this partition.

Please **DO NOT** run sbatch jobs on the `hii-interactive` partition as this may prevent others from gaining an
interactive session in a timely manner.

