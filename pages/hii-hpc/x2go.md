---
layout: page
---

## [HII-HPC Cluster](../hii-hpc.html)

### X2Go for Graphical Access

The HII-HPC Cluster is inherently a Linux Command-Line Interface (CLI) environment and
its computational resources are best accessed via that mode.

Although not generally recommended, HII provides instructions below to utilize the X2Go software
for special cases requiring access to graphical applications on the cluster.

---

**Please note other than the initial X2Go session, all graphical applications
must be run on a compute node and not on the `hii.rc.usf.edu` head node (see #2 TIP below)
as this will cause issues with other command-line based users.**

- `TIP #1`: Once you establish an interactive compute session, you can run your graphical client
  in the background so you can run an additional graphical client without having
  to open another `terminal` and obtaining another interactive compute session. The syntax
  is `<command> &>/dev/null &`, for example `xeyes &>/dev/null &`.

- `TIP #2`: You may run utility programs like `terminal`, `evince` (pdf viewer), or `file manager`
   on the head node but please run the bigger graphical clients (Rstudio, etc.)
   from an interactive compute node session as detailed below because they can consume
   much greater resources.

---

X2Go software is available [HERE](http://wiki.x2go.org/doku.php)

---

#### Instructions

##### Connect to the cluster via an X2Go session

- Host: `hii.rc.usf.edu`
- Login: `USF NetID`
- SSH Port: `22`
- Session Type: `Gnome`

##### Start a terminal from your X2Go session

From your Gnome Desktop:

`Applications` / `System Tools` / `Terminal`

##### Gain an interactive session on a compute node

X2Go does not set the hostname on the display so first we modify this so the compute node
can get back to your X2Go session on `hii.rc.usf.edu`:

```
hii$ export DISPLAY=$(echo hii.rc.usf.edu$DISPLAY)

hii$ echo $DISPLAY
hii.rc.usf.edu:55.0
```

The `55.0` part will vary based on your session.

---

Now start an [interactive shell](interactive.html) to access a compute node modifying time and resources as necessary:

```
hii$ srun --pty --partition=hii-interactive --cpus=4 --mem=30G --time=0-8 /bin/bash
```

The above command will start an interactive session from a compute node allocating 4 cpus, 30G of RAM
running for up to 8 hours.

Now run your graphical application and it should display on your desktop
(use `xeyes` as the simplest graphical application to test):

```
svc-3024-5-6$ xeyes
```

*or* run in the background to continue to use the `terminal`:

```
svc-3024-5-6$ xeyes &>/dev/null &
```















