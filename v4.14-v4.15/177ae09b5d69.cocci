//# pattern-1, witnesses: 6
@@
expression E0;
expression E1;
expression E2;
@@
- amdgpu_sync_resv(adev, &E0, E1, E2)
+ amdgpu_sync_resv(adev, &E0, E1, E2, false)
