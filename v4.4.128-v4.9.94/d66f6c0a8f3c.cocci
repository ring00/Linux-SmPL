//# pattern-1, witnesses: 2
@@
expression E0;
@@
- if (!saddr && ipc.oif) {
- err = l3mdev_get_saddr(net, ipc.oif, E0);
- if (err < 0) {
- }
- }
