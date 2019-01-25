ITERATIONS=5
export STM_STATS=1

mkdir -p results/Figure6/
		
for b in $(seq 1 $ITERATIONS)	
do	
	echo "Iteration $b"

	./set_profile $(( $1/2 )) 0 $2 5000 50 11 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/vacation/./vacation -n4 -q60 -u90 -r1048576 -t20194304 -c$1 >> results/Figure6/vacation-$2-lock-baseline.txt
	
	./set_profile $(( $1/2 )) 0 $2 5000 50 13 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/vacation/./vacation -n4 -q60 -u90 -r1048576 -t20194304 -c$1 >> results/Figure6/vacation-$2-lock-dualphase.txt

	./set_profile $(( $1/2 )) 0 $2 5000 50 9 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/vacation/./vacation -n4 -q60 -u90 -r1048576 -t20194304 -c$1 >> results/Figure6/vacation-$2-lock-basic.txt

	./set_profile $(( $1/2 )) 0 $2 5000 50 10 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/vacation/./vacation -n4 -q60 -u90 -r1048576 -t20194304 -c$1 >> results/Figure6/vacation-$2-lock-enhanced.txt


	./set_profile $(( $1/2 )) 0 $3 5000 50 11 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/vacation/./vacation -n4 -q60 -u90 -r1048576 -t20194304 -c$1 >> results/Figure6/vacation-$3-baseline.txt
	
	./set_profile $(( $1/2 )) 0 $3 5000 50 13 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/vacation/./vacation -n4 -q60 -u90 -r1048576 -t20194304 -c$1 >> results/Figure6/vacation-$3-dualphase.txt

	./set_profile $(( $1/2 )) 0 $3 5000 50 9 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/vacation/./vacation -n4 -q60 -u90 -r1048576 -t20194304 -c$1 >> results/Figure6/vacation-$3-basic.txt

	./set_profile $(( $1/2 )) 0 $3 5000 50 10 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/vacation/./vacation -n4 -q60 -u90 -r1048576 -t20194304 -c$1 >> results/Figure6/vacation-$3-enhanced.txt


	./set_profile $(( $1/2 )) 0 $4 5000 50 11 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/vacation/./vacation -n4 -q60 -u90 -r1048576 -t20194304 -c$1 >> results/Figure6/vacation-50-$4-baseline.txt

	./set_profile $(( $1/2 )) 0 $4 5000 50 13 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/vacation/./vacation -n4 -q60 -u90 -r1048576 -t20194304 -c$1 >> results/Figure6/vacation-50-$4-dualphase.txt
	
	./set_profile $(( $1/2 )) 0 $4 5000 50 9 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/vacation/./vacation -n4 -q60 -u90 -r1048576 -t20194304 -c$1 >> results/Figure6/vacation-50-$4-basic.txt

	./set_profile $(( $1/2 )) 0 $4 5000 50 10 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/vacation/./vacation -n4 -q60 -u90 -r1048576 -t20194304 -c$1 >> results/Figure6/vacation-50-$4-enhanced.txt

	echo "Vacation completed"

	
	./set_profile $(( $1/2 )) 0 $2 10000 50 11 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/intruder/./intruder -a10 -l128 -n262144 -s1 -t$1 >> results/Figure6/intruder-$2-lock-baseline.txt

	./set_profile $(( $1/2 )) 0 $2 10000 50 13 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/intruder/./intruder -a10 -l128 -n262144 -s1 -t$1 >> results/Figure6/intruder-$2-lock-dualphase.txt
	
	./set_profile $(( $1/2 )) 0 $2 10000 50 9 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/intruder/./intruder -a10 -l128 -n262144 -s1 -t$1 >> results/Figure6/intruder-$2-lock-basic.txt

	./set_profile $(( $1/2 )) 0 $2 10000 50 10 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/intruder/./intruder -a10 -l128 -n262144 -s1 -t$1 >> results/Figure6/intruder-$2-lock-enhanced.txt


	./set_profile $(( $1/2 )) 0 $3 10000 50 11 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/intruder/./intruder -a10 -l128 -n262144 -s1 -t$1 >> results/Figure6/intruder-$3-baseline.txt
	
	./set_profile $(( $1/2 )) 0 $3 10000 50 13 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/intruder/./intruder -a10 -l128 -n262144 -s1 -t$1 >> results/Figure6/intruder-$3-dualphase.txt

	./set_profile $(( $1/2 )) 0 $3 10000 50 9 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/intruder/./intruder -a10 -l128 -n262144 -s1 -t$1 >> results/Figure6/intruder-$3-basic.txt

	./set_profile $(( $1/2 )) 0 $3 10000 50 10 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/intruder/./intruder  -a10 -l128 -n262144 -s1 -t$1 >> results/Figure6/intruder-$3-enhanced.txt


	./set_profile $(( $1/2 )) 0 $4 10000 50 11 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/intruder/./intruder -a10 -l128 -n262144 -s1 -t$1 >> results/Figure6/intruder-50-$4-baseline.txt
	
	./set_profile $(( $1/2 )) 0 $4 10000 50 13 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/intruder/./intruder -a10 -l128 -n262144 -s1 -t$1 >> results/Figure6/intruder-50-$4-dualphase.txt

	./set_profile $(( $1/2 )) 0 $4 10000 50 9 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/intruder/./intruder -a10 -l128 -n262144 -s1 -t$1 >> results/Figure6/intruder-50-$4-basic.txt

	./set_profile $(( $1/2 )) 0 $4 10000 50 10 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/intruder/./intruder  -a10 -l128 -n262144 -s1 -t$1 >> results/Figure6/intruder-50-$4-enhanced.txt


	echo "Intruder completed"

	./set_profile $(( $1/2 )) 0 $2 5000 50 11 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/genome/./genome -g36384 -s64 -n56777216 -t$1 >> results/Figure6/genome-$2-lock-baseline.txt
	
	./set_profile $(( $1/2 )) 0 $2 5000 50 13 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/genome/./genome -g36384 -s64 -n56777216 -t$1 >> results/Figure6/genome-$2-lock-dualphase.txt

	./set_profile $(( $1/2 )) 0 $2 5000 50 9 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/genome/./genome -g36384 -s64 -n56777216 -t$1 >> results/Figure6/genome-$2-lock-basic.txt

	./set_profile $(( $1/2 )) 0 $2 5000 50 10 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/genome/./genome -g36384 -s64 -n56777216 -t$1 >> results/Figure6/genome-$2-lock-enhanced.txt


	./set_profile $(( $1/2 )) 0 $3 5000 50 11 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/genome/./genome -g36384 -s64 -n56777216 -t$1 >> results/Figure6/genome-$3-baseline.txt
	
	./set_profile $(( $1/2 )) 0 $3 5000 50 13 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/genome/./genome -g36384 -s64 -n56777216 -t$1 >> results/Figure6/genome-$3-dualphase.txt

	./set_profile $(( $1/2 )) 0 $3 5000 50 9 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/genome/./genome -g36384 -s64 -n56777216 -t$1 >> results/Figure6/genome-$3-basic.txt

	./set_profile $(( $1/2 )) 0 $3 5000 50 10 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/genome/./genome -g36384 -s64 -n56777216 -t$1 >> results/Figure6/genome-$3-enhanced.txt


	./set_profile $(( $1/2 )) 0 $4 5000 50 11 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/genome/./genome -g36384 -s64 -n56777216 -t$1 >> results/Figure6/genome-50-$4-baseline.txt
	
	./set_profile $(( $1/2 )) 0 $4 5000 50 13 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/genome/./genome -g36384 -s64 -n56777216 -t$1 >> results/Figure6/genome-50-$4-dualphase.txt

	./set_profile $(( $1/2 )) 0 $4 5000 50 9 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/genome/./genome -g36384 -s64 -n56777216 -t$1 >> results/Figure6/genome-50-$4-basic.txt

	./set_profile $(( $1/2 )) 0 $4 5000 50 10 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/genome/./genome -g36384 -s64 -n56777216 -t$1 >> results/Figure6/genome-50-$4-enhanced.txt

	echo "Genome completed"

	./set_profile $(( $1/2 )) 0 $2 20000 50 11 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/ssca2/./ssca2 -s21 -i1.0 -u1.0 -l3 -p3 -t$1 >> results/Figure6/ssca2-$2-lock-baseline.txt

	./set_profile $(( $1/2 )) 0 $2 20000 50 13 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/ssca2/./ssca2 -s21 -i1.0 -u1.0 -l3 -p3 -t$1 >> results/Figure6/ssca2-$2-lock-dualphase.txt
	
	./set_profile $(( $1/2 )) 0 $2 20000 50 9 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/ssca2/./ssca2 -s21 -i1.0 -u1.0 -l3 -p3 -t$1 >> results/Figure6/ssca2-$2-lock-basic.txt

	./set_profile $(( $1/2 )) 0 $2 20000 50 10 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/ssca2/./ssca2 -s21 -i1.0 -u1.0 -l3 -p3 -t$1 >> results/Figure6/ssca2-$2-lock-enhanced.txt


	./set_profile $(( $1/2 )) 0 $3 20000 50 11 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/ssca2/./ssca2 -s21 -i1.0 -u1.0 -l3 -p3 -t$1 >> results/Figure6/ssca2-$3-baseline.txt

	./set_profile $(( $1/2 )) 0 $3 20000 50 13 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/ssca2/./ssca2 -s21 -i1.0 -u1.0 -l3 -p3 -t$1 >> results/Figure6/ssca2-$3-dualphase.txt
	
	./set_profile $(( $1/2 )) 0 $3 20000 50 9 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/ssca2/./ssca2 -s21 -i1.0 -u1.0 -l3 -p3 -t$1 >> results/Figure6/ssca2-$3-basic.txt

	./set_profile $(( $1/2 )) 0 $3 20000 50 10 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/ssca2/./ssca2 -s21 -i1.0 -u1.0 -l3 -p3 -t$1 >> results/Figure6/ssca2-$3-enhanced.txt


	./set_profile $(( $1/2 )) 0 $4 20000 50 11 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/ssca2/./ssca2 -s21 -i1.0 -u1.0 -l3 -p3 -t$1 >> results/Figure6/ssca2-50-$4-baseline.txt

	./set_profile $(( $1/2 )) 0 $4 20000 50 13 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/ssca2/./ssca2 -s21 -i1.0 -u1.0 -l3 -p3 -t$1 >> results/Figure6/ssca2-50-$4-dualphase.txt
	
	./set_profile $(( $1/2 )) 0 $4 20000 50 9 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/ssca2/./ssca2 -s21 -i1.0 -u1.0 -l3 -p3 -t$1 >> results/Figure6/ssca2-50-$4-basic.txt

	./set_profile $(( $1/2 )) 0 $4 20000 50 10 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/ssca2/./ssca2 -s21 -i1.0 -u1.0 -l3 -p3 -t$1 >> results/Figure6/ssca2-50-$4-enhanced.txt

	echo "Ssca2 complete"


done

date

echo "Benchmark completed."
