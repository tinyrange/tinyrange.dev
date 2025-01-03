TinyRange is a light-weight scriptable orchestration system for building and running virtual machines with a focus on speed and flexibility for development.

!!! note

    TinyRange is currently a Pre-Alpha and expect major breaking changes as the architecture is improved and features are explored.

# Getting Started

TinyRange runs on Windows (amd64), MacOS (arm64), Linux (amd64, arm64). Support for other host operating systems is coming in the future.

TinyRange can be installed from a release or built from source.

## Installing a Release

Just go to [https://github.com/tinyrange/tinyrange/releases](https://github.com/tinyrange/tinyrange/releases) and download a release for your operating system.

The releases can be extracted anywhere and do not write files outside their location without additional configuration.

If your running Windows then the release includes a copy of QEMU compatible with TinyRange. On macOS and Linux you need to install QEMU yourself...

- On **macOS** with [Homebrew](https://brew.sh/): `brew install qemu`
- On **Ubuntu**/**Debian**: `sudo apt install qemu-kvm`
- On **Fedora Linux**: `sudo dnf install qemu-kvm`
- On **Alpine Linux**: `sudo apk add qemu-system-x86_64` (or `sudo apk add qemu-system-arm` on ARM64)

For example if your release is called `tinyrange-linux-amd64.zip` and your on Linux you can extract and run TinyRange using...
```sh
unzip tinyrange-linux-amd64.zip
cd tinyrange
./tinyrange login
```

## Building from Source

TinyRange is written in [Go](https://go.dev/) and requires both Go and [QEMU](https://www.qemu.org/) to be installed before it can be built.

It can be built and run from source with the following commands...

```sh
git clone https://github.com/tinyrange/tinyrange
cd tinyrange
./tools/build.go -run -- login
```

# License

TinyRange is released under the Apache 2.0 License.