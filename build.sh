#!/bin/bash
cd `dirname $0`
source layers/poky/oe-init-build-env
bitbake core-image-minimal
