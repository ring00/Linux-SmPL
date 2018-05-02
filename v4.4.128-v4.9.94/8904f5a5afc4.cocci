//# pattern-1, witnesses: 2
@@
@@
- unregister_hotcpu_notifier(&vscsi->nb)
+ virtscsi_cpu_notif_remove(vscsi)
