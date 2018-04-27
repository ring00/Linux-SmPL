//# pattern-2, witnesses: 4
@r0@
identifier i, fn;
@@
struct lwtunnel_encap_ops i = {
    .build_state = fn,
};
@@
identifier cfg;
identifier family;
identifier nla;
identifier r0.fn;
identifier ts;
@@
- int fn(struct nlattr * nla, unsigned int family, const void * cfg, struct lwtunnel_state ** ts)
+ int fn(struct nlattr * nla, unsigned int family, const void * cfg, struct lwtunnel_state ** ts, struct netlink_ext_ack * extack)
 {
     <...
- NULL
+ extack
     ...>
 }
//# pattern-5, witnesses: 3
@@
expression E0;
expression E1;
expression IL2;
@@
- lwtunnel_build_state(E0, E1, IL2, cfg, &lwtstate)
+ lwtunnel_build_state(E0, E1, IL2, cfg, &lwtstate, extack)
//# pattern-6, witnesses: 2
@r1@
identifier i, fn;
@@
struct lwtunnel_encap_ops i = {
    .build_state = fn,
};
@@
identifier cfg;
identifier extack;
identifier family;
identifier nla;
identifier r1.fn;
identifier ts;
@@
 int fn(struct nlattr * nla, unsigned int family, const void * cfg, struct lwtunnel_state ** ts, struct netlink_ext_ack * extack)
 {
     <...
- NULL
+ extack
     ...>
 }
