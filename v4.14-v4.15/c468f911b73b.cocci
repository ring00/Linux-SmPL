//# pattern-1, witnesses: 2
@@
expression E1;
expression V0;
@@
- ipmi_demangle_device_id(resp, V0, &E1->device_id)
+ ipmi_demangle_device_id(resp[0] >> 2, resp[1], resp + 2, V0 - 2, &E1->device_id)
