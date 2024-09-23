# Xenomai4 / Dovetail / EVL on Fedora 37

This is a port of [Xenomai 4 / EVL](https://v4.xenomai.org/) to Linux Kernel 6.10.10 for Fedora 37.

The `kernel-6.5.13-100.fc37.src.rpm` found here comes directly from Fedora. You do not need to unpack it, I've already done that. I've included it here for completeness.

Building a Xenomai4-enabled Fedora Kernel is quite simple:

1. The build system used here is based on Fedora's own build system. It uses `fedpkg` and `kernel.spec`. It's quite a nice build system, very easy to use, and it works. One of the things I like most is that it does quite a bit of sanity checking on your `defconfig` files.

   To install all the required prerequisites for using `fedpkg`, please run the script named`install-fedora-dependencies.sh` found here.

2. This is not an official Fedora project. I have no association or affiliation with either RedHat, or Fedora, or IBM. I used to work at IBM TJ Watson Research, in IBM Quantum, as a Compiler Engineer. I left because it was a toxic place to work.

# How To Build a Xenomai4 Kernel:

1. Run the `do-fedpkg-prep.sh` script. This script checks that all the patches apply correctly and that the kernel can be built - in principle. The output of `do-fedpkg-prep.sh` is captured in `fedpkg-prep.log`.

2. Cleanup after `do-fedpkg-prep.sh` by running the `cleanup-kernel.sh` script.

3. Run the `do-fedpkg-local.sh` script. This will build the kernel. When it's finished, you will have a directory named `x86_64`. This is where all the RPMs will be. The output of `do-fedpkg-local.sh` is captured in `fedpkg-local.log`.

4. To avoid packaging namespace conflicts with the upstream Fedora kernel RPMs, the `.buildid` for this kernel is set to `.xenomai`, and the `pkgrelease` is set to `300`. You will see this in the names of the resulting RPMs.

5. The patch that imports and applies all the Xenomai changes, found here, is named `patch-6.5-dovetail-evl.patch`.

6. I've done some preliminary testing on `x86_64`, but not fully comprehensive testing. This is an ongoing project for me, and I will be doing more testing along the way, which means it's very likely there will be updates.

