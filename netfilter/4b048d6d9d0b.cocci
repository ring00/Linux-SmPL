//# pattern-2, witnesses: 11
@@
expression E0;
expression E1;
expression E2;
@@
- inet_proto_csum_replace2(E0, skb, E1, E2, 0)
+ inet_proto_csum_replace2(E0, skb, E1, E2, false)
//# pattern-5, witnesses: 7
@@
expression E1;
expression E2;
expression ME0;
@@
- inet_proto_csum_replace4(&ME0, skb, E1, E2, 0)
+ inet_proto_csum_replace4(&ME0, skb, E1, E2, false)
//# pattern-1, witnesses: 5
@@
expression E0;
expression E1;
expression E2;
@@
- inet_proto_csum_replace4(E0, skb, E1, E2, 1)
+ inet_proto_csum_replace4(E0, skb, E1, E2, true)
//# pattern-6, witnesses: 4
@@
expression E0;
expression E1;
expression E2;
@@
- inet_proto_csum_replace16(E0, skb, E1, E2, 1)
+ inet_proto_csum_replace16(E0, skb, E1, E2, true)
//# pattern-3, witnesses: 3
@@
expression E0;
expression E1;
expression E2;
@@
- inet_proto_csum_replace2(E0, skb, htons(E1), htons(E2), 1)
+ inet_proto_csum_replace2(E0, skb, htons(E1), htons(E2), true)
