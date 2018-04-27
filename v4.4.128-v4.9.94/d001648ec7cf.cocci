//# pattern-9, witnesses: 8
@@
typedef bool;
identifier call;
identifier fn;
identifier last;
identifier skb;
@@
- int fn(struct afs_call * call, struct sk_buff * skb, bool last)
+ int fn(struct afs_call * call)
 {
     <...
- afs_transfer_reply(call, skb, last)
+ afs_transfer_reply(call)
     ...>
 }
//# pattern-3, witnesses: 7
@@
identifier call;
identifier fn;
@@
 int fn(struct afs_call * call)
 {
     <...
- _enter(, call->unmarshall, skb->len)
+ _enter()
     ...>
 }
//# pattern-1, witnesses: 4
@r2@
identifier i, fn;
@@
struct afs_call_type i = {
    .deliver = fn,
};
@@
identifier call;
identifier r2.fn;
@@
 int fn(struct afs_call * call)
 {
     <...
- afs_data_complete(call, skb, last)
+ afs_extract_data(call, NULL, 0, false)
     ...>
 }
//# pattern-2, witnesses: 4
@r3@
identifier i, fn;
@@
struct afs_call_type i = {
    .deliver = fn,
};
@@
identifier call;
identifier r3.fn;
@@
 int fn(struct afs_call * call)
 {
     <...
- _enter(, skb->len)
+ _enter
     ...>
 }
//# pattern-28, witnesses: 3
@@
identifier s;
@@
 const struct afs_wait_mode s = {
 };
//# pattern-8, witnesses: 2
@@
typedef bool;
identifier call;
identifier fn;
identifier last;
identifier skb;
@@
- int fn(struct afs_call * call, struct sk_buff * skb, bool last)
+ int fn(struct afs_call * call)
 {
     <...
- afs_transfer_reply(call, skb, last)
+ afs_transfer_reply(call)
     ...>
 }
//# pattern-12, witnesses: 2
@r6@
identifier i, fn;
@@
struct afs_call_type i = {
    .deliver = fn,
};
@@
identifier call;
identifier r6.fn;
@@
 int fn(struct afs_call * call)
 {
     <...
- _enter(, call->unmarshall, skb->len)
+ _enter()
     ...>
 }
//# pattern-15, witnesses: 2
@@
identifier call;
identifier fn;
@@
 int fn(struct afs_call * call)
 {
     <...
- _enter()
+ _enter
     ...>
 }
//# pattern-30, witnesses: 2
@@
identifier call;
identifier fn;
@@
 int fn(struct afs_call * call)
 {
     <...
- _enter()
+ _enter
     ...>
 }
