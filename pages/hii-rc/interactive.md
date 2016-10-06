---
layout: page
---

## [HII/RC Cluster](../hii-rc.html)

### Obtaining an Interactive Shell

The head node of the HII-RC Cluster, `hii.rc.usf.edu`, provides an entry-point to develop and submit
computational work across an array of computing resources.

Although it is possible to run interactive work on the head node, this may adversely affect the experience of others
who are utilizing the system for its core functionality.

In order to provide the best of both worlds, HII maintains a special partition,
`hii-interactive` which provides real-time sessions on a high-performance compute node.

---

To obtain an interactive session, run the following command modifying your CPU, memory, and time requirements as necessary.

```
srun --pty --partition=hii-interactive --cpus=4 --mem=30G --time=0-8 /bin/bash
```

---

In this example, we request a shell on a compute node providing
4 Cores and 30GB of RAM for 8 hours from which we may run an interactive R session:

```
hii$ srun --pty --partition=hii-interactive --cpus=4 --mem=30G --time=0-8 /bin/bash

svc-3024-5-6$ module load apps/R/3.2.3

svc-3024-5-6$ R
> (run R commands and quit)

svc-3024-5-6$ exit
```

The interactive session will terminate when you exit the shell or the time limit you set expires.

---

If you feel you truly need the full resources of a node and would impact other users on the node,
you may use the `--exclusive` option instead of specifying `--cpus` and `--mem` to ask for all resources on
a node, e.g.:

```
hii$ srun --pty --partition=hii-interactive --exclusive --time=0-8 /bin/bash
```


---

Please try to be considerate and request the approximate resources necessary
as there are a limited amount of resources allocated to the `hii-interactive` partition.

Please submit batch jobs on another partitions besides `hii-interactive` as these jobs may
prevent others from gaining an interactive session in a timely manner.
