import sys
import pandas as pd





projectName = 'Chart'
allTests = []

df = pd.read_csv(projectName + '_output.csv')
data = df[df['FAIL'] == False]
data = data[['TESTNAME', 'VERSION']]
data.to_csv('daikon.csv')