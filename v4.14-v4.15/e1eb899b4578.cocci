//# pattern-5, witnesses: 2
@@
expression E0;
expression E2;
expression E3;
expression IL1;
@@
- amdgpu_gem_object_create(adev, E0, 0, IL1, E2, E3, &gobj)
+ amdgpu_gem_object_create(adev, E0, 0, IL1, E2, E3, NULL, &gobj)
//# pattern-8, witnesses: 2
@@
@@
- NULL
+ &duplicates
