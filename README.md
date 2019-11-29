# aoc-2019-chapel

[![Build Status](https://dev.azure.com/ce16990/AoC%202019%20Chapel/_apis/build/status/christopheredsall.aoc-2019-chapel?branchName=master)](https://dev.azure.com/ce16990/AoC%202019%20Chapel/_build/latest?definitionId=5&branchName=master)

Advent of Code for 2019 using [Chapel](https://chapel-lang.org/)

## Get Chapel container from dockerhub

```ShellSession
[user@host]$ docker pull chapel/chapel
Using default tag: latest
latest: Pulling from chapel/chapel
Digest: sha256:e2cc6821af95681d8d5f3217644705ca66376a51378e5576a8e2e7b37f43260d
Status: Image is up to date for chapel/chapel:latest
docker.io/chapel/chapel:latest
```

## Clone repo

```ShellSession
[user@host]$ git clone git@github.com:christopheredsall/aoc-2019-chapel.git
Cloning into 'aoc-2019-chapel'...
remote: Enumerating objects: 24, done.
remote: Counting objects: 100% (24/24), done.
remote: Compressing objects: 100% (21/21), done.
remote: Total 24 (delta 5), reused 15 (delta 2), pack-reused 0
Receiving objects: 100% (24/24), 6.07 KiB | 3.03 MiB/s, done.
Resolving deltas: 100% (5/5), done.
```

## Build

```ShellSession
[user@host]$ cd aoc-2019-chapel
[user@host]$ make
cd day-0 && /Applications/Xcode.app/Contents/Developer/usr/bin/make
docker run --rm -v /Users/ce16990/chapel/aoc-2019-chapel/day-0:/usr/src/myapp -w /usr/src/myapp chapel/chapel chpl -o hello hello.chpl
Please update your PATH
 chpl is now stored at /opt/chapel/1.20.0/bin/linux64-x86_64/chpl
 the old path was /opt/chapel/1.20.0/bin/linux64/chpl

```
