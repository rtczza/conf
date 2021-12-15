#!/bin/bash

cd $(dirname "$BASH_SOURCE")

if ! cmake --version ; then
    echo "Failed to get CMake version, please check if it's installed."
fi

if ! cmake -DCMAKE_BUILD_TYPE=Release -S . -B build/ ; then
    echo "Failed to configure CMake project."
fi

if ! cmake --build build/ ; then
    echo "Failed to build CMake project."
fi
