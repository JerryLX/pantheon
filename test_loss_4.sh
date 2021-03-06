#!/bin/sh

src/experiments/test.py local --schemes "pcc vivace" --run-times 1 --uplink-trace src/experiments/traces/12mbps.trace \
--downlink-trace src/experiments/traces/12mbps.trace \
--prepend-mm-cmds "mm-delay 100 mm-loss uplink 0.04" \
--data-dir results/test_loss_4

src/analysis/analyze.py --data-dir results/test_loss_4
