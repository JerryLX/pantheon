#!/bin/sh

src/experiments/test.py local --all --uplink-trace src/experiments/traces/2.64mbps-poisson.trace \
--downlink-trace src/experiments/traces/2.64mbps-poisson.trace \
--prepend-mm-cmds "mm-delay 88" \
--extra-mm-link-args "--uplink-queue=droptail --uplink-queue-args=packets=130" \
--data-dir results/result_Mexico_to_California

src/analysis/analyze.py --data-dir results/result_Mexico_to_California