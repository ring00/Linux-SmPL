//# pattern-7, witnesses: 3
@@
expression E0;
@@
- cpuhp_remove_multi_state(E0);
//# pattern-1, witnesses: 2
@@
@@
- err = virtscsi_cpu_notif_add(vscsi);
- if (err) {
- }
//# pattern-3, witnesses: 2
@@
expression E0;
identifier fn;
identifier vdev;
@@
 int fn(struct virtio_device * vdev)
 {
     <...
- struct Scsi_Host * sh = virtio_scsi_host(vdev);
- struct virtio_scsi * vscsi = shost_priv(sh);
- E0;
     ...>
 }
//# pattern-9, witnesses: 2
@@
expression E0;
@@
- ret = cpuhp_setup_state_multi(CPUHP_AP_ONLINE_DYN, "scsi/virtio:online", virtscsi_cpu_online, NULL);
- ret = cpuhp_setup_state_multi(CPUHP_VIRT_SCSI_DEAD, "scsi/virtio:dead", NULL, virtscsi_cpu_online);
- if (E0) {
- }
