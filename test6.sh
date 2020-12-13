#!/bin/sh

src/experiments/test.py local --schemes "taova auto_0_2" --run-times 5 --uplink-trace src/experiments/traces/3.04mbps-poisson.trace \
--downlink-trace src/experiments/traces/3.04mbps-poisson.trace \
--prepend-mm-cmds "mm-delay 130" \
--extra-mm-link-args "--uplink-queue=droptail --uplink-queue-args=packets=426" \
--data-dir results/result_Brazil_to_Colombia_taova

src/analysis/analyze.py --data-dir results/result_Brazil_to_Colombia_taova
