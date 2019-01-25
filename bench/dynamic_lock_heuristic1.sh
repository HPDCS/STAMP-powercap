ITERATIONS=8
export STM_STATS=1

		
for b in $(seq 1 $ITERATIONS)	
do	
	echo "Iteration $b"

	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 80.0 5000 50 11 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/vacation/./vacation -n4 -q60 -u90 -r1048576 -t10194304 -c20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/vacation-80-stm-baseline.txt
	
	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 80.0 5000 50 9 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/vacation/./vacation -n4 -q60 -u90 -r1048576 -t10194304 -c20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/vacation-80-stm-h0.txt

	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 80.0 5000 50 10 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/vacation/./vacation -n4 -q60 -u90 -r1048576 -t10194304 -c20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/vacation-80-stm-h1.txt

	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 70.0 5000 50 11 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/vacation/./vacation -n4 -q60 -u90 -r1048576 -t10194304 -c20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/vacation-70-stm-baseline.txt
	
	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 70.0 5000 50 9 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/vacation/./vacation -n4 -q60 -u90 -r1048576 -t10194304 -c20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/vacation-70-stm-h0.txt

	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 70.0 5000 50 10 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/vacation/./vacation -n4 -q60 -u90 -r1048576 -t10194304 -c20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/vacation-70-stm-h1.txt

	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 60.0 5000 50 11 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/vacation/./vacation -n4 -q60 -u90 -r1048576 -t10194304 -c20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/vacation-60-stm-baseline.txt
	
	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 60.0 5000 50 9 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/vacation/./vacation -n4 -q60 -u90 -r1048576 -t10194304 -c20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/vacation-60-stm-h0.txt

	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 60.0 5000 50 10 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/vacation/./vacation -n4 -q60 -u90 -r1048576 -t10194304 -c20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/vacation-60-stm-h1.txt

	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 50.0 5000 50 11 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/vacation/./vacation -n4 -q60 -u90 -r1048576 -t10194304 -c20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/vacation-50-stm-baseline.txt
	
	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 50.0 5000 50 9 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/vacation/./vacation -n4 -q60 -u90 -r1048576 -t10194304 -c20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/vacation-50-stm-h0.txt

	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 50.0 5000 50 10 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/vacation/./vacation -n4 -q60 -u90 -r1048576 -t10194304 -c20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/vacation-50-stm-h1.txt

	echo "Vacation completed"

	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 80.0 5000 50 11 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/intruder/./intruder -a10 -l128 -n262144 -s1 -t20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/intruder-80-stm-baseline.txt
	
	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 80.0 5000 50 9 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/intruder/./intruder -a10 -l128 -n262144 -s1 -t20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/intruder-80-stm-h0.txt

	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 80.0 5000 50 10 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/intruder/./intruder  -a10 -l128 -n262144 -s1 -t20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/intruder-80-stm-h1.txt

	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 70.0 5000 50 11 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/intruder/./intruder -a10 -l128 -n262144 -s1 -t20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/intruder-70-stm-baseline.txt
	
	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 70.0 5000 50 9 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/intruder/./intruder -a10 -l128 -n262144 -s1 -t20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/intruder-70-stm-h0.txt

	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 70.0 5000 50 10 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/intruder/./intruder  -a10 -l128 -n262144 -s1 -t20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/intruder-70-stm-h1.txt

	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 60.0 5000 50 11 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/intruder/./intruder -a10 -l128 -n262144 -s1 -t20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/intruder-60-stm-baseline.txt
	
	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 60.0 5000 50 9 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/intruder/./intruder -a10 -l128 -n262144 -s1 -t20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/intruder-60-stm-h0.txt

	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 60.0 5000 50 10 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/intruder/./intruder  -a10 -l128 -n262144 -s1 -t20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/intruder-60-stm-h1.txt

	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 50.0 5000 50 11 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/intruder/./intruder -a10 -l128 -n262144 -s1 -t20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/intruder-50-stm-baseline.txt
	
	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 50.0 5000 50 9 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/intruder/./intruder -a10 -l128 -n262144 -s1 -t20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/intruder-50-stm-h0.txt

	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 50.0 5000 50 10 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/intruder/./intruder  -a10 -l128 -n262144 -s1 -t20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/intruder-50-stm-h1.txt


	echo "Intruder completed"

	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 80.0 5000 50 11 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/genome/./genome -g36384 -s64 -n36777216 -t20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/genome-80-stm-baseline.txt
	
	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 80.0 5000 50 9 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/genome/./genome -g36384 -s64 -n36777216 -t20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/genome-80-stm-h0.txt

	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 80.0 5000 50 10 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/genome/./genome -g36384 -s64 -n36777216 -t20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/genome-80-stm-h1.txt


	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 70.0 5000 50 11 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/genome/./genome -g36384 -s64 -n36777216 -t20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/genome-70-stm-baseline.txt
	
	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 70.0 5000 50 9 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/genome/./genome -g36384 -s64 -n36777216 -t20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/genome-70-stm-h0.txt

	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 70.0 5000 50 10 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/genome/./genome -g36384 -s64 -n36777216 -t20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/genome-70-stm-h1.txt


	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 60.0 5000 50 11 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/genome/./genome -g36384 -s64 -n36777216 -t20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/genome-60-stm-baseline.txt
	
	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 60.0 5000 50 9 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/genome/./genome -g36384 -s64 -n36777216 -t20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/genome-60-stm-h0.txt

	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 60.0 5000 50 10 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/genome/./genome -g36384 -s64 -n36777216 -t20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/genome-60-stm-h1.txt


	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 50.0 5000 50 11 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/genome/./genome -g36384 -s64 -n36777216 -t20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/genome-50-stm-baseline.txt
	
	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 50.0 5000 50 9 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/genome/./genome -g36384 -s64 -n36777216 -t20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/genome-50-stm-h0.txt

	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 50.0 5000 50 10 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/genome/./genome -g36384 -s64 -n36777216 -t20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/genome-50-stm-h1.txt



	echo "Genome completed"

	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 80.0 25000 50 11 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/ssca2/./ssca2 -s21 -i1.0 -u1.0 -l3 -p3 -t20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/ssca2-80-stm-baseline.txt
	
	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 80.0 25000 50 9 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/ssca2/./ssca2 -s21 -i1.0 -u1.0 -l3 -p3 -t20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/ssca2-80-stm-h0.txt

	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 80.0 25000 50 10 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/ssca2/./ssca2 -s21 -i1.0 -u1.0 -l3 -p3 -t20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/ssca2-80-stm-h1.txt

	
	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 70.0 25000 50 11 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/ssca2/./ssca2 -s21 -i1.0 -u1.0 -l3 -p3 -t20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/ssca2-70-stm-baseline.txt
	
	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 70.0 25000 50 9 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/ssca2/./ssca2 -s21 -i1.0 -u1.0 -l3 -p3 -t20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/ssca2-70-stm-h0.txt

	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 70.0 25000 50 10 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/ssca2/./ssca2 -s21 -i1.0 -u1.0 -l3 -p3 -t20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/ssca2-70-stm-h1.txt


	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 60.0 25000 50 11 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/ssca2/./ssca2 -s21 -i1.0 -u1.0 -l3 -p3 -t20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/ssca2-60-stm-baseline.txt
	
	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 60.0 25000 50 9 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/ssca2/./ssca2 -s21 -i1.0 -u1.0 -l3 -p3 -t20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/ssca2-60-stm-h0.txt

	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 60.0 25000 50 10 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/ssca2/./ssca2 -s21 -i1.0 -u1.0 -l3 -p3 -t20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/ssca2-60-stm-h1.txt


	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 50.0 25000 50 11 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/ssca2/./ssca2 -s21 -i1.0 -u1.0 -l3 -p3 -t20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/ssca2-50-stm-baseline.txt
	
	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 50.0 25000 50 9 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/ssca2/./ssca2 -s21 -i1.0 -u1.0 -l3 -p3 -t20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/ssca2-50-stm-h0.txt

	/home/conoci/git/STMEnergyOptimization/./set_profile 4 0 50.0 25000 50 10 10 2 10 10 150 10.0 5 1.0
	numactl --physcpubind=+0-19 /home/conoci/git/STMEnergyOptimization/stamp/ssca2/./ssca2 -s21 -i1.0 -u1.0 -l3 -p3 -t20 >> bench/SBAC-PAD/results/heuristics_lock_comparison1/ssca2-50-stm-h1.txt

	echo "Ssca2 completed"

done

date

echo "Benchmark completed."