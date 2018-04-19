import os
import subprocess

if __name__ == "__main__":
	for i in range(10, 150):
		dircreate = "mkdir dim_"+str(i)
		os.system(dircreate)
		for j in range(100):
			nazwa = "dim_" + str(i) + "_seed_" + str(j)
			cmd = "./generate_random --dim "+str(i)+" --seed " + str(j) + " > " + nazwa
			os.system(cmd)
			copy = "mv " + nazwa + " dim_"+str(i)
			os.system(copy)
