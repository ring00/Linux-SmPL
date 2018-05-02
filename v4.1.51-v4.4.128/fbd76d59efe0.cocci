//# pattern-4, witnesses: 3
@@
statement S0;
@@
- if (tiling_flags & AMDGPU_TILING_MICRO) { S0 }
+ if (AMDGPU_TILING_GET(tiling_flags) == ARRAY_1D_TILED_THIN1) { S0 }
