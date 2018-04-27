//# pattern-2, witnesses: 2
@@
expression E2;
expression E5;
expression ME1;
expression ME4;
expression V0;
expression V3;
@@
- V0 = idr_find(&ME1, E2);
- if (V3) {
- idr_remove(&ME4, E5);
- }
+ V0 = idr_remove(&ME4, E5);
+ if (V3) {
+ }
//# pattern-5, witnesses: 2
@@
expression ME2;
expression ME5;
identifier PV1;
identifier PV4;
expression V0;
expression V3;
@@
- V0 = idr_find(&PV1->ack_status_frames, ME2);
- if (V3) {
- idr_remove(&PV4->ack_status_frames, ME5);
- }
+ V0 = idr_remove(&PV4->ack_status_frames, ME5);
