//# pattern-3, witnesses: 4
@@
@@
- adev->mc.is_gddr5
+ adev->mc.vram_type == AMDGPU_VRAM_TYPE_GDDR5
//# pattern-4, witnesses: 2
@@
statement S0;
identifier adev;
identifier table;
@@
 int ci_set_mc_special_registers(struct amdgpu_device * adev, struct ci_mc_reg_table * table)
 {
     <...
- if (!adev->mc.is_gddr5) { S0 }
+ if (adev->mc.vram_type != AMDGPU_VRAM_TYPE_GDDR5) { S0 }
     ...>
 }
