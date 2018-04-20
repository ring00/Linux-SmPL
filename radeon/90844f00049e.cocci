unknown kind: DoStmt
unknown kind: DoStmt
unknown kind: DoStmt
unknown kind: DoStmt
//# pattern-1, witnesses: 4
@@
expression E0;
@@
+ const char * format_name = drm_get_format_name(E0->pixel_format);
+ kfree(format_name);
//# pattern-4, witnesses: 2
@@
@@
+ const char * format_name = format_name;
+ format_name = drm_get_format_name(fb->pixel_format);
+ kfree(format_name);
