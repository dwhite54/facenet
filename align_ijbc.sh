#!/bin/sh -x
for N in {1..16}; do \
	CUDA_VISIBLE_DEVICES=$(( $N % 4 )) \
		python src/align/align_dataset_mtcnn.py \
		../insightface/evaluation/IJB/IJBC/loose_crop \
		IJBC_align_160x160 \
		--image_size 160 --margin 32 --gpu_memory_fraction 0.20 --random_order \
	& done
