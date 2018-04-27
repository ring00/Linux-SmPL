//# pattern-3, witnesses: 3
@@
@@
- bt_cb(skb)->hci.req_start = true;
+ bt_cb(skb)->hci.req_flags |= HCI_REQ_START;
//# pattern-2, witnesses: 2
@@
@@
- bt_cb(skb)->hci.req_start
+ bt_cb(skb)->hci.req_flags & HCI_REQ_START
//# pattern-5, witnesses: 2
@@
@@
- bt_cb(skb)->hci
+ bt_cb(skb)->hci
