#!/bin/bash

set -e

echo "::group:: ===$(basename "$0")==="

if [ "$BUILD_TYPE" = "nvidia" ]; then
  apt-get install nvidia_glx_common && \
  nvidia-install-driver

#  apt-get install -y apt-repo-lakostis-kmodules apt-repo-lakostis && \
#  apt-get update && \
#  apt-get install -y kernel-modules-nvidia-open-6.12 nvidia_glx libnvoptix nvidia-tools libnvidia-ml

  echo "blacklist nouveau" > /etc/modprobe.d/blacklist-nvidia-x11.conf
fi

echo "::endgroup::"