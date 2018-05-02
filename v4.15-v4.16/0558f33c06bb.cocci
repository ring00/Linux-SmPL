//# pattern-4, witnesses: 3
@@
expression EC0;
@@
- sas_discover_event(dev->port, EC0);
//# pattern-2, witnesses: 2
@@
expression EC0;
identifier r0.fn;
identifier work;
@@
- void fn(struct work_struct * work)
+ void fn(struct asd_sas_port * port)
 {
     <...
- struct sas_discovery_event * ev = to_sas_discovery_event(work);
- struct asd_sas_port * port = ev->port;
- clear_bit(EC0, &port->disc.pending);
     ...>
 }
