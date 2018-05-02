//# pattern-6, witnesses: 4
@@
expression E0;
@@
- E0 = req_get_ioprio(vbr->req)
+ E0 = cpu_to_virtio32(vblk->vdev, req_get_ioprio(vbr->req))
//# pattern-4, witnesses: 2
@@
typedef bool;
identifier data_sg;
identifier have_data;
identifier vbr;
identifier vq;
@@
 int __virtblk_add_req(struct virtqueue * vq, struct virtblk_req * vbr, struct scatterlist * data_sg, bool have_data)
 {
     <...
- VIRTIO_BLK_T_OUT
+ cpu_to_virtio32(vq->vdev, VIRTIO_BLK_T_OUT)
     ...>
 }
//# pattern-5, witnesses: 2
@@
expression E0;
typedef bool;
identifier data_sg;
identifier have_data;
identifier vbr;
identifier vq;
@@
 int __virtblk_add_req(struct virtqueue * vq, struct virtblk_req * vbr, struct scatterlist * data_sg, bool have_data)
 {
     <...
- E0 == VIRTIO_BLK_T_SCSI_CMD
+ E0 == cpu_to_virtio32(vq->vdev, VIRTIO_BLK_T_SCSI_CMD)
     ...>
 }
