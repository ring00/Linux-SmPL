//# pattern-6, witnesses: 32
@@
expression E0;
@@
- E0->tt.rport_destroy
+ fc_rport_destroy
//# pattern-4, witnesses: 2
@@
@@
- struct fc_lport * lport = rdata->local_port;
- if (rdata->event == RPORT_EV_NONE && !queue_work(rport_event_queue, &rdata->event_work)) {
- kref_put(&rdata->kref, lport->tt.rport_destroy);
- }
+ if (rdata->event == RPORT_EV_NONE && !queue_work(rport_event_queue, &rdata->event_work)) {
+ kref_put(&rdata->kref, fc_rport_destroy);
+ }
