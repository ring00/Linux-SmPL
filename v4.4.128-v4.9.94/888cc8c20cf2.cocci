//# pattern-2, witnesses: 2
@@
typedef __u32;
identifier fn;
identifier mdp;
typedef u32;
identifier x;
@@
 __u32 fn(struct sh_eth_private * mdp, u32 x)
 {
     <...
- return x;
     ...>
 }
