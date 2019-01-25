ITERATIONS=3
export STM_STATS=1

mkdir -p results/Figure3/transactional

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
			numactl --physcpubind=+0-$(( $2-1 )) stamp/intruder/./intruder -a10 -l128 -n262144 -s1 -t$j >> results/Figure3/transactional/intruder-$i-$j.txt	
		done
	done 
done

echo "Benchmark completed."
