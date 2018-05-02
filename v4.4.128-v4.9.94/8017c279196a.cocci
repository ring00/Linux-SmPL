//# pattern-2, witnesses: 2
@@
@@
- unregister_hotcpu_notifier(&vi->nb)
+ virtnet_cpu_notif_remove(vi)
