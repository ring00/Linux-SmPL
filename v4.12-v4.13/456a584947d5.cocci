//# pattern-4, witnesses: 2
@@
expression ME1;
identifier PV0;
identifier buf;
identifier cm_info;
identifier local_mac_addr;
identifier p_hwfn;
identifier payload_len;
identifier remote_mac_addr;
identifier tcp_start_offset;
@@
 int qed_iwarp_parse_rx_pkt(struct qed_hwfn * p_hwfn, struct qed_iwarp_cm_info * cm_info, void * buf, u8 * remote_mac_addr, u8 * local_mac_addr, int * payload_len, int * tcp_start_offset)
 {
     <...
- memcpy(PV0, ME1, ETH_ALEN)
+ ether_addr_copy(PV0, ME1)
     ...>
 }
