import subprocess
import sys

project = sys.argv[1] 
project = project[0].upper() + project[1:] # capitalize first letter
version = sys.argv[2]
attribute = sys.argv[3]


def generateDynComp(project, version, attribute):
	# project is Chart, ...
	# version is an integer
	# attribute is pass, strong or weak
	
	with open("/home/user/Projects/499/" + project + "/v" + str(version) + "/" + attribute + ".txt") as file: # read all the tests
		passingTests = file.read().splitlines()
	for test in passingTests:
		subprocess.call(['/home/user/Projects/499/' + project + '/dynComp.sh', test, test, str(version), '/home/user/Projects/499/' + project + '/v' + str(version) + '/' + attribute + '/dynComp/'])
		# print(['./' + project + '/dynComp.sh', test, test, str(version), '/home/nader/Projects/499/' + project + '/v' + str(version) + '/' + attribute + '/dynComp/'])

generateDynComp(project, version, attribute)

