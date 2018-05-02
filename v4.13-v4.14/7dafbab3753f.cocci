//# pattern-3, witnesses: 4
@@
expression E0;
@@
- E0 = 
+ E0 = ib_bth_get_psn(ohdr)
//# pattern-2, witnesses: 3
@@
expression E0;
@@
- E0 |= !!sc5 & 16 << PBC_DC_INFO_SHIFT
+ E0 |= ib_is_sc5(sc5) << PBC_DC_INFO_SHIFT
//# pattern-1, witnesses: 2
@@
expression E0;
expression E1;
@@
- E0 =  & RVT_QPN_MASK
+ E0 = ib_bth_get_qpn(E1)
//# pattern-4, witnesses: 2
@@
expression E0;
@@
- E0 =  & RVT_QPN_MASK
+ E0 = ib_get_sqpn(ohdr)
