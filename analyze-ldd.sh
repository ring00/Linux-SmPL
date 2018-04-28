#!/usr/bin/env bash

REPO_DIR="/home/oslab/Desktop/ldd3-examples-3.x"

declare -a module=("lddbus"
                   "misc-modules"
                   "misc-progs"
                   "pci"
                   "sbull"
                   "scull"
                   "scullc"
                   "sculld"
                   "scullp"
                   "scullv"
                   "short"
                   "shortprint"
                   "simple"
                   "skull"
                   "snull"
                   "usb"
                   "tty"
                   )

declare -a tag=("3.0"
                "3.2"
                "3.4"
                "3.10"
                "3.14"
                "3.18"
                "4.1"
                "4.4"
                "4.9"
                )

for m in ${module[@]} ; do
    mkdir -p ${m}

    pushd ${m}

    for (( i=0; i<${#tag[@]}-1; i++ )) ; do
        git -C ${REPO_DIR} diff v${tag[$i]} v${tag[$i+1]} -- ${m} > ${tag[$i]}-${tag[$i+1]}.patch
    done

    popd
done