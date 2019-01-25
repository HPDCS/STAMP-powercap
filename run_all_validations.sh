#!/bin/bash
ITERATIONS=3
THREADS=20

export STM_STATS=1

echo "Started run_all_comparisons_stm"

python hope_config_writer.py -detection_mode 3
python hope_config_writer.py -heuristic_mode 15

for b in $(seq 1 $ITERATIONS)
do	
	echo "Running iteration $b..."

	python hope_config_writer.py -commits_round 5000
	numactl --physcpubind=+0-$(( $THREADS-1 )) stamp/vacation/./vacation -n4 -q60 -u90 -r1048576 -t4019430400 -c$THREADS
	python hope_config_writer.py -commits_round 18000
	numactl --physcpubind=+0-$(( $THREADS-1 )) stamp/intruder/./intruder -a5 -l512 -n642144 -s1 -t$THREADS
	python hope_config_writer.py -commits_round 1750
	numactl --physcpubind=+0-$(( $THREADS-1 )) stamp/genome/./genome -g22238 -s1024 -n249772160 -t$THREADS
	python hope_config_writer.py -commits_round 75000
	numactl --physcpubind=+0-$(( $THREADS-1 )) stamp/ssca2/./ssca2 -s24 -i1.0 -u1.0 -l3 -p3 -t$THREADS
done
