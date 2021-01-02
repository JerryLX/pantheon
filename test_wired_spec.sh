#!/bin/sh

src/experiments/test.py local --schemes "test1 test2" --uplink-trace src/experiments/traces/50mbps.trace \
--downlink-trace src/experiments/traces/50mbps.trace \
--prepend-mm-cmds "mm-delay 51 mm-loss uplink 0.0006" \
--extra-mm-link-args "--uplink-queue=droptail --uplink-queue-args=packets=94" \
--data-dir results/wired_spec

src/analysis/analyze.py --data-dir results/wired_spec
