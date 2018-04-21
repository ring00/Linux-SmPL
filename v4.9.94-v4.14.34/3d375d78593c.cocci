//# pattern-2, witnesses: 4
@@
expression IL4;
expression S2;
expression V0;
expression V1;
expression V3;
expression V5;
expression V6;
@@
- unsigned int  = V0;
- V1 = alloc_large_system_hash(S2, sizeof(unsigned long), V3, IL4, 0, &V5, &V6, 0, 0);
+ V1 = alloc_large_system_hash(S2, sizeof(unsigned long), V3, IL4, HASH_ZERO, &V5, &V6, 0, 0);
//# pattern-1, witnesses: 2
@@
expression IL3;
expression S1;
expression V0;
expression V2;
expression V4;
expression V5;
@@
- unsigned int loop = loop;
- V0 = alloc_large_system_hash(S1, sizeof(unsigned long), V2, IL3, HASH_EARLY, &V4, &V5, 0, 0);
+ V0 = alloc_large_system_hash(S1, sizeof(unsigned long), V2, IL3, HASH_EARLY | HASH_ZERO, &V4, &V5, 0, 0);
