#!/bin/bash

# 启动多个子脚本并行运行
bash ./bash_script/cal_mmpbsa_1.sh &
bash ./bash_script/cal_mmpbsa_2.sh &
bash ./bash_script/cal_mmpbsa_3.sh &
bash ./bash_script/cal_mmpbsa_4.sh &
bash ./bash_script/cal_mmpbsa_5.sh &
bash ./bash_script/cal_mmpbsa_6.sh &
bash ./bash_script/cal_mmpbsa_7.sh &
bash ./bash_script/cal_mmpbsa_8.sh &
bash ./bash_script/cal_mmpbsa_9.sh &
bash ./bash_script/cal_mmpbsa_10.sh &
bash ./bash_script/cal_mmpbsa_11.sh &
bash ./bash_script/cal_mmpbsa_12.sh &
bash ./bash_script/cal_mmpbsa_13.sh &
bash ./bash_script/cal_mmpbsa_14.sh &
bash ./bash_script/cal_mmpbsa_15.sh &
bash ./bash_script/cal_mmpbsa_16.sh &
bash ./bash_script/cal_mmpbsa_17.sh &
bash ./bash_script/cal_mmpbsa_18.sh &

# 等待所有子脚本完成
wait

echo "所有脚本已完成"

