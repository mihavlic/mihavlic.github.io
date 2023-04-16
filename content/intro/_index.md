---
weight: 1
bookFlatSection: true
title: "Overview"
---

# Overview

This is an implementation of the dual [dual contouring](https://www.cs.rice.edu/~jwarren/papers/dualcontour.pdf) in Vulkan compute shaders. It includes an Egui graphical interface for editing and viewing the function. It can also export .stl files.

An implicit surface is a function {{< katex >}}f(x, y, z){{< /katex >}}, where {{< katex >}}x, y, z{{< /katex >}} represent a position in 3D space. The function value determines the "density" of the position: negative is inside the shape, positive is outside the object, zero is on the boundary of the shape and it is what gets visualized.

![The application in use](/screenshot.png)

# Building
Consider using the [release binaries](https://github.com/mihavlic/function-renderer/releases).

You need recent graphics drivers, shaderc, Rust, and a C++ compiler.

## Archlinux
```fish
sudo pacman -S shaderc rust gcc
git clone https://github.com/mihavlic/function-renderer.git
cd function-renderer
cargo run
```

## Windows
Install the [Lunarg SDK](https://vulkan.lunarg.com/), [Rust](https://www.rust-lang.org/tools/install), and get MSVC from the [Windows SDK](https://developer.microsoft.com/en-us/windows/downloads/windows-sdk/), then run:
```fish
git clone https://github.com/mihavlic/function-renderer.git
cd function-renderer
cargo run
```