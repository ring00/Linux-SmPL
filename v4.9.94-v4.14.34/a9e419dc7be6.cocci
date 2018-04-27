//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
expression E0;
identifier hooknum;
identifier net;
identifier pf;
identifier skb;
typedef u_int8_t;
@@
 unsigned int nf_conntrack_in(struct net * net, u_int8_t pf, unsigned int hooknum, struct sk_buff * skb)
 {
     <...
- skb->nfct = NULL
+ skb->_nfct = E0
     ...>
 }
//# pattern-2, witnesses: 2
@@
expression E0;
@@
- skb->nfct != NULL
+ skb->_nfct != E0
//# pattern-5, witnesses: 2
@@
expression E0;
@@
- E0->nfct
+ E0->_nfct
