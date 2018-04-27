//# pattern-4, witnesses: 5
@@
identifier s;
@@
 struct dsa_switch_driver s = {
-    .priv_size = sizeof(unsigned long),
 };
//# pattern-2, witnesses: 4
@r0@
identifier i, fn;
@@
struct dsa_switch_driver i = {
    .probe = fn,
};
@@
expression V0;
expression V1;
identifier dsa_dev;
identifier host_dev;
identifier r0.fn;
identifier sw_addr;
@@
- char * fn(struct device * dsa_dev, struct device * host_dev, int sw_addr)
+ char * fn(struct device * dsa_dev, struct device * host_dev, int sw_addr, void ** priv)
 {
     <...
- return mv88e6xxx_lookup_name(host_dev, sw_addr, V0, ARRAY_SIZE(V1));
+ struct mv88e6xxx_priv_state * ps = ps;
+ char * name = name;
+ name = mv88e6xxx_lookup_name(host_dev, sw_addr, V0, ARRAY_SIZE(V1));
+ if (name) {
+ ps = devm_kzalloc(dsa_dev, sizeof(unsigned long), GFP_KERNEL);
+ if (!ps) {
+ return NULL;
+ }
+ *priv = ps;
+ }
+ return name;
     ...>
 }
