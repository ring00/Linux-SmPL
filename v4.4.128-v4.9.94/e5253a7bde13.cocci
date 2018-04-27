//# pattern-1, witnesses: 2
@@
expression BO0;
expression E2;
statement S1;
identifier msg;
identifier osdc;
@@
 void ceph_osdc_handle_map(struct ceph_osd_client * osdc, struct ceph_msg * msg)
 {
     <...
- if (osdc->osdmap && BO0) { S1 }
+ if (E2 BO0 epoch) { S1 }
     ...>
 }
