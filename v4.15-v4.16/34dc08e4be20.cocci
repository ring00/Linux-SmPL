//# pattern-1, witnesses: 2
@r0@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier addr;
identifier bus;
identifier r0.fn;
identifier regnum;
typedef u16;
typedef u32;
identifier val;
@@
- int fn(struct mii_bus * bus, int addr, u32 regnum, u16 val)
+ int fn(struct mii_bus * bus, int addr, u32 regnum, u16 val)
 {
     <...
- err = bus->write(bus, addr, regnum, val);
- trace_mdio_access(bus, 0, addr, regnum, val, err);
+ err = __mdiobus_write(bus, addr, regnum, val);
     ...>
 }
//# pattern-2, witnesses: 2
@r1@
identifier i, fn;
@@
struct kernel_symbol i = {
    .value = fn,
};
@@
identifier addr;
identifier bus;
identifier r1.fn;
identifier regnum;
typedef u32;
@@
- int fn(struct mii_bus * bus, int addr, u32 regnum)
+ int fn(struct mii_bus * bus, int addr, u32 regnum)
 {
     <...
- retval = bus->read(bus, addr, regnum);
- trace_mdio_access(bus, 1, addr, regnum, retval, retval);
+ retval = __mdiobus_read(bus, addr, regnum);
     ...>
 }
