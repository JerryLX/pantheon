#!/bin/sh

src/experiments/test.py local --schemes "auto_0_2" --run-times 10 --uplink-trace src/experiments/traces/3.04mbps-poisson.trace \
--downlink-trace src/experiments/traces/3.04mbps-poisson.trace \
--prepend-mm-cmds "mm-delay 130" \
--extra-mm-link-args "--uplink-queue=droptail --uplink-queue-args=packets=426" \
--data-dir results/test

src/analysis/analyze.py --data-dir results/test

#src/analysis/analyze.py --data-dir results/result_Korea_to_China

#src/experiments/test.py local --schemes "auto_0_6 auto_0_7" --uplink-trace src/experiments/traces/114.68mbps.trace \
#--downlink-trace src/experiments/traces/114.68mbps.trace \
#--prepend-mm-cmds "mm-delay 45" \
#--extra-mm-link-args "--uplink-queue=droptail --uplink-queue-args=packets=450" \
#--data-dir results/result_California_to_Mexico
#src/analysis/analyze.py --data-dir results/result_California_to_Mexico

#Satellite queue 1500 model retrain-70808000.model preference 0.7 0.5 0.1 0.05
