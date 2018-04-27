//# pattern-8, witnesses: 7
@r0@
identifier i, fn;
@@
struct nf_conntrack_l3proto i = {
    .init_net = fn,
};
@@
identifier net;
@@
 int ipv4_init_net(struct net * net)
 {
     <...
- struct nf_ip_net * in = &net->ct.nf_ct_proto;
     ...>
 }
//# pattern-6, witnesses: 3
@r1@
identifier i, fn;
@@
struct nf_conntrack_l4proto i = {
    .init_net = fn,
};
@@
expression E0;
identifier net;
identifier proto;
identifier r1.fn;
typedef u_int16_t;
@@
 int fn(struct net * net, u_int16_t proto)
 {
     <...
- int ret = ret;
- if (proto == AF_INET) {
- ret = E0;
- if (ret < 0) {
- return ret;
- }
- ret = ;
- if (ret < 0) {
- nf_ct_kfree_compat_sysctl_table(pn);
- }
- }
- return ret;
+ return ;
     ...>
 }
//# pattern-4, witnesses: 2
@@
expression F0;
expression V1;
@@
- int ret = ret;
- ret = ;
- ret = F0(pn, V1);
- if (ret < 0) {
- nf_ct_kfree_compat_sysctl_table(pn);
- }
- return ret;
+ return F0(pn, V1);
//# pattern-5, witnesses: 2
@@
expression F0;
expression V1;
@@
- int ret = ret;
- ret = ;
- if (ret < 0) {
- return ret;
- }
- ret = F0(pn, V1);
- return ret;
+ return F0(pn, V1);
