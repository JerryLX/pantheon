#!/bin/sh

src/experiments/test.py local -t 40 --schemes "auto_0_6 fillp" --run-times 10 --uplink-trace src/experiments/traces/fluctuate3.trace \
--downlink-trace src/experiments/traces/fluctuate3.trace \
--prepend-mm-cmds "mm-delay 50 mm-loss uplink 0.001" \
--data-dir results/result_fluctuate4

src/analysis/analyze.py --data-dir results/result_fluctuate4
