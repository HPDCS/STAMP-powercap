ITERATIONS=5
export STM_STATS=1

mkdir -p results/Figure7/

for b in $(seq 1 $ITERATIONS)	
do	
	echo "Iteration $b"

	./set_profile $(( $1/2 )) 0 $2 5000 50 11 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/vacation/./vacation -n4 -q60 -u90 -r1048576 -t40194304 -c$1 >> results/Figure7/vacation-$2-transactional-baseline.txt

	./set_profile $(( $1/2 )) 0 $2 5000 50 13 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/vacation/./vacation -n4 -q60 -u90 -r1048576 -t40194304 -c$1 >> results/Figure7/vacation-$2-transactional-dualphase.txt

	./set_profile $(( $1/2 )) 0 $2 5000 50 9 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/vacation/./vacation -n4 -q60 -u90 -r1048576 -t40194304 -c$1 >> results/Figure7/vacation-$2-transactional-basic.txt

	./set_profile $(( $1/2 )) 0 $2 5000 50 10 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/vacation/./vacation -n4 -q60 -u90 -r1048576 -t40194304 -c$1 >> results/Figure7/vacation-$2-transactional-enhanced.txt


	./set_profile $(( $1/2 )) 0 $3 5000 50 11 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/vacation/./vacation -n4 -q60 -u90 -r1048576 -t40194304 -c$1 >> results/Figure7/vacation-$3-transactional-baseline.txt

	./set_profile $(( $1/2 )) 0 $3 5000 50 13 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/vacation/./vacation -n4 -q60 -u90 -r1048576 -t40194304 -c$1 >> results/Figure7/vacation-$3-transactional-dualphase.txt

	./set_profile $(( $1/2 )) 0 $3 5000 50 9 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/vacation/./vacation -n4 -q60 -u90 -r1048576 -t40194304 -c$1 >> results/Figure7/vacation-$3-transactional-basic.txt

	./set_profile $(( $1/2 )) 0 $3 5000 50 10 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/vacation/./vacation -n4 -q60 -u90 -r1048576 -t40194304 -c$1 >> results/Figure7/vacation-$3-transactional-enhanced.txt


	./set_profile $(( $1/2 )) 0 $4 5000 50 11 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/vacation/./vacation -n4 -q60 -u90 -r1048576 -t40194304 -c$1 >> results/Figure7/vacation-$4-transactional-baseline.txt

	./set_profile $(( $1/2 )) 0 $4 5000 50 13 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/vacation/./vacation -n4 -q60 -u90 -r1048576 -t40194304 -c$1 >> results/Figure7/vacation-$4-transactional-dualphase.txt

	./set_profile $(( $1/2 )) 0 $4 5000 50 9 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/vacation/./vacation -n4 -q60 -u90 -r1048576 -t40194304 -c$1 >> results/Figure7/vacation-$4-transactional-basic.txt

	./set_profile $(( $1/2 )) 0 $4 5000 50 10 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/vacation/./vacation -n4 -q60 -u90 -r1048576 -t40194304 -c$1 >> results/Figure7/vacation-$4-transactional-enhanced.txt


	echo "Vacation completed"


	./set_profile $(( $1/2 )) 0 $2 5000 50 11 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/intruder/./intruder  -a10 -l128 -n262144 -s1 -t$1 >> results/Figure7/intruder-$2-transactional-baseline.txt

	./set_profile $(( $1/2 )) 0 $2 5000 50 13 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/intruder/./intruder  -a10 -l128 -n262144 -s1 -t$1 >> results/Figure7/intruder-$2-transactional-dualphase.txt

	./set_profile $(( $1/2 )) 0 $2 5000 50 9 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/intruder/./intruder  -a10 -l128 -n262144 -s1 -t$1 >> results/Figure7/intruder-$2-transactional-basic.txt

	./set_profile $(( $1/2 )) 0 $2 5000 50 10 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/intruder/./intruder  -a10 -l128 -n262144 -s1 -t$1 >> results/Figure7/intruder-$2-transactional-enhanced.txt



	./set_profile $(( $1/2 )) 0 $3 5000 50 11 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/intruder/./intruder  -a10 -l128 -n262144 -s1 -t$1 >> results/Figure7/intruder-$3-transactional-baseline.txt

	./set_profile $(( $1/2 )) 0 $3 5000 50 13 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/intruder/./intruder  -a10 -l128 -n262144 -s1 -t$1 >> results/Figure7/intruder-$3-transactional-dualphase.txt

	./set_profile $(( $1/2 )) 0 $3 5000 50 9 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/intruder/./intruder  -a10 -l128 -n262144 -s1 -t$1 >> results/Figure7/intruder-$3-transactional-basic.txt

	./set_profile $(( $1/2 )) 0 $3 5000 50 10 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/intruder/./intruder  -a10 -l128 -n262144 -s1 -t$1 >> results/Figure7/intruder-$3-transactional-enhanced.txt



	./set_profile $(( $1/2 )) 0 $4 5000 50 11 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/intruder/./intruder  -a10 -l128 -n262144 -s1 -t$1 >> results/Figure7/intruder-$4-transactional-baseline.txt

	./set_profile $(( $1/2 )) 0 $4 5000 50 13 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/intruder/./intruder  -a10 -l128 -n262144 -s1 -t$1 >> results/Figure7/intruder-$4-transactional-dualphase.txt

	./set_profile $(( $1/2 )) 0 $4 5000 50 9 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/intruder/./intruder  -a10 -l128 -n262144 -s1 -t$1 >> results/Figure7/intruder-$4-transactional-basic.txt

	./set_profile $(( $1/2 )) 0 $4 5000 50 10 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/intruder/./intruder  -a10 -l128 -n262144 -s1 -t$1 >> results/Figure7/intruder-$4-transactional-enhanced.txt


	echo "Intruder completed"

	./set_profile $(( $1/2 )) 0 $2 3000 50 11 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/genome/./genome -g56384 -s128 -n167772160 -t$1 >> results/Figure7/genome-$2-transactional-baseline.txt

	./set_profile $(( $1/2 )) 0 $2 3000 50 13 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/genome/./genome -g56384 -s128 -n167772160 -t$1 >> results/Figure7/genome-$2-transactional-dualphase.txt

	./set_profile $(( $1/2 )) 0 $2 3000 50 9 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/genome/./genome -g56384 -s128 -n167772160 -t$1 >> results/Figure7/genome-$2-transactional-basic.txt

	./set_profile $(( $1/2 )) 0 $2 3000 50 10 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/genome/./genome -g56384 -s128 -n167772160 -t$1 >> results/Figure7/genome-$2-transactional-enhanced.txt



	./set_profile $(( $1/2 )) 0 $3 3000 50 11 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/genome/./genome -g56384 -s128 -n167772160 -t$1 >> results/Figure7/genome-$3-transactional-baseline.txt
	
	./set_profile $(( $1/2 )) 0 $3 3000 50 13 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/genome/./genome -g56384 -s128 -n167772160 -t$1 >> results/Figure7/genome-$3-transactional-dualphase.txt

	./set_profile $(( $1/2 )) 0 $3 3000 50 9 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/genome/./genome -g56384 -s128 -n167772160 -t$1 >> results/Figure7/genome-$3-transactional-basic.txt

	./set_profile $(( $1/2 )) 0 $3 3000 50 10 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/genome/./genome -g56384 -s128 -n167772160 -t$1 >> results/Figure7/genome-$3-transactional-enhanced.txt



	./set_profile $(( $1/2 )) 0 $4 3000 50 11 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/genome/./genome -g56384 -s128 -n167772160 -t$1 >> results/Figure7/genome-$4-transactional-baseline.txt

	./set_profile $(( $1/2 )) 0 $4 3000 50 13 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/genome/./genome -g56384 -s128 -n167772160 -t$1 >> results/Figure7/genome-$4-transactional-dualphase.txt

	./set_profile $(( $1/2 )) 0 $4 3000 50 9 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/genome/./genome -g56384 -s128 -n167772160 -t$1 >> results/Figure7/genome-$4-transactional-basic.txt

	./set_profile $(( $1/2 )) 0 $4 3000 50 10 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/genome/./genome -g56384 -s128 -n167772160 -t$1 >> results/Figure7/genome-$4-transactional-enhanced.txt


	echo "Genome completed"


	./set_profile $(( $1/2 )) 0 $2 20000 50 11 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/ssca2/./ssca2 -s22 -i1.0 -u1.0 -l3 -p3 -t$1 >> results/Figure7/ssca2-$2-transactional-baseline.txt

	./set_profile $(( $1/2 )) 0 $2 20000 50 13 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/ssca2/./ssca2 -s22 -i1.0 -u1.0 -l3 -p3 -t$1 >> results/Figure7/ssca2-$2-transactional-dualphase.txt
	
	./set_profile $(( $1/2 )) 0 $2 20000 50 9 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/ssca2/./ssca2 -s22 -i1.0 -u1.0 -l3 -p3 -t$1 >> results/Figure7/ssca2-$2-transactional-basic.txt

	./set_profile $(( $1/2 )) 0 $2 20000 50 10 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/ssca2/./ssca2 -s22 -i1.0 -u1.0 -l3 -p3 -t$1 >> results/Figure7/ssca2-$2-transactional-enhanced.txt


	./set_profile $(( $1/2 )) 0 $3 20000 50 11 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/ssca2/./ssca2 -s22 -i1.0 -u1.0 -l3 -p3 -t$1 >> results/Figure7/ssca2-$3-transactional-baseline.txt

	./set_profile $(( $1/2 )) 0 $3 20000 50 13 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/ssca2/./ssca2 -s22 -i1.0 -u1.0 -l3 -p3 -t$1 >> results/Figure7/ssca2-$3-transactional-dualphase.txt
	
	./set_profile $(( $1/2 )) 0 $3 20000 50 9 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/ssca2/./ssca2 -s22 -i1.0 -u1.0 -l3 -p3 -t$1 >> results/Figure7/ssca2-$3-transactional-basic.txt

	./set_profile $(( $1/2 )) 0 $3 20000 50 10 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/ssca2/./ssca2 -s22 -i1.0 -u1.0 -l3 -p3 -t$1 >> results/Figure7/ssca2-$3-transactional-enhanced.txt


	./set_profile $(( $1/2 )) 0 $4 20000 50 11 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/ssca2/./ssca2 -s22 -i1.0 -u1.0 -l3 -p3 -t$1 >> results/Figure7/ssca2-$4-transactional-baseline.txt

	./set_profile $(( $1/2 )) 0 $4 20000 50 13 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/ssca2/./ssca2 -s22 -i1.0 -u1.0 -l3 -p3 -t$1 >> results/Figure7/ssca2-$4-transactional-dualphase.txt
	
	./set_profile $(( $1/2 )) 0 $4 20000 50 9 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/ssca2/./ssca2 -s22 -i1.0 -u1.0 -l3 -p3 -t$1 >> results/Figure7/ssca2-$4-transactional-basic.txt

	./set_profile $(( $1/2 )) 0 $4 20000 50 10 10 2 10 10 150 10.0 10 1.0
	numactl --physcpubind=+0-$(( $1-1 )) stamp/ssca2/./ssca2 -s22 -i1.0 -u1.0 -l3 -p3 -t$1 >> results/Figure7/ssca2-$4-transactional-enhanced.txt

	echo "Ssca2 completed"


done

date

echo "Benchmark completed."
