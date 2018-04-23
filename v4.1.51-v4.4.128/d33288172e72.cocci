//# pattern-3, witnesses: 2
@@
identifier fn;
identifier id;
identifier net;
identifier s;
@@
 - struct sockaddr_in s = {
+ union ipvs_sockaddr s = {
-    .sin_family = AF_INET,
-    . = (),
-    .sin_addr = ,
 };
struct socket * fn(struct net * net, int id)
 {
     <...
- struct sockaddr_in s = {
+ union ipvs_sockaddr s = {
-    .sin_family = AF_INET,
-    . = (),
-    .sin_addr = ,
 };
     ...>
 }
