//# pattern-7, witnesses: 4
@r0@
identifier i, fn;
@@
struct lwtunnel_encap_ops i = {
    .build_state = fn,
};
@@
identifier cfg;
identifier dev;
identifier family;
identifier nla;
identifier r0.fn;
identifier ts;
@@
- int fn(struct net_device * dev, struct nlattr * nla, unsigned int family, const void * cfg, struct lwtunnel_state ** ts)
+ int fn(struct nlattr * nla, unsigned int family, const void * cfg, struct lwtunnel_state ** ts)
 { ... }
//# pattern-2, witnesses: 3
@@
@@
- struct net_device * dev = NULL;
//# pattern-6, witnesses: 3
@@
expression E0;
expression E1;
expression IL2;
@@
- lwtunnel_build_state(dev, E0, E1, IL2, cfg, &lwtstate)
+ lwtunnel_build_state(E0, E1, IL2, cfg, &lwtstate)
//# pattern-1, witnesses: 2
@@
@@
- if (cfg->fc_oif) {
- dev = __dev_get_by_index(net, cfg->fc_oif);
- }
//# pattern-8, witnesses: 2
@r1@
identifier i, fn;
@@
struct lwtunnel_encap_ops i = {
    .build_state = fn,
};
@@
identifier cfg;
identifier family;
identifier nla;
identifier r1.fn;
identifier ts;
@@
 int fn(struct nlattr * nla, unsigned int family, const void * cfg, struct lwtunnel_state ** ts)
 { ... }
