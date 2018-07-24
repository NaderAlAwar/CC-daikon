import sys
import glob
import subprocess

project = sys.argv[1]
project = project[0].upper() + project[1:] # capitalize first letter
version = sys.argv[2]
attribute = sys.argv[3] # can be pass weak or strong

traceFiles = glob.glob('/home/nader/Projects/499/'+project+'/v'+version+'/'+attribute+'/traces'+'/*.dtrace.gz')

for file in traceFiles:
	subprocess.call(['./'+project+'/daikon.sh', file])


