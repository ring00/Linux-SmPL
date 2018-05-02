//# pattern-6, witnesses: 3
@r0@
identifier i, fn;
@@
struct host1x_client_ops i = {
    .init = fn,
};
@@
identifier client;
identifier r0.fn;
@@
 int fn(struct host1x_client * client)
 {
     <...
- client->dev
+ client
     ...>
 }
