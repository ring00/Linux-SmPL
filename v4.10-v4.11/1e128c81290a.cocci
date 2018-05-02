//# pattern-16, witnesses: 2
@@
expression E0;
typedef bool;
identifier fn;
identifier type;
@@
 bool fn(enum protocol_type type)
 {
     <...
- type == PROTOCOLID_ISCSI || E0
+ type == PROTOCOLID_ISCSI || type == PROTOCOLID_FCOE || E0
     ...>
 }
