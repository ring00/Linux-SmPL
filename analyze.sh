#!/usr/bin/env bash

REPO_DIR="/home/oslab/Desktop/linux"
PATCH_DIR="/home/oslab/Desktop/seda/tests/90-colev-alter/linux"
TARGET="${REPO_DIR}/fs"

START_COMMIT="4204bcde7c0b"
END_COMMIT="b6b09084ce38"

ls ${PATCH_DIR}/*/ -d | while read filename ; do
    commit_hash=${filename%/}
    commit_hash=${commit_hash##*/}

    mkdir ${commit_hash}
    pushd ${commit_hash}

    semantic_patch=${filename}inferred.cocci

    if [[ -e ${semantic_patch} ]] ; then
        cp ${semantic_patch} .

        git -C ${REPO_DIR} reset --hard ${START_COMMIT}
        git -C ${REPO_DIR} clean -fd

        spatch --sp-file inferred.cocci --dir ${TARGET} --in-place > spatch.log
        git -C ${REPO_DIR} diff > seda.patch
    fi

    popd
done

find -type f -empty -delete

