from collections import OrderedDict
import argparse, sys

def main(argv):
	print "Hope_config writer started"

	#Read powercap_config file
	myvars = OrderedDict()
	with open("hope_config.txt") as myfile:
	    for line in myfile:
	        name, var = line.partition("=")[::2] #remove the = 
	        name = name.strip()
	        if var != "":
		        if name == "POWER_LIMIT" or name == "POWER_UNCORE" or name == "EXTRA_RANGE_PERCENTAGE" or name == "ENERGY_PER_TX_LIMIT" or name == "JUMP_PERCENTAGE" or name == "DETECTION_TP_THRESHOLD" or name == "DETECTION_PWR_THRESHOLD" or name == "HYSTERESIS":
		        	myvars[name] = float(var)
		        else:
		        	myvars[name] = int(var)

	# Parse command line parameters 
	parser = argparse.ArgumentParser()
	parser.add_argument('-heuristic_mode', dest='h')
	parser.add_argument('-commits_round', dest='c')
	parser.add_argument('-detection_mode', dest='d')
	parser.add_argument('-power_limit', dest='p')
	parser.add_argument('-exploit_steps', dest='e')
	parser.add_argument('-power_uncore', dest='pu')
	parser.add_argument('-core_packing', dest='cp')
	parser.add_argument('-window_size', dest='w')
	args = parser.parse_args()

	# Set myvars based on commnad line parameters 
	if not (args.h is None):
		myvars["HEURISTIC_MODE"] = int(args.h)
		print "Setting HEURISTIC_MODE to " + args.h

	if not (args.c is None):
		myvars["COMMITS_ROUND"] = int(args.c)
		print "Setting COMMITS_ROUND to " + args.c

	if not (args.d is None):
		myvars["DETECTION_MODE"] = int(args.d)
		print "Setting DETECTION_MODE to" + args.d
	
	if not (args.p is None):
		myvars["POWER_LIMIT"] = float(args.p)	
		print "Setting POWER_LIMIT to " + args.p
	
	if not (args.e is None):
		myvars["EXPLOIT_STEPS"] = int(args.e)
		print "Setting EXPLOIT_STEPS to " + args.e
	
	if not (args.pu is None):
		myvars["POWER_UNCORE"] = float(args.pu)
		print "Setting POWER_UNCORE to " + args.pu
	
	if not (args.cp is None):
		myvars["CORE_PACKING"] = int(args.cp)
		print "Setting CORE_PACKING to " + args.cp
	
	if not (args.w is None):
		myvars["WINDOW_SIZE"] = int(args.w)
		print "Setting WINDOW_SIZE to " + args.w

	with open("hope_config.txt", 'w') as writeFile:
		for key, value in myvars.items():
			writeFile.write(str(key)+"="+str(value)+"\n")

	print "Writing on hope_config.txt"


if __name__ == "__main__":
   main(sys.argv[1:])