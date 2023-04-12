---
weight: 1
bookFlatSection: true
title: "Introduction"
---

# Introduction

This project implements the [dual contouring](https://www.cs.rice.edu/~jwarren/papers/dualcontour.pdf) algorithm to extract triangle meshes from closed-form implicit surfaces and provides a nice Gui to manipulate and save the resulting model.

An implicit surface is a function {{< katex >}}f(x, y, z){{< /katex >}}, where {{< katex >}}x{{< /katex >}}, {{< katex >}}y{{< /katex >}}, and {{< katex >}}z{{< /katex >}} represent a position in 3D space. By convention, if {{< katex >}}f(x, y, z){{< /katex >}} < 0, then that position is inside the shape; if it’s > 0, then that position is outside the shape; otherwise, it’s on the boundary of the shape.

![The application in use](/example.png)

# Building
You need recent graphics drivers (not hardware), Vulkan headers, rust, and a C++ compiler.

## Archlinux
1. `sudo pacman -S vulkan-headers rust base-devel`
2. `git clone https://github.com/mihavlic/function-renderer && cd function-renderer`
3. `cargo run`

## Windows
1. download the [Lunarg SDK](https://vulkan.lunarg.com/)
2. install [Rust](https://www.rust-lang.org/tools/install)
2. somehow get MSVC, probably through the [SDK](https://developer.microsoft.com/en-us/windows/downloads/windows-sdk/)
4. `git clone https://github.com/mihavlic/function-renderer && cd function-renderer`
5. `cargo run`