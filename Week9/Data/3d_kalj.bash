for i in 1.5 1.0 0.9 0.8 0.7 0.65 0.6 0.55 0.5 0.475
do
	mpirun lmp -var configfile ../Inputs/n360/kalj_n360_create.lmp -var id 1 -in ../Inputs/create_3d_binary.lmp
	mpirun lmp -var configfile ../Inputs/n360/kalj_n360_T1.5.lmp -var id 1 -in ../Inputs/anneal_3d_binary.lmp
	mpirun lmp -var configfile ../Inputs/n360/kalj_n360_T1.lmp -var id 1 -in ../Inputs/anneal_3d_binary.lmp
done
~         
