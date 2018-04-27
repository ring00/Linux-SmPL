//# pattern-3, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
typedef bool;
identifier ct;
identifier ctinfo;
identifier match_len;
identifier match_offset;
identifier protoff;
identifier rep_buffer;
identifier rep_len;
identifier skb;
@@
- int nf_nat_mangle_udp_packet(struct sk_buff * skb, struct nf_conn * ct, enum ip_conntrack_info ctinfo, unsigned int protoff, unsigned int match_offset, unsigned int match_len, const char * rep_buffer, unsigned int rep_len)
+ bool nf_nat_mangle_udp_packet(struct sk_buff * skb, struct nf_conn * ct, enum ip_conntrack_info ctinfo, unsigned int protoff, unsigned int match_offset, unsigned int match_len, const char * rep_buffer, unsigned int rep_len)
 {
     <...
- return 0;
+ return false;
     ...>
 }
//# pattern-4, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier adjust;
typedef bool;
identifier ct;
identifier ctinfo;
identifier match_len;
identifier match_offset;
identifier protoff;
identifier rep_buffer;
identifier rep_len;
identifier skb;
@@
- int __nf_nat_mangle_tcp_packet(struct sk_buff * skb, struct nf_conn * ct, enum ip_conntrack_info ctinfo, unsigned int protoff, unsigned int match_offset, unsigned int match_len, const char * rep_buffer, unsigned int rep_len, bool adjust)
+ bool __nf_nat_mangle_tcp_packet(struct sk_buff * skb, struct nf_conn * ct, enum ip_conntrack_info ctinfo, unsigned int protoff, unsigned int match_offset, unsigned int match_len, const char * rep_buffer, unsigned int rep_len, bool adjust)
 {
     <...
- return 0;
+ return false;
     ...>
 }
//# pattern-11, witnesses: 2
@r2@
identifier i, fn;
@@
union anon i = {
    . = fn,
};
@@
statement S2;
expression V0;
expression V1;
identifier ct;
identifier ctinfo;
identifier ctlh;
identifier pptpReq;
identifier protoff;
identifier r2.fn;
identifier skb;
@@
 int fn(struct sk_buff * skb, struct nf_conn * ct, enum ip_conntrack_info ctinfo, unsigned int protoff, struct PptpControlHeader * ctlh, union pptp_ctrl_union * pptpReq)
 {
     <...
- if (nf_nat_mangle_tcp_packet(skb, ct, ctinfo, protoff, V0 + sizeof(unsigned long) + sizeof(unsigned long), sizeof(unsigned long), &V1, sizeof(unsigned long)) == 0) { S2 }
+ if (!nf_nat_mangle_tcp_packet(skb, ct, ctinfo, protoff, V0 + sizeof(unsigned long) + sizeof(unsigned long), sizeof(unsigned long), &V1, sizeof(unsigned long))) { S2 }
     ...>
 }
//# pattern-12, witnesses: 2
@r3@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
typedef bool;
identifier ct;
identifier ctinfo;
identifier match_len;
identifier match_offset;
identifier protoff;
identifier rep_buffer;
identifier rep_len;
identifier skb;
@@
 bool nf_nat_mangle_udp_packet(struct sk_buff * skb, struct nf_conn * ct, enum ip_conntrack_info ctinfo, unsigned int protoff, unsigned int match_offset, unsigned int match_len, const char * rep_buffer, unsigned int rep_len)
 {
     <...
- return 1;
+ return true;
     ...>
 }
