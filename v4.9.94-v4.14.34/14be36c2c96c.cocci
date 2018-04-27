//# pattern-1, witnesses: 2
@@
expression V0;
expression V1;
@@
- if (!dsa_port_is_cpu(&ds->ports[V0])) {
- ds->enabled_port_mask |= 1 << V1;
- }
