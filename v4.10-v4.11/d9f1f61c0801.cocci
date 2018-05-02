//# pattern-7, witnesses: 2
@@
@@
- tap_free_minor(&vlantap->tap)
+ tap_free_minor(macvtap_major, &vlantap->tap)
