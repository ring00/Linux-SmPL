//# pattern-1, witnesses: 10
@@
expression E0;
@@
- E0->ports[i].bridge_dev
+ dsa_to_port(E0, i)->bridge_dev
