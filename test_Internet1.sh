#!/bin/sh

src/experiments/test.py remote lixu@202.120.38.131:/home/lixu/pantheon --schemes "auto_0_6 fillp" --run-times 5 \
--data-dir results/internet1

src/analysis/analyze.py --data-dir results/internet1
