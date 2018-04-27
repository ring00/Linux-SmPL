//# pattern-2, witnesses: 10
@@
@@
- return nlmsg_end(skb, nlh);
+ nlmsg_end(skb, nlh);
+ return 0;
//# pattern-3, witnesses: 4
@@
expression V0;
expression V1;
expression V2;
@@
- V0 = genlmsg_end(skb, V1);
- if (V2 < 0) {
- }
+ genlmsg_end(skb, V1);
//# pattern-1, witnesses: 3
@@
expression V0;
expression V1;
expression V2;
expression V3;
expression V4;
@@
- int  = V0;
- V1 = genlmsg_end(skb, V2);
- if (V3 < 0) {
- nlmsg_free(skb);
- return V4;
- }
+ genlmsg_end(skb, V2);
