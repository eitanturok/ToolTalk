#!/usr/bin/env bash

output_dir="output/gpt-3.5"

python -m tooltalk.evaluation.evaluate --dataset data/easy --database data/databases --model gpt-3.5-turbo --output_dir $output_dir/easy
python -m tooltalk.evaluation.evaluate --dataset data/tooltalk --database data/databases --model gpt-3.5-turbo --output_dir $output_dir/hard
python -m tooltalk.evaluation.calculate_error_types --dataset $output_dir/easy --metrics $output_dir/easy_metrics.json
python -m tooltalk.evaluation.calculate_error_types --dataset $output_dir/hard --metrics $output_dir/hard_metrics.json
