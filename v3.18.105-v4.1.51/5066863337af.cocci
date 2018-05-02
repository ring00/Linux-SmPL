//# pattern-6, witnesses: 4
@@
expression V0;
@@
- char [2] tag = tag;
- if (scsi_populate_tag_msg(V0, tag)) {
- }
//# pattern-3, witnesses: 2
@@
expression E0;
@@
- if (E0) {
- int msg_bytes = msg_bytes;
- uint8_t [2] tag_msgs = tag_msgs;
- msg_bytes = scsi_populate_tag_msg(cmd, tag_msgs);
- if (msg_bytes && tag_msgs[0] != MSG_SIMPLE_TASK) {
- hscb->control |= tag_msgs[0];
- if (tag_msgs[0] == MSG_ORDERED_TASK) {
- dev->commands_since_idle_or_otag = 0;
- }
- }
- }
+ if (E0) {
+ }
//# pattern-4, witnesses: 2
@@
@@
- char [2] tag = tag;
- if (scsi_populate_tag_msg(cmd, tag)) {
- }
