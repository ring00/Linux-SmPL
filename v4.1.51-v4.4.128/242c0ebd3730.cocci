//# pattern-2, witnesses: 5
@@
@@
- bt_cb(skb)->req.start
+ bt_cb(skb)->hci.req_start
//# pattern-3, witnesses: 4
@@
expression E0;
@@
- bt_cb(E0)->req.complete_skb
+ bt_cb(E0)->hci.req_complete_skb
//# pattern-4, witnesses: 4
@@
expression E0;
@@
- bt_cb(E0)->req.complete
+ bt_cb(E0)->hci.req_complete
//# pattern-1, witnesses: 3
@@
expression E0;
@@
- bt_cb(E0)->req.event
+ bt_cb(E0)->hci.req_event
