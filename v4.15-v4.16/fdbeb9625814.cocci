//# pattern-3, witnesses: 8
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression E4;
expression E5;
@@
- E0->cb.ts(E1, E2, E3, E4, &E5->feed.ts)
+ E0->cb.ts(E1, E2, E3, E4, &E5->feed.ts, NULL)
//# pattern-2, witnesses: 5
@@
@@
- dprintk;
+ set_buf_flags(feed, DMX_BUFFER_FLAG_DISCONTINUITY_DETECTED);
+ dprintk_sect_loss;
//# pattern-1, witnesses: 2
@@
expression E0;
expression E1;
identifier buf;
identifier feed;
identifier fn;
@@
 int fn(struct dvb_demux_feed * feed, const u8 * buf)
 {
     <...
- feed->cb.ts(E0, E1, NULL, 0, &feed->feed.ts)
+ feed->cb.ts(E0, E1, NULL, 0, &feed->feed.ts, &feed->buffer_flags)
     ...>
 }
//# pattern-17, witnesses: 2
@@
expression E0;
expression E1;
expression E2;
expression E3;
expression E4;
expression E5;
@@
- E0->feed->cb.sec(E1, E2, E3, E4, &E5->filter)
+ E0->feed->cb.sec(E1, E2, E3, E4, &E5->filter, NULL)
//# pattern-20, witnesses: 2
@@
@@
- -EOPNOTSUPP
+ -ENOTTY
