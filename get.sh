#/usr/bin/env bash

SEDA_TARGET_MODULES="fs/btrfs drivers/block/drbd drivers/gpu/drm/radeon drivers/net/ethernet/intel/ixgbe"

mkdir -p tmp

for module in ${SEDA_TARGET_MODULES}
do
	name=${module##*/}

	while read line
	do
		commit=${line:0:12}
		mv ${name}/${commit}.* tmp/
	done < ${name}-commits.txt

	rm ${name}/*
	mv tmp/* ${name}
done
