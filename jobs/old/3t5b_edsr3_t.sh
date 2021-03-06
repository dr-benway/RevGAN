#!/bin/bash
#SBATCH -t 0-05:00:00
#SBATCH -p gpu
#SBATCH -o log/3t5b_edsr3_t
cd ..
python test.py --phase testcube3d --name 3t5b_edsr3_1 --dataroot ../../image_standardization_t7505/3t5_3d --model pix2pix3d --which_model_netG edsr3_1 --dataset_mode unaligned --input_nc 1 --output_nc 1 --gpu_ids -1 --display_id -1 --serial_batches 2>&1 >> log/3t5b_edsr3_t1 
python test.py --phase testcube3d --name 3t5b_edsr3_2 --dataroot ../../image_standardization_t7505/3t5_3d --model pix2pix3d --which_model_netG edsr3_2 --dataset_mode unaligned --input_nc 1 --output_nc 1 --gpu_ids -1 --display_id -1 --serial_batches 2>&1 >> log/3t5b_edsr3_t2 
python test.py --phase testcube3d --name 3t5b_edsr3_4 --dataroot ../../image_standardization_t7505/3t5_3d --model pix2pix3d --which_model_netG edsr3_4 --dataset_mode unaligned --input_nc 1 --output_nc 1 --gpu_ids -1 --display_id -1 --serial_batches 2>&1 >> log/3t5b_edsr3_t4
python test.py --phase testcube3d --name 3t5b_edsr3_8 --dataroot ../../image_standardization_t7505/3t5_3d --model pix2pix3d --which_model_netG edsr3_8 --dataset_mode unaligned --input_nc 1 --output_nc 1 --gpu_ids -1 --display_id -1 --serial_batches 2>&1 >> log/3t5b_edsr3_t8
wait
