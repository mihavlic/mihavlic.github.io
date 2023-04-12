#!/usr/bin/sh

if [ -z "$ROOT_DIR" ]; then
    echo \$ROOT_DIR must be set to location of root rust directory
    exit
fi

OLD_PWD=$(pwd)
cd $ROOT_DIR

# build the documentation excluding some rather large packages
cargo doc --all-features

echo Compressing generated documentation
cd target/doc/
zip --recurse-paths -qdgds 10m $OLD_PWD/static/rustdoc.zip * \
    --exclude libc \
    --exclude gtk_sys \
    --exclude linux_raw_sys \
    --exclude x11_dl \
    --exclude x11_rb \
    --exclude wayland_protocols \
    --exclude gio_sys \
    --exclude gdk_sys \
    --exclude implementors \
    --exclude glib_sys \
    --exclude smithay_client_toolkit \
    --exclude syn