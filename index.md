---
layout: page
---

# USF Health Informatics High Performance Computing

## Connection Information

**Note**: You must obtain a USF NetID, visit the
[USF Research Computing Account Signup Page](https://cwa.rc.usf.edu/cwa_accountsignup/research-computing)
and then send your NetID to the Data Coordinating Center who will provide you final confirmation
when you are able to access the HII HPC Cluster.

- SSH: `<netid>@hii.rc.usf.edu`<br/>
  (e.g. `ssh jsmith@hii.rc.usf.edu`)

- SFTP: `<netid>@hii.rc.usf.edu`<br/>
  (e.g. `sftp jsmith@hii.rc.usf.edu`)<br/>
  (Also consider [FileZilla](http://portableapps.com/apps/internet/filezilla_portable))

## HII HPC Cluster

The HII HPC Cluster uses the [Slurm Workload Manager](http://slurm.schedmd.com) for scheduling jobs on the cluster.
For individuals who have prior experience in other HPC scheduling systems there is a [Slurm Rosetta Stone](http://slurm.schedmd.com/rosetta.pdf) available for comparing commands.

Compute nodes in the cluster are grouped into Slurm "partitions" which include:

- `hii-test` - Small test partition to develop and test batch jobs
- `hii-interactive` - Small partition allocated to provide an interactive shell on a compute node for quick-feedback development
- `hii02` - Large production partition for running computationally-intensive jobs

To view detailed information on a partition, we suggest the following command:

    hii$ sinfo --partition=<partition> --exact --format="%20P %8D %8c %12m %12a %12T %l"

An example running `sinfo` against partition `hii02`:

    hii$ sinfo --partition=hii02 --exact --format="%20P %8D %8c %12m %12a %12T %l"
    PARTITION            NODES    CPUS     MEMORY       AVAIL        STATE        TIMELIMIT
    hii02                1        20       128951       up           mixed        infinite
    hii02                39       20       128951       up           allocated    infinite
    hii02                2        12       64380        up           idle         infinite
    hii02                40       16       129018       up           idle         infinite

This shows that there are 39 nodes completely allocated  with 42 nodes fully available and 1 node "mixed"
meaning some resources may be available if your job fits within the unused resources on the nodes. Memory is measured in MB.

### Interactive Shell

A special Slurm partition named `hii-interactive` is available for running an interactive shell for quick feedback
while developing/testing software.

Here is an example to gain an interactive session on a compute node with 4 cpus and 24GB of RAM for 8 hours:

```
hii$ srun --pty --partition=hii-interactive --cpus=4 --mem=24G --time=0-8:00:00 /bin/bash

svc-3024-5-6$ # now on a compute node in an interactive bash shell
svc-3024-5-6$ exit
```

The session will terminate when you exit the shell or the time limit you set expires. Please be considerate with your time and resources as we have a limited number of interactive nodes.

