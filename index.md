---
layout: page
---

# HII High Performance Computing

## Connection Information

**Note**: You must obtain a USF NetID, visit the
[USF Research Computing Account Signup Page](https://cwa.rc.usf.edu/cwa_accountsignup/research-computing)
and then send your NetID to the Data Coordinating Center who will provide you final confirmation
when you are able to access the HII HPC Cluster.

- SSH: `<netid>@hii.rc.usf.edu` (e.g. `ssh jsmith@hii.rc.usf.edu`)

- SFTP: `<netid>@hii.rc.usf.edu` (e.g. `sftp jsmith@hii.rc.usf.edu`)<br/>

Also consider [FileZilla](https://filezilla-project.org/) or [FileZilla Portable](http://portableapps.com/apps/internet/filezilla_portable) for a graphical file-transfer client.

## HII HPC Cluster

The HII HPC Cluster uses the [Slurm Workload Manager](http://slurm.schedmd.com) for scheduling jobs on the cluster.

- [Slurm Quick Reference](http://slurm.schedmd.com/pdfs/summary.pdf) - A quickref PDF of all the main Slurm commands.
- [Slurm Rosetta Stone](http://slurm.schedmd.com/rosetta.pdf) - A quickref PDF for individuals familiar with other HPC scheduling systems.

### Partitions

Compute nodes in the cluster are grouped into Slurm "partitions" which include:

- `hii02` - Large production partition for running computationally-intensive jobs
- `hii-test` - Small test partition to develop and test batch jobs
- `hii-interactive` - Small partition allocated to provide an interactive shell on a compute node for quick-feedback development.
   Please **DO NOT** run batch jobs on this cluster - use `hii-test` or `hii02` for batch jobs.

To view detailed information on a partition, we suggest the following invocation of the Slurm `sinfo` command:

    hii$ sinfo --partition=<partition> --exact --format="%20P %8D %8c %12m %12a %12T %l"

For example:

    hii$ sinfo --partition=hii02 --exact --format="%20P %8D %8c %12m %12a %12T %l"
    PARTITION            NODES    CPUS     MEMORY       AVAIL        STATE        TIMELIMIT
    hii02                1        20       128951       up           mixed        infinite
    hii02                39       20       128951       up           allocated    infinite
    hii02                2        12       64380        up           idle         infinite
    hii02                40       16       129018       up           idle         infinite

The example command's output indicates:

- 1 node partially allocated with some resources still available (`mixed`)
- 39 nodes each with 20 cpus and 128GB occupied running other jobs (`allocated`)
- 2 nodes each with 12 cpus each and 64GB of RAM are idle and available for new jobs (`idle`)
- 40 nodes each with 16 cpus and 128GB of RAM are idle and available for new jobs (`idle`)

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

### Submitting Jobs

The following example script (`basic-test.sh`) specifies a partition (`--partition=<partition>`),
time limit (`--time=<days-HH:MM>`) and memory allocation (`--mem=<mem_spec>`)

```
#!/bin/bash

#SBATCH --job-name=basic-test                # Slurm job name
#SBATCH --partition=hii-test                 # Partition (queue)
#SBATCH --time=0-2:00                        # Time (D-HH:MM) (2 hours)
#SBATCH --mem 1G                             # Memory required

#SBATCH --output basic-test.log              # STDOUT/STDERR
#SBATCH --mail-type=END,FAIL                 # Notifications for job done & fail
#SBATCH --mail-user=jsmith@not-a-domain.foo  # Send-to address

for i in {1..100000}; do
  echo $RANDOM >> basic-test.data
done

sleep 30

head basic-test.data
rm basic-test.data
```

Submit the job:

```
hii$ sbatch basic-test.sh
```


