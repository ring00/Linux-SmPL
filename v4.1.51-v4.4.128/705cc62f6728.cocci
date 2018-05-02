//# pattern-1, witnesses: 2
@@
identifier fn;
identifier s;
identifier vs;
@@
  sa_family_t s = {
 };
void fn(struct vxlan_sock * vs)
 {
     <...
 sa_family_t s = {
 };
     ...>
 }
