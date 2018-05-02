//# pattern-1, witnesses: 12
@r0@
identifier i, fn;
@@
struct dvb_frontend_ops i = {
    .read_status = fn,
};
@@
identifier fe;
identifier r0.fn;
identifier status;
@@
- int fn(struct dvb_frontend * fe, fe_status_t * status)
+ int fn(struct dvb_frontend * fe, enum fe_status * status)
 { ... }
//# pattern-4, witnesses: 3
@r1@
identifier i, fn;
@@
struct dvb_frontend_ops i = {
    .set_voltage = fn,
};
@@
identifier fe;
typedef fe_sec_voltage_t;
identifier r1.fn;
identifier voltage;
@@
- int fn(struct dvb_frontend * fe, fe_sec_voltage_t voltage)
+ int fn(struct dvb_frontend * fe, enum fe_sec_voltage voltage)
 { ... }
//# pattern-6, witnesses: 3
@r2@
identifier i, fn;
@@
struct dvb_frontend_ops i = {
    .set_tone = fn,
};
@@
identifier fe;
typedef fe_sec_tone_mode_t;
identifier r2.fn;
identifier tone;
@@
- int fn(struct dvb_frontend * fe, fe_sec_tone_mode_t tone)
+ int fn(struct dvb_frontend * fe, enum fe_sec_tone_mode tone)
 { ... }
//# pattern-9, witnesses: 3
@r3@
identifier i, fn;
@@
struct dvb_frontend_ops i = {
    .diseqc_send_burst = fn,
};
@@
identifier burst;
identifier fe;
typedef fe_sec_mini_cmd_t;
identifier r3.fn;
@@
- int fn(struct dvb_frontend * fe, fe_sec_mini_cmd_t burst)
+ int fn(struct dvb_frontend * fe, enum fe_sec_mini_cmd burst)
 { ... }
//# pattern-2, witnesses: 2
@r4@
identifier i, fn;
@@
struct dvb_frontend_ops i = {
    .tune = fn,
};
@@
typedef bool;
identifier delay;
identifier fe;
identifier mode_flags;
identifier r4.fn;
identifier re_tune;
identifier status;
@@
- int fn(struct dvb_frontend * fe, bool re_tune, unsigned int mode_flags, unsigned int * delay, fe_status_t * status)
+ int fn(struct dvb_frontend * fe, bool re_tune, unsigned int mode_flags, unsigned int * delay, enum fe_status * status)
 { ... }
