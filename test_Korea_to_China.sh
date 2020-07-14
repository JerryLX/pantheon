#!/bin/sh

src/experiments/test.py local --all --uplink-trace src/experiments/traces/77.72mbps.trace \
--downlink-trace src/experiments/traces/77.72mbps.trace \
--prepend-mm-cmds "mm-delay 51 mm-loss uplink 0.0006" \
--extra-mm-link-args "--uplink-queue=droptail --uplink-queue-args=packets=94" \
--data-dir results/result_Korea_to_China

src/analysis/analyze.py --data-dir results/result_Korea_to_China
