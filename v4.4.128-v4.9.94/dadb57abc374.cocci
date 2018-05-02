//# pattern-5, witnesses: 2
@@
@@
- unsigned long map_size = map_size;
- status = efi_get_memory_map(sys_table_arg, &map, &map_size, &desc_size, NULL, NULL);
+ unsigned long map_size = map_size;
+ struct efi_boot_memmap boot_map = boot_map;
+ boot_map.map = &map;
+ boot_map.map_size = &map_size;
+ boot_map.desc_size = &desc_size;
+ boot_map.desc_ver = NULL;
+ boot_map.key_ptr = NULL;
+ boot_map.buff_size = &buff_size;
+ status = efi_get_memory_map(sys_table_arg, &boot_map);
