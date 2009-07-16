#!/usr/bin/env python

import cuda
import cu

import cublas
import cufft

import memory
import kernel

import utils
import sugar

import logging
logging.basicConfig(level=logging.DEBUG)
#logging.disable(logging.ERROR)

import platform

# add $CUDA_ROOT/bin to %PATH% in windows
if platform.system() == "Windows":
    import _winreg as wreg
    reg = wreg.ConnectRegistry(None, wreg.HKEY_LOCAL_MACHINE)
    key = wreg.OpenKey(reg, r"SOFTWARE\NVIDIA Corporation\Installed Products\NVIDIA CUDA")
    import os
    cuda_bin = os.path.join(wreg.QueryValueEx(key, "InstallDir")[0],"bin")
    os.environ['PATH'] += os.path.pathsep + cuda_bin
