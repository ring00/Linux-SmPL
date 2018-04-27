//# pattern-1, witnesses: 4
@@
expression V0;
expression V1;
@@
- ddev->saved_skb = skb_get(V0);
- ddev->saved_skb_len = V1->len;
+ ddev->saved_skb = pskb_copy(V0, GFP_KERNEL);
//# pattern-2, witnesses: 4
@@
@@
- kfree_skb(ddev->saved_skb);
//# pattern-4, witnesses: 3
@@
expression E0;
@@
- ddev->saved_skb = E0;
//# pattern-3, witnesses: 2
@@
expression E2;
expression F0;
expression F1;
@@
- skb_push(ddev->saved_skb, ddev->saved_skb_len);
- return F0(ddev, ddev->saved_skb, 1500, F1, E2);
+ int rc = rc;
+ if (!ddev->saved_skb) {
+ return -EINVAL;
+ }
+ rc = F0(ddev, ddev->saved_skb, 1500, F1, E2);
+ if (rc) {
+ kfree_skb(ddev->saved_skb);
+ }
+ return rc;
