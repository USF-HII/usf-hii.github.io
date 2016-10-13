---
layout: page
---

## [HII-HPC Cluster](../hii-hpc.html)

### Linux

The HII-HPC Cluster runs within a [Linux](https://www.linuxfoundation.org/about/about-linux) environment.
Linux is an open-source computing environment utilized by 95% of the high performance computing sector.

To fully utilize the HII-HPC Cluster, a solid understanding of the Linux Command Line and comfort with
its associated tools is highly recommended.

#### Resources

- [Linux Tutorial](http://www.ee.surrey.ac.uk/Teaching/Unix/)

- [The Art of the Command Line](https://github.com/jlevy/the-art-of-command-line)

- [Safari Linux Command Line](https://www.safaribooksonline.com/library/view/linux-command-line/9780134445533/)
  ([Safari](https://www.safaribooksonline.com/) Subscription Required)

- [Video Tutorial on Vim Editor](https://www.youtube.com/watch?v=Nim4_f5QUxA)

- [Bash Shell Scripting](https://en.wikibooks.org/wiki/Bash_Shell_Scripting)

- [Bash Hackers](http://wiki.bash-hackers.org/)

- [Google Bash Style Guide](https://google.github.io/styleguide/shell.xml)

- [Google Python Style Guide](https://google.github.io/styleguide/pyguide.html)

- [Google R Style Guide](https://google.github.io/styleguide/Rguide.xml)


#### Cribsheet


```
echo !$               # !$ will subsitute the last thing on the line you previously typed

pwd                   # Print working directory

cd                    # Change to your home directory (~) ($HOME)

cd -                  # Change to the last directory you were in

cd ..                 # Go up to the parent directory

nano file.txt         # Edit file

cp foo.txt bar.txt    # Copy file 'foo.txt' to 'bar.txt'

mv foo.txt bar.txt    # Move (rename) file 'foo.txt' to 'bar.txt'

mkdir d1              # Create directory 'd1'

mkdir d1/d2           # Create directory 'd2' inside of d1

rmdir d1/d2 d1        # Remove directory 'd2' and then its parent 'd1'

rmdir -r d1           # CAREFUL - recursively delete directory 'd1' and sub-dirs ('d2')

mkdir -p d1/d2        # Create d1 if not present and then create d2

mv foo.txt d1         # Move file 'foo.txt' into directory 'd1'

less foo.txt          # View contents of file 'foo.txt'
                      # (up-arrow: up, down-arrow: down, /: search,
                      #  n: next-match, N: previous-match, q: quit)

ls                    # List directory

ls -l                 # List directory long

sort foo.txt          # sort foo.txt textually
1 apple
10 mickey
2 banana
22 barber

sort -n foo.txt       # sort foo.txt numerically
1 apple
2 banana
10 mickey
22 barber

sort -r               # Sort in reverse order

sort foo.txt > bar.txt      # DESTRUCTIVE: Re-direct sorted 'foo.txt'
                            # into 'bar.txt' (overwrites bar.txt if present)

sort foo.txt >> bar.txt     # APPEND: Re-direct sorted 'foo.txt' into
                            # 'bar.txt' (adds to the end of bar.txt)

foo=bar                     # Set variable foo to value "bar"

echo $foo                   # Echo variable $foo to the terminal

echo ${foo:-default}        # Echo value of FOO if set, otherwise echo "default"

export FOO="bar"            # Export environmental variable FOO with the
                            # value "bar" (command you run will have this
                            # set as well)

chown zoe:faculty foo.txt   # Change ownership of file 'foo.txt' to user
                            # 'zoe' and group 'faculty'

chmod +x foo.sh             # Make foo.sh executable

chmod o-rwx foo.txt         # Remove read, write, and execute permissions for anyone other than user or group
                              (u=user, g=group, o=others, a=everyone)

```
