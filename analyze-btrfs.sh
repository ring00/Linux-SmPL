#!/usr/bin/env bash

# ➜  cpufreq git:(android-4.14) git show-ref --abbrev=12 v3.0.101 v3.3.8 v3.4.113 v3.10.108 v3.14.79 v3.18.105 v4.1.51 v4.4.128 v4.9.94
# 4db98884a58f refs/tags/v3.0.101
# 380a3eab05a3 refs/tags/v3.3.8
# bf6ef2d36c86 refs/tags/v3.4.113
# a33927aa31fb refs/tags/v3.10.108
# ba23b989598b refs/tags/v3.14.79
# 605ca9bb6955 refs/tags/v3.18.105
# 379cf381d110 refs/tags/v4.1.51
# db46058a1afc refs/tags/v4.4.128
# bd35133a7968 refs/tags/v4.9.94

module="fs/btrfs"
target="/home/oslab/Desktop/linux/fs/btrfs"

name=${module##*/}

tac ${name}-commits.txt | while read line
do
    commit=${line:0:12}
    file=${name}/${commit}.cocci

    if [ -e ${file} ]
    then
        spatch --sp-file ${file} --dir ${target}
    fi
done
