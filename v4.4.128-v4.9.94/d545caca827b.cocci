//# pattern-4, witnesses: 4
@@
expression E0;
expression E3;
expression E4;
expression E5;
expression E7;
expression IL6;
expression V1;
expression V2;
@@
- inet_sctp_diag_fill(sk, E0, V1, V2, sk_user_ns(NETLINK_CB(E3).sk), NETLINK_CB(E4).portid, E5->nlmsg_seq, IL6, E7)
+ inet_sctp_diag_fill(sk, E0, V1, V2, sk_user_ns(NETLINK_CB(E3).sk), NETLINK_CB(E4).portid, E5->nlmsg_seq, IL6, E7, commp->net_admin)
