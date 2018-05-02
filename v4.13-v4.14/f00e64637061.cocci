//# pattern-2, witnesses: 3
@@
@@
- ibnl_unicast_wait(skb, nlh, iwpm_user_pid)
+ rdma_nl_unicast_wait(skb, iwpm_user_pid)
//# pattern-1, witnesses: 2
@@
expression E0;
@@
- ibnl_unicast(skb, E0, iwpm_pid)
+ rdma_nl_unicast(skb, iwpm_pid)
