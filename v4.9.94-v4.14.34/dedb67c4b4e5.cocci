//# pattern-2, witnesses: 5
@@
@@
- event |= NFNL_SUBSYS_NFTABLES << 8;
+ event = nfnl_msg_type(NFNL_SUBSYS_NFTABLES, event);
//# pattern-5, witnesses: 4
@@
expression E0;
expression EC1;
@@
- E0 = NFNL_SUBSYS_CTNETLINK << 8 | EC1
+ E0 = nfnl_msg_type(NFNL_SUBSYS_CTNETLINK, EC1)
//# pattern-1, witnesses: 2
@@
@@
- event |= NFNL_SUBSYS_CTNETLINK_TIMEOUT << 8;
+ event = nfnl_msg_type(NFNL_SUBSYS_CTNETLINK_TIMEOUT, event);
