//# pattern-3, witnesses: 2
@@
identifier PV0;
@@
- PV0->recv_buf.mad
+ &PV0->recv_buf.mad->mad_hdr
