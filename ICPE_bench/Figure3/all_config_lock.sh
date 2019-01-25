ITERATIONS=2
export STM_STATS=1

mkdir -p results/Figure3/lock

for i in $(seq 0 $1)
do
	for j in $(seq 1 $2)
	do
		./set_profile $j $i 250.0 10000 50 8 10 0 10 10 150 10.0 10 1.0
		for b in $(seq 1 $ITERATIONS)	
		do	
			echo "P-state=$i"
			echo  "Threads=$j"
	        echo "Iteration $b"
			echo ""
			numactl --physcpubind=+0-$(( $2-1 )) stamp/vacation/./vacation -n4 -q60 -u90 -r1048576 -t119430 -c$j >> results/Figure3/lock/vacation-$i-$j.txt
			numactl --physcpubind=+0-$(( $2-1 )) stamp/intruder/./intruder -a20 -l16 -n127680 -s1 -t$j >> results/Figure3/lock/intruder-$i-$j.txt
			numactl --physcpubind=+0-$(( $2-1 )) stamp/genome/./genome -s64 -g26384 -n16777216 -t$j >> results/Figure3/lock/genome-$i-$j.txt
			numactl --physcpubind=+0-$(( $2-1 )) stamp/ssca2/./ssca2 -s16 -i1.0 -u1.0 -l3 -p3 -t$j >> results/Figure3/lock/ssca2-$i-$j.txt
		done
	done 
done

echo "Benchmark completed."
