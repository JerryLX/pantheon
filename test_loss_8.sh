#!/bin/sh

#src/experiments/test.py local --schemes "auto_0_6 fillp copa indigo bbr cubic ledbat pcc taova vegas vivace aurora" --run-times 1 --uplink-trace src/experiments/traces/12mbps.trace \
src/experiments/test.py local --schemes "copa" --run-times 3 --uplink-trace src/experiments/traces/12mbps.trace \
--downlink-trace src/experiments/traces/12mbps.trace \
--prepend-mm-cmds "mm-delay 100 mm-loss uplink 0.08" \
--data-dir results/test_loss_8

src/analysis/analyze.py --data-dir results/test_loss_8
