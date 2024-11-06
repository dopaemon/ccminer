#!/bin/bash

# ARCH="-march=armv8-a+crypto+sha2+crc"
# CORE="-mtune=cortex-a73 -mtune=cortex-a53"
# OPTI="-Ofast -pthread -fopenmp -flto -fstrict-aliasing -ftree-vectorize -funroll-loops -ffinite-loops -finline-functions -fno-stack-protector -fomit-frame-pointer -fpic -falign-functions=64 -D_REENTRANT"

# ./configure CXXFLAGS="$ARCH $CORE $OPTI" CFLAGS="$ARCH $CORE $OPTI" \
# CXX=clang++ CC=clang  LDFLAGS="-Wl,-hugetlbfs-align -fuse-ld=lld"

# Test

# ARCH: Thiết lập kiến trúc ARMv9 với các mở rộng quan trọng
ARCH="-march=armv9-a+crypto+sha3+crc+flagm"

# CORE: Tối ưu hóa cho lõi chính của Snapdragon 8 Gen 1
CORE="-mtune=cortex-x2 -mtune=cortex-a710 -mtune=cortex-a510"

# OPTI: Các cờ tối ưu hóa bổ sung, giữ lại các cờ tối ưu hiệu năng và song song
OPTI="-Ofast -pthread -fopenmp -flto -fstrict-aliasing -ftree-vectorize -funroll-loops -ffinite-loops -finline-functions -fno-stack-protector -fomit-frame-pointer -fpic -falign-functions=64 -D_REENTRANT"

# Configure script with optimized flags
./configure CXXFLAGS="$ARCH $CORE $OPTI" CFLAGS="$ARCH $CORE $OPTI" \
CXX=clang++ CC=clang LDFLAGS="-Wl,-hugetlbfs-align -fuse-ld=lld"

