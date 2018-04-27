//# pattern-5, witnesses: 2
@@
expression E0;
expression EC1;
typedef bool;
identifier port;
@@
 bool dsa_port_is_dsa(struct device_node * port)
 {
     <...
- const char * name = name;
- name = of_get_property(port, "label", NULL);
- if (!E0) {
- return EC1;
- }
     ...>
 }
