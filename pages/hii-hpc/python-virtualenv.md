---
layout: page
---

## [HII-HPC Cluster](../hii-hpc.html)

### Python Virtual Environments

A Virtual Environment is a tool to keep the dependencies required by different projects in separate places.
It solves the “Project X depends on version 1.x but, Project Y needs 4.x”

Just as important, it gives a non-privileged user the ability to install their own packages
since they will have permission to do so in their local Virtual Environment installation.

---
*Note: Since HII-HPC uses [Modules](modules.html), you must `module load` the version
of python you created the virtualenv with every time you login (or create a wrapper script to do so).*

If you do not `module load` python prior to using a virtualenv you will see this type of error message:

```
hii$ ./venv/bin/python --version
./venv/bin/python: error while loading shared libraries: libpython2.7.so.1.0:
                   cannot open shared object file: No such file or directory
```

To fix, `module load` the python you used to create the virtualenv:

```
hii$ module load apps/python/2.7.11

hii$ python --version
Python 2.7.11
```
---

#### Python 2.7 Example

Create a virtualenv by loading the appropriate python and running the `virtualenv` command with
the name of the directory to create it under (e.g. "venv"):

```
hii$ module load apps/python/2.7.11

hii$ virtualenv ./venv
New python executable in /home/.../projects/foo/venv/bin/python
Installing setuptools, pip, wheel...done.
```

You may now use the virtualenv by:

- a. Referencing the path explicitly (e.g. `./venv/bin/python`, `./venv/bin/pip`).

- b. Activating the virtualenv (e.g. `source ./venv/bin/activate`) which will set your `$PATH` to use `python`,
     `pip`, etc. under your virtualenv directory

Example of installing a package into your virtualenv:

```

hii$ ./venv/bin/pip -q install --upgrade pip

hii$ ./venv/bin/pip install pandas
Collecting pandas
  Downloading pandas-0.19.0-cp27-cp27m-manylinux1_x86_64.whl (16.3MB)
    100% |████████████████████████████████| 16.3MB 60kB/s
Collecting pytz>=2011k (from pandas)
  Downloading pytz-2016.7-py2.py3-none-any.whl (480kB)
    100% |████████████████████████████████| 481kB 1.1MB/s
Collecting python-dateutil (from pandas)
  Using cached python_dateutil-2.5.3-py2.py3-none-any.whl
Collecting numpy>=1.7.0 (from pandas)
  Downloading numpy-1.11.2-cp27-cp27m-manylinux1_x86_64.whl (15.3MB)
    100% |████████████████████████████████| 15.3MB 70kB/s
Collecting six>=1.5 (from python-dateutil->pandas)
  Using cached six-1.10.0-py2.py3-none-any.whl
Installing collected packages: pytz, six, python-dateutil, numpy, pandas
Successfully installed numpy-1.11.2 pandas-0.19.0 python-dateutil-2.5.3 pytz-2016.7 six-1.10.0

hii$ $ ./venv/bin/python
Python 2.7.11 (default, Feb  2 2016, 10:56:46)
[GCC 4.4.7 20120313 (Red Hat 4.4.7-4)] on linux2
Type "help", "copyright", "credits" or "license" for more information.
>>> import pandas
>>>

```

---

#### Python 3.5 Example

```
hii$ module load apps/python/3.5.1

hii$ pyvenv venv-3.5

hii$ ./venv-3.5/bin/pip -q install --upgrade pip

hii$ ./venv-3.5/bin/pip install cython pandas
Collecting cython
  Downloading Cython-0.24.1-cp35-cp35m-manylinux1_x86_64.whl (6.5MB)
    100% |████████████████████████████████| 6.5MB 108kB/s
Collecting pandas
  Downloading pandas-0.19.0-cp35-cp35m-manylinux1_x86_64.whl (17.4MB)
    100% |████████████████████████████████| 17.4MB 60kB/s
Collecting python-dateutil>=2 (from pandas)
  Using cached python_dateutil-2.5.3-py2.py3-none-any.whl
Collecting pytz>=2011k (from pandas)
  Using cached pytz-2016.7-py2.py3-none-any.whl
Collecting numpy>=1.7.0 (from pandas)
  Downloading numpy-1.11.2-cp35-cp35m-manylinux1_x86_64.whl (15.6MB)
    100% |████████████████████████████████| 15.6MB 74kB/s
Collecting six>=1.5 (from python-dateutil>=2->pandas)
  Using cached six-1.10.0-py2.py3-none-any.whl
Installing collected packages: cython, six, python-dateutil, pytz, numpy, pandas
Successfully installed cython-0.24.1 numpy-1.11.2 pandas-0.19.0 python-dateutil-2.5.3 pytz-2016.7 six-1.10.0

hii$ ./venv-3.5/bin/python
Python 3.5.1 (default, Mar 16 2016, 16:40:34)
[GCC 4.4.7 20120313 (Red Hat 4.4.7-4)] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> import pandas
>>>
```


