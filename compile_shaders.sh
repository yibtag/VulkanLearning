#!/bin/bash

cd src/shaders

glslc simple.vert -o simple.vert.spv
glslc simple.frag -o simple.frag.spv