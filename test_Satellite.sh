#!/bin/sh

src/experiments/test.py local --all --uplink-trace src/experiments/traces/42mbps.trace \
--downlink-trace src/experiments/traces/42mbps.trace \
--prepend-mm-cmds "mm-delay 400 mm-loss uplink 0.0074" \
--extra-mm-link-args "--uplink-queue=droptail --uplink-queue-args=packets=1500" \
--data-dir results/result_Satellite

src/analysis/analyze.py --data-dir results/result_Satellite
