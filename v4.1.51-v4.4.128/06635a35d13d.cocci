//# pattern-2, witnesses: 8
@@
expression list listE0;
@@
- skb_flow_dissect(listE0)
+ skb_flow_dissect_flow_keys(listE0)
//# pattern-15, witnesses: 6
@@
identifier PV0;
@@
- PV0->ports
+ PV0->ports.ports
//# pattern-25, witnesses: 6
@@
@@
- keys->port16
+ keys->ports.port16
//# pattern-3, witnesses: 3
@@
expression V0;
@@
- V0.n_proto
+ V0.basic.n_proto
//# pattern-22, witnesses: 3
@@
identifier PV0;
@@
- PV0->src
+ PV0->addrs.src
//# pattern-24, witnesses: 3
@@
expression V0;
@@
- V0->keys
+ V0->keys.ports
//# pattern-28, witnesses: 3
@@
identifier PV0;
@@
- PV0->dst
+ PV0->addrs.dst
//# pattern-36, witnesses: 3
@@
expression V0;
@@
- V0.ip_proto
+ V0.basic.ip_proto
//# pattern-9, witnesses: 2
@@
@@
- flow->src
+ flow->addrs.src
//# pattern-11, witnesses: 2
@@
identifier PV0;
@@
- PV0->ip_proto
+ PV0->basic.ip_proto
//# pattern-12, witnesses: 2
@@
@@
- flow->dst
+ flow->addrs.dst
//# pattern-31, witnesses: 2
@@
@@
- n->keys
+ n->keys.addrs
//# pattern-32, witnesses: 2
@@
identifier flow;
identifier fn;
identifier skb;
typedef u32;
@@
 u32 fn(const struct sk_buff * skb, const struct flow_keys * flow)
 {
     <...
- flow->port16
+ flow->ports.port16
     ...>
 }
