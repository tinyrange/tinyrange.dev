---
title: TinyRange for System Administrators
---

## What is it?

TinyRange is a unprivileged runtime for quickly developing and running virtual machines across a wide range of host systems. It enables users to easily run short-lived Linux virtual machines hosting a range of software.

## Frequently Asked Questions?

### What Licenses are TinyRange under?

TinyRange itself is licensed Apache 2.0 which is a Open Source license with minimal restrictions for usage in commercial environments beyond acknowledgement in derived works. TinyRange allows the installation of a range of software inside a virtual machine covered by the software's own licenses. Builders are included for a range of freely available open source software from Alpine Linux and Ubuntu with more software coming in the future.

### Does TinyRange need to be installed?

No, TinyRange runs by default in a "portable" mode where it won't place files outside its own directory.

It can be installed but this is not officially supported yet (feel free to open an issue if your interested in this use case though).

### What privileges does TinyRange need to run?

None, TinyRange can run on any Windows, MacOS, or Linux system without any privileges beyond the ability to run the software.

Performance can be improved on Windows by adding "Windows Hypervisor Platform" and on Linux by granting access to the KVM device but if speed and power efficiency are not an issue these steps are optional. MacOS systems come with hardware accelerated virtualization already enabled for all users.

### What security risk does TinyRange create?

Because TinyRange runs without any additional privileges the most a virtual machine can do is limited to the user running the software. In this regard TinyRange should be thought of the same as any other programming environment (like Python, Node.js, Microsoft 365 with Macros, etc...).

It does not install drivers or change system configuration or run background tasks so a system without a TinyRange instance running is equivalent to a system without TinyRange.

Hardware accelerated virtualization does imply additional attack surface on the host kernel but both Windows (once installed) and MacOS grant access to unprivileged users and most Linux distributions configure this by default. The hardware acceleration simply allows regular processes to run code while capturing accesses to hardware devices. It does not grant access to hardware on its own.

### How do TinyRange Virtual Machines connect to the internet?

TinyRange runs unprivileged so virtual machines are not directly connected to the host network. Instead TinyRange opens and forwards sockets on their behalf. These sockets are identical to sockets used by other applications and have no additional privileges.

Sockets listening inside TinyRange can not be reached from the host unless a forwarder is explicably created for the virtual machine.

### What are the minimum system requirements for TinyRange?

TinyRange doesn't require much from the system it's running on.

- A modern operating system released in the last 3-5 years.
- A x86_64 CPU (Windows and Linux) or arm64 CPU (macOS and Linux)
- At least 200MB of free disk space.
- TinyRange consumes around 1GB of RAM by default so follow operating system recommendations around minimum RAM. 

That is the bare minimum. The recommended specifications are...

- A multi-core x86_64 or arm64 CPU.
- Access to hardware acceleration on a modern operating system **(This is key to good performance)**.
- 8GB of RAM.
- At least 10GB of free disk space.