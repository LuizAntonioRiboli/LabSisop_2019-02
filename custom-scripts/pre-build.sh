#!/bin/sh

cp $BASE_DIR/../custom-scripts/S41network-config $BASE_DIR/target/etc/init.d
chmod +x $BASE_DIR/target/etc/init.d/S41network-config

# Trabalho 1
cp $BASE_DIR/../custom-scripts/S42server_setup $BASE_DIR/target/etc/init.d
chmod +x $BASE_DIR/target/etc/init.d/S42server_setup

cp $BASE_DIR/../custom-scripts/S42server_setup $BASE_DIR/target/usr/bin
chmod +x $BASE_DIR/target/usr/bin/simple_http_server.py

#cp $BASE_DIR/../custom-scripts/S43server_setup2 $BASE_DIR/target/etc/init.d
#chmod +x $BASE_DIR/target/etc/init.d/S43server_setup2

#cp $BASE_DIR/../custom-scripts/S43server_setup2 $BASE_DIR/target/usr/bin
#chmod +x $BASE_DIR/target/usr/bin/cpustat.py


# Tutorial 2.2: System calls
#Compile the syscall_test.c
BUILDROOT_DIR=$BASE_DIR/..
COMPILER=$BUILDROOT_DIR/output/host/bin/i686-buildroot-linux-uclibc-gcc
$COMPILER -o $BUILDROOT_DIR/output/target/bin/syscall_test $BUILDROOT_DIR/custom-scripts/syscall_test.c

# tutorial 2.3: Meu primeiro driver
make -C $BASE_DIR/../modules/simple_driver/

#tutorial 2.4 e T2:
make -C $BASE_DIR/../modules/t2-escalonador/


# Tutorial 3.1: Depurando o Kernel com Ftrace - parte 1 (v1.1)
cp $BASE_DIR/../custom-scripts/fstab $BASE_DIR/target/etc
chmod +x $BASE_DIR/target/etc/fstab 

# Tutorial 3.2: Depurando o Kernel com Ftrace - parte 2 (v1.1)
make -C $BASE_DIR/../simple_tracer/


















