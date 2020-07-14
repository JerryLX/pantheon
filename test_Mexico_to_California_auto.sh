#!/bin/sh

src/experiments/test.py local --schemes "auto_pcc1 auto_pcc2 auto_pcc3 auto_pcc4 auto_pcc5 auto_pcc6 auto_pcc7 auto_pcc8 auto_pcc9 fillp" --uplink-trace src/experiments/traces/2.64mbps-poisson.trace \
--downlink-trace src/experiments/traces/2.64mbps-poisson.trace \
--prepend-mm-cmds "mm-delay 88" \
--extra-mm-link-args "--uplink-queue=droptail --uplink-queue-args=packets=130" \
--data-dir results/result_Mexico_to_California

src/analysis/analyze.py --data-dir results/result_Mexico_to_California