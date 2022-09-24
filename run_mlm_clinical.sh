#!/bin/bash

python run_mlm.py \
    --output_dir 'Clinical_IHC_BERT/weights' \
    --config_name 'emilyalsentzer/Bio_ClinicalBERT' \
    --tokenizer_name 'emilyalsentzer/Bio_ClinicalBERT' \
    --model_name_or_path 'emilyalsentzer/Bio_ClinicalBERT' \
    --train_file 'data/train.txt' \
    --validation_file 'data/eval.txt' \
    --line_by_line \
    --do_train true \
    --max_seq_length 512 \
    --pad_to_max_length true \
    --max_steps 400000 \
    --pad_to_max_length true \
    --overwrite_output_dir false \
    --num_train_epochs 1 \
    --do_eval true \
    --metric_for_best_model 'eval_loss' \
    --load_best_model_at_end true \
    --evaluation_strategy 'steps' \
    --eval_steps 1000 \
    --save_strategy 'steps' \
    --save_steps 10000 \
    --greater_is_better false \
    --per_device_eval_batch_size 8 \
    --per_device_train_batch_size 8 \
    --report_to 'tensorboard' \
    --logging_dir 'Clinical_IHC_BERT/runs' \
    --log_level 'debug' \
    --logging_strategy 'steps' \
    --logging_steps 10 \
    --logging_first_step true 


# Read more: https://huggingface.co/docs/transformers/main/en/main_classes/trainer#transformers.TrainingArguments
