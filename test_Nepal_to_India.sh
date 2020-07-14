#!/bin/sh

src/experiments/test.py local --all --uplink-trace src/experiments/traces/0.57mbps-poisson.trace \
--downlink-trace src/experiments/traces/0.57mbps-poisson.trace \
--prepend-mm-cmds "mm-delay 28 mm-loss uplink 0.0477" \
--extra-mm-link-args "--uplink-queue=droptail --uplink-queue-args=packets=14" \
--data-dir results/result_Nepal_to_India

src/analysis/analyze.py --data-dir results/result_Nepal_to_India