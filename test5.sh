#!/bin/sh

src/experiments/test.py local --schemes "auto_0_4 auto_0_5" --run-times 5 --uplink-trace src/experiments/traces/77.72mbps.trace \
--downlink-trace src/experiments/traces/77.72mbps.trace \
--prepend-mm-cmds "mm-delay 51 mm-loss uplink 0.0006" \
--extra-mm-link-args "--uplink-queue=droptail --uplink-queue-args=packets=94" \
--data-dir results/test5

src/analysis/analyze.py --data-dir results/test5
