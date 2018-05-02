//# pattern-1, witnesses: 2
@@
expression E0;
@@
- vring_used_event(&vq->vring) = cpu_to_virtio16(_vq->vdev, E0);
- virtio_mb(vq->weak_barriers);
+ virtio_store_mb(vq->weak_barriers, &vring_used_event(&vq->vring), cpu_to_virtio16(_vq->vdev, E0));
