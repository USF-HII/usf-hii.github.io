---
layout: page
---

## USF RC HII Interactive Session

For an interactive shell providing your initial look into the cluster as well as for iterative quick feedback,
provide the flag `--partition=hii-interactive` to the `srun` command for an interactive shell.

As an example to gain an interactive session on a compute node with 4 cpus and 24GB of RAM for 8 hours:

```
srun --pty --partition=hii-interactive --cpus=4 --mem=24G --time=0-8:00:00 /bin/bash

svc-3024-5-6$ # now on a compute node in an interactive bash shell

svc-3024-5-6$ exit
```

The interactive session will terminate when you exit the shell or the time limit you set expires.
