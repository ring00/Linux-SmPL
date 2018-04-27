//# pattern-1, witnesses: 2
@@
expression EC0;
expression S1;
@@
- if (local->hw.flags & EC0) {
- sf += scnprintf(buf + sf, mxln - sf, S1);
- }
