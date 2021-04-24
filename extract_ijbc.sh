#!/bin/bash -x
CUDA_VISIBLE_DEVICES=0 python src/validate_on_lfw.py \
    --distance_metric 1 --use_flipped_images --subtract_mean --use_fixed_image_standardization
    --input_path IJBC_align_160x160 --model_path models/casia/20180408-102900.pb \
    --output_path casia_ir2_ijbc_embs.npy
CUDA_VISIBLE_DEVICES=0 python src/validate_on_lfw.py \
    --distance_metric 1 --use_flipped_images --subtract_mean --use_fixed_image_standardization
    --input_path IJBC_align_160x160 --model_path models/vggface2/20180408-102900.pb \
    --output_path vggface2_ir2_ijbc_embs.npy
