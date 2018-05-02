//# pattern-1, witnesses: 2
@@
identifier info;
@@
 void cyz_handle_rx(struct cyclades_port * info)
 {
     <...
- &cyz_rx_full_timer[info->line]
+ &info->rx_full_timer
     ...>
 }
