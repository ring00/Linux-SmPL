//# pattern-2, witnesses: 6
@@
expression list listE0;
@@
- get_pad_info(listE0)
+ get_sw_data(listE0)
//# pattern-3, witnesses: 2
@@
identifier fdq;
identifier netcp;
@@
 int netcp_allocate_rx_buf(struct netcp_intf * netcp, int fdq)
 {
     <...
- u32 [2] pad = pad;
- if (likely(fdq == 0)) {
- }
+ u32 [2] sw_data = sw_data;
+ if (likely(fdq == 0)) {
+ }
     ...>
 }
//# pattern-4, witnesses: 2
@@
expression IL0;
expression V1;
identifier fdq;
identifier netcp;
@@
 int netcp_allocate_rx_buf(struct netcp_intf * netcp, int fdq)
 {
     <...
- u32 [2] pad = pad;
- if (likely(fdq == 0)) {
- pad[IL0] = V1;
- }
+ u32 [2] sw_data = sw_data;
+ if (likely(fdq == 0)) {
+ sw_data[IL0] = V1;
+ }
     ...>
 }
