//# pattern-1, witnesses: 3
@@
@@
- nf_bridge->mask |= BRNF_PKT_TYPE;
+ nf_bridge->pkt_otherhost = true;
//# pattern-2, witnesses: 3
@@
@@
- if (nf_bridge->mask & BRNF_PKT_TYPE) {
- nf_bridge->mask ^= BRNF_PKT_TYPE;
- }
+ if (nf_bridge->pkt_otherhost) {
+ nf_bridge->pkt_otherhost = false;
+ }
