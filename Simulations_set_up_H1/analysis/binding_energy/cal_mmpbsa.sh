#!/bin/bash
# NaCl_Box_30 NaCl_Box_50 CA_15mM_1264_Box_30 CA_15mM_1264_Box_50 MG_15mM_1264_Box_30 MG_15mM_1264_Box_50
for file in  S103F K63E K74N R78H S57P wild
do 
    for run in run1 run2 run3
    do
        mkdir ${file}_${run}
        #cd ${file}_${run}
        python ../MMPBSA.py -O -i ../mmpbsa.in -cp ../../${file}_rw.prmtop  -rp ./${file}_DNA_rw.prmtop  -lp ./${file}_histone_rw.prmtop  -y ../../${file}_${run}_rw.nc
        #cd ..
        
    done
done
        



