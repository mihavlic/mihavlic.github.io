#!/usr/bin/sh

if [ -z "$ROOT_DIR" ]; then
    echo \$ROOT_DIR must be set to location of root rust directory
    exit
fi


# build the documentation excluding some rather large packages
cd $ROOT_DIR
cargo doc
cd -

mkdir -p static/rustdoc
cp -ru $ROOT_DIR/target/doc/* static/rustdoc/