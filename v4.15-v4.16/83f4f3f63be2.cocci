//# pattern-2, witnesses: 3
@r0@
identifier i, fn;
@@
struct exynos_pcie_ops i = {
    .get_mem_resources = fn,
};
@@
identifier ep;
identifier pdev;
@@
 int exynos5440_pcie_get_mem_resources(struct platform_device * pdev, struct exynos_pcie * ep)
 { ... }
//# pattern-3, witnesses: 2
@r1@
identifier i, fn;
@@
struct exynos_pcie_ops i = {
    .get_mem_resources = fn,
};
@@
expression E0;
expression E1;
expression E2;
expression E3;
identifier ep;
identifier pdev;
@@
 int exynos5440_pcie_get_mem_resources(struct platform_device * pdev, struct exynos_pcie * ep)
 {
     <...
- res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
- E0 = E1;
- E2 = E3;
     ...>
 }
