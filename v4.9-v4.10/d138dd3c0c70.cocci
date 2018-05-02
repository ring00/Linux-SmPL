//# pattern-2, witnesses: 2
@@
statement S0;
@@
- if (property == config->rotation_property) { S0 }
+ if (property == config->rotation_property || property == plane->rotation_property) { S0 }
