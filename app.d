import libzfs;
import std.stdio;
import std.string;
import std.exception:enforce;

enum Pool = "tank";

void main(string[] args)
{
    auto zfs = libzfs_init();
    enforce(zfs !is null,"unable to initialise ZFS library");
    auto pool = zpool_open_canfail(zfs, Pool.ptr);
    enforce(pool !is null,"pool "~ Pool ~ "not found");
}
