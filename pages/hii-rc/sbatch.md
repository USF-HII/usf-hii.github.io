---
layout: page
---

## [HII/CIRCE Cluster](../hii-rc.html)


### sbatch ([man page](http://slurm.schedmd.com/sbatch.html))

The canonical fashion in which to run a job on a Slurm cluster is by submitting an sbatch script with the `sbatch` command.

The command to submit a job is as simple as:

```
hii$ sbatch hello-world.sh
```

The commands specified in the `hello-world.sh` file will then be run on the first available compute node
that fits the resources requested in the script.

`sbatch` returns immediately after submission and will be queued to execute on a compute node even if
you disconnect from the `hii.rc.usf.edu` head node.

A typical submission script, in this case using the hostname command to get the computer name, will look like this:

```
#!/bin/bash

#SBATCH --job-name=hello-world               # identifies a job-name for easy reference
#SBATCH --output=hello-world.log             # create a known log file name to view results
#SBATCH --partition=hii-test                 # test out your ideas on "hii-test", use "hii02" for production
#SBATCH --ntasks=1                           # number of tasks (default is 1)
#SBATCH --nodes=1                            # number of nodes (default is 1)
#SBATCH --mem=1G                             # memory per node
#SBATCH --time=0-00:20                       # time in the form <days>-<hours>:<minutes>
#SBATCH --mail-type=END                      # Type of email notification- BEGIN,END,FAIL,ALL
#SBATCH --mail-user=jsmith@hii-alpha.foobar  # Email to which notifications will be sent

hostname
```




---

Ideas from this page are credited to:

- [https://rc.fas.harvard.edu/resources/running-jobs/](https://rc.fas.harvard.edu/resources/running-jobs/)
