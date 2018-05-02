//# pattern-1, witnesses: 3
@@
expression E0;
expression E1;
@@
- E0->agent.recv_handler(&E1->agent, mad_recv_wc)
+ E0->agent.recv_handler(&E1->agent, NULL, mad_recv_wc)
