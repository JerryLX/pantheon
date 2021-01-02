#!/bin/sh

#src/experiments/test.py local --schemes "auto_tf_0_1 auto_tf_0_2 auto_tf_0_3 auto_tf_0_4 auto_tf_0_5" --run-times 5  --uplink-trace src/experiments/traces/50mbps.trace \
src/experiments/test.py local --schemes "auto_0_3" --run-times 5  --uplink-trace src/experiments/traces/42mbps.trace \
--downlink-trace src/experiments/traces/42mbps.trace \
--prepend-mm-cmds "mm-delay 400 mm-loss uplink 0.0074" \
--extra-mm-link-args "--uplink-queue=droptail --uplink-queue-args=packets=1500" \
--data-dir results/result_Satellite

src/analysis/analyze.py --data-dir results/result_Satellite
