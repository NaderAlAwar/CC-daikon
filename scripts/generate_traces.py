import subprocess
import sys

project = sys.argv[1] 
project = project[0].upper() + project[1:] # capitalize first letter
version = sys.argv[2]
attribute = sys.argv[3]


def generateTraces(project, version, attribute):
	# project is Chart, ...
	# version is an integer
	# attribute is pass, strong or weak

	with open("/home/user/Projects/499/" + project + "/v" + str(version) + "/" + attribute + ".txt") as file: # read all the tests
		passingTests = file.read().splitlines()
	for test in passingTests:
		subprocess.call(['/home/user/Projects/499/' + project + '/chicory.sh', test, '/home/user/Projects/499/' + project + '/v' + str(version) + '/' + attribute + '/dynComp/' + test + '.decls-DynComp', str(version),'/home/user/Projects/499/' + project + '/v' + str(version) + '/' + attribute + '/traces'])

generateTraces(project, version, attribute)
