//# pattern-28, witnesses: 6
@@
@@
- ASSERTCMP(ntohl, )
+ ASSERTCMP(sp->hdr.seq, )
//# pattern-3, witnesses: 5
@@
@@
- ntohl
+ sp->hdr.seq
//# pattern-35, witnesses: 4
@@
expression E0;
expression E1;
@@
- E0 = htonl(E1)
+ E0 = E1
//# pattern-2, witnesses: 3
@@
expression E0;
expression ME1;
@@
- E0 = ntohl(ME1)
+ E0 = ME1
//# pattern-33, witnesses: 3
@@
expression E0;
@@
- E0->real_conn_id
+ E0->cid
//# pattern-60, witnesses: 3
@@
@@
- ntohl
+ sp->hdr.seq
//# pattern-76, witnesses: 3
@@
@@
- struct rxrpc_header hdr = hdr;
+ struct rxrpc_wire_header whdr = whdr;
//# pattern-8, witnesses: 2
@@
expression E0;
expression E1;
@@
- E0 = htonl(atomic_inc_return)
+ E0 = atomic_inc_return(&E1->serial)
//# pattern-15, witnesses: 2
@@
expression E0;
@@
- E0 = ntohl(rxrpc_skb->hdr.seq)
+ E0 = rxrpc_skb(skb)->hdr.seq
//# pattern-63, witnesses: 2
@@
@@
- _proto(, ntohl)
+ _proto(, sp->hdr.serial)
//# pattern-84, witnesses: 2
@@
expression E0;
@@
- E0 | htonl(chan)
+ E0 | chan
