#!/bin/sh

# NP: do we need a python script for that ?

python createbindings.py -H /usr/local/cuda/include/cuda.h -l /usr/local/cuda/lib/libcuda.dylib -x cu.xml -p ../cuda/cu/cudadrv.py
python createbindings.py -H /usr/local/cuda/include/cuda_runtime.h -l /usr/local/cuda/lib/libcudart.dylib -x cudart.xml -p ../cuda/cuda/cudart.py
python createbindings.py -H /usr/local/cuda/include/cublas.h -l /usr/local/cuda/lib/libcublas.dylib -x cublas.xml -p ../cuda/cublas/cublas.py
python createbindings.py -H /usr/local/cuda/include/cufft.h -l /usr/local/cuda/lib/libcufft.dylib -x cufft.xml -p ../cuda/cufft/cufft.py

#find . -iname \*.py -exec python {} \;

python ../cuda/cu/cudadrv.py
python ../cuda/cuda/cudart.py
python ../cuda/cublas/cublas.py
python ../cuda/cufft/cufft.py
