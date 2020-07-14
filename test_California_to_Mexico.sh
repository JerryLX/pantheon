#!/bin/sh

src/experiments/test.py local --all --uplink-trace src/experiments/traces/114.68mbps.trace \
--downlink-trace src/experiments/traces/114.68mbps.trace \
--prepend-mm-cmds "mm-delay 45" \
--extra-mm-link-args "--uplink-queue=droptail --uplink-queue-args=packets=450" \
--data-dir results/result_California_to_Mexico

src/analysis/analyze.py --data-dir results/result_California_to_Mexico