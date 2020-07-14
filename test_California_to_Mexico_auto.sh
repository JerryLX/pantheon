#!/bin/sh

src/experiments/test.py local --schemes "auto_pcc1 auto_pcc2 auto_pcc3 auto_pcc4 auto_pcc5 auto_pcc6 auto_pcc7 auto_pcc8 auto_pcc9 fillp" --uplink-trace src/experiments/traces/114.68mbps.trace \
--downlink-trace src/experiments/traces/114.68mbps.trace \
--prepend-mm-cmds "mm-delay 45" \
--extra-mm-link-args "--uplink-queue=droptail --uplink-queue-args=packets=450" \
--data-dir results/result_California_to_Mexico

src/analysis/analyze.py --data-dir results/result_California_to_Mexico