#!/bin/bash
set -e

echo "COCO/R Compiler Generator"
cd /source

/root/.dotnet/tools/coco $1 -frames . 

