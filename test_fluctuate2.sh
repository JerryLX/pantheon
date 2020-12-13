#!/bin/sh

src/experiments/test.py local -t 40 --schemes "copa" --run-times 5 --uplink-trace src/experiments/traces/fluctuate2.trace \
--downlink-trace src/experiments/traces/fluctuate.trace \
--prepend-mm-cmds "mm-delay 50 mm-loss uplink 0.01" \
--data-dir results/result_fluctuate5

src/analysis/analyze.py --data-dir results/result_fluctuate5
