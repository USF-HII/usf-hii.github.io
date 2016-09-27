---
layout: page
---

### Slurm Commands

These are the most common commands used by a user of Slurm.

- `sinfo` - Reports the state of partitions and nodes managed by Slurm.
- `sbatch` - Submits a job script for execution. The script typically contains one or more
             srun commands to launch parallel tasks.
- `squeue` - Reports the state of jobs or job steps.
- `srun` - Used to submit a job for execution or initiate job steps in real time.
- `scancel` - Used to stop a job before it completes.

Run `man <command>` to find documentation on the command.

Monitoring Jobs

    $ squeue --user=$USER

- `CA` (`CANCELLED`)   - Job was cancelled by the user or system administrator
- `CD` (`COMPLETED`)   - Job completed
- `CF` (`CONFIGURING`) - Job has been allocated resources, but are waiting for them to become ready
- `CG` (`COMPLETING`)  - Job is in the process of completing
- `F`  (`FAILED`)      - Job terminated with non-zero exit code
- `NF` (`NODE_FAIL`)   - Job terminated due to failure of one or more allocated nodes
- `PD` (`PENDING`)     - Job is awaiting resource allocation
- `R`  (`RUNNING`)     - Job currently has an allocation
- `S`  (`SUSPENDED`)   - Job has an allocation, but execution has been suspended
- `TO` (`TIMEOUT`)     - Job terminated upon reaching its time limit

---

Run `man sbatch` for extensive description of the options.

- `--job-name=<name>`   - Job Name (e.g. `--job-name=test-run`)
- `--output=<filename>` - STDOUT/STDERR sent to this file (e.g. `--job-name=test-run.log`)
- `--partition=<name>`  - Run is the med partition (known as a queue in SGE)
- `--nodes=4`           - Request four nodes
- `--ntasks-per-node=8` - Request eight tasks per node.
- `--ntasks=32`         - Request 32 tasks for your job (instead of `--ntasks-per-node`)
- `--time=D-HH:MM`      - The maximum amount of time your job will run before it is killed
                          (e.g. 2 days and 12 hours would be `--time=2-12:00`, 2 hours would be
                           `--time=0-2:00`)
- `--–mail-type=<type[,type...]>` - `BEGIN` when job starts, `END` when it completes, `FAIL` if it fails, or `ALL` (e.g.
                                    `--mail-type=BEGIN,END,FAIL`)
- `--mail-user=jsmith@no-domain.foo` - Address to e-mail user notifications
- `--mem-per-cpu=MB` - Specify a memory limit for each process of your job
- `--mem=MB` - Specify a memory limit for each node of your job
- `--exclusive` - Specify that you need exclusive access to nodes for your job
- `--share`  - Specify that your job may share nodes with other jobs
- `--begin=2016-09-01T00:00:00`  Start the job after this time
- `--begin=now+1hour` - Use a relative time to start the job
- `--dependency=afterany:200:201` -  Wait for jobs 200 and 201 to complete before starting (success or failure)
- `--dependency=afterok:200:201` - Wait for jobs 200 and 201 to finish (only if both are successful)

