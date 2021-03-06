#!/bin/bash
#SBATCH -t 0-05:00:00
#SBATCH -p gpu
#SBATCH -o log/3t5_B_4
cd ..
python train.py --name 3t5_B_4 --dataroot ../../image_standardization_t7505/3t5b_3d --model pix2pix3d --which_model_netG edsr3_4 --dataset_mode unaligned --input_nc 1 --output_nc 1 --gpu_ids 0 --display_id -1 --serial_batches 2>&1 >> log/3t5_B_4.log
wait
