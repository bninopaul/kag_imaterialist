#!/bin/bash
data_base=~/.kaggle/competitions/imaterialist-challenge-fashion-2018/
train=train.json
validation=validation.json
test=test.json

outdir_base=/data/data/nbatanay/kaggle_imaterialist/
train_dir=train/
validation_dir=validation/
test_dir=test/

#train  #download only 100,00 0 images for now
python download_data.py $data_base$train $outdir_base$train_dir 100000

#validation data
python download_data.py $data_base$validation $outdir_base$validation_dir None

#test data
python download_data.py $data_base$test $outdir_base$test_dir None