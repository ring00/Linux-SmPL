//# pattern-1, witnesses: 6
@@
expression ME0;
@@
- ip6t_do_table(skb, ops->hooknum, state->in, state->out, ME0)
+ ip6t_do_table(skb, ops->hooknum, state, ME0)
