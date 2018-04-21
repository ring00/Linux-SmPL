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
# acdaec7baa3d regs/tags/v4.14.34

module="fs"

declare -a tag=("v3.0.101"
                "v3.3.8"
                "v3.4.113"
                "v3.10.108"
                "v3.14.79"
                "v3.18.105"
                "v4.1.51"
                "v4.4.128"
                "v4.9.94"
                "v4.14.34"
                )

declare -a sha=("4db98884a58f"
                "380a3eab05a3"
                "bf6ef2d36c86"
                "a33927aa31fb"
                "ba23b989598b"
                "605ca9bb6955"
                "379cf381d110"
                "db46058a1afc"
                "bd35133a7968"
                "acdaec7baa3d"
                )

for (( i=0; i<${#tag[@]}-1; i++ ));
do
    name=${module##*/}

    range=${tag[$i]}-${tag[$i+1]}
    mkdir ${range}

    start_commit=${sha[$i]}
    end_commit=${sha[$i+1]}

    python lib/collateral_evolution.py --range ${start_commit} ${end_commit} --path ${module} | tee ${name}-${range}.txt

    while read line
    do
        commit=${line:0:12}
        file=${range}/${commit}.cocci

        seda build ${commit}
        seda prepare ${commit}
        seda analyze ${commit}
        seda coccigen ${commit} | tee -a ${file}
    done < ${name}-${range}.txt
done

