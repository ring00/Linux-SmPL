//# pattern-4, witnesses: 2
@@
expression ME0;
identifier packet;
@@
 int hfi1_setup_9B_packet(struct hfi1_packet * packet)
 {
     <...
- ME0 = packet->ohdr;
     ...>
 }
//# pattern-6, witnesses: 2
@@
expression ME0;
identifier packet;
@@
 int hfi1_setup_bypass_packet(struct hfi1_packet * packet)
 {
     <...
- ME0 = packet->hdr;
     ...>
 }
