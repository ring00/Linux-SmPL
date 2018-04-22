#!/usr/bin/env bash

# ➜  common git:(master) git show-ref --abbrev=12 v3.0.101 v3.3.8 v3.4.113 v3.10.108 v3.14.79 v3.18.105 v4.1.51 v4.4.128 v4.9.94 v4.14.34
# 4db98884a58f refs/tags/v3.0.101
# 380a3eab05a3 refs/tags/v3.3.8
# bf6ef2d36c86 refs/tags/v3.4.113
# a33927aa31fb refs/tags/v3.10.108
# ba23b989598b refs/tags/v3.14.79
# 605ca9bb6955 refs/tags/v3.18.105
# 379cf381d110 refs/tags/v4.1.51
# db46058a1afc refs/tags/v4.4.128
# bd35133a7968 refs/tags/v4.9.94
# acdaec7baa3d refs/tags/v4.14.34

repo="/home/oslab/Desktop/common"
module="drivers/misc"
target="${repo}/${module}/memory_state_time.c"

declare -a tag=(
                # "3.0.101"
                # "3.3.8"
                # "3.4.113"
                # "3.10.108"
                # "3.14.79"
                "3.18.105"
                "4.1.51"
                "4.4.128"
                "4.9.94"
                )

declare -a sha=(
                # "4db98884a58f"
                # "380a3eab05a3"
                # "bf6ef2d36c86"
                # "a33927aa31fb"
                # "ba23b989598b"
                "605ca9bb6955"
                "379cf381d110"
                "db46058a1afc"
                "bd35133a7968"
                )

for (( i=0; i<${#tag[@]}-1; i++ ));
do
    name=${module##*/}

    start_version=${tag[$i]%\.*}
    end_version=${tag[$i+1]%\.*}

    range=v${tag[$i]}-v${tag[$i+1]}

    pushd ${range}

    git -C ${repo} checkout android-${start_version}

    tac ../${name}-${range}.txt | while read line
    do
        commit=${line:0:12}

        if [ -e ${commit}.cocci ]
        then
            spatch --sp-file ${commit}.cocci ${target} --in-place > ${commit}.log
        fi
    done

    git -C ${repo} diff --diff-algorithm=minimal android-${start_version} -- ${target} > "seda.patch"
    git -C ${repo} checkout -- ${target}

    git -C ${repo} diff --diff-algorithm=minimal android-${start_version} android-${end_version} -- ${target} > "develop.patch"
    # git -C ${repo} format-patch --stdout android-${start_version} android-${end_version} > "complete.patch"

    popd
done
