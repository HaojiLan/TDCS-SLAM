
#!/bin/bash
path='../..'

pathTUM_VI='....../dataset/TUM' # the path to TUM-VI dataset


pathEuRoC='....../dataset/EuRoC' # the path to EuRoC dataset

mkdir result/EuRoC
cd result/EuRoC

list0='MH01 MH02 MH03 MH04 MH05 V101 V102 V103 V201 V202 V203'

for file in $list0
do
	for i in $(seq 1 5)
	do
		./"$path"/test/mono_inertial_euroc "$path"/Vocabulary/ORBvoc.txt "$path"/test/EuRoC.yaml "$pathEuRoC"/$file "$path"/test/EuRoC_TimeStamps/${file}.txt ${file}_$i
	done
done


cd ../..


mkdir -p result/TUM
cd result/TUM

list1='corridor1 corridor2 corridor3 corridor4 corridor5 magistrale1 magistrale2 magistrale3 magistrale4 magistrale5 magistrale6 room1 room2 room3 room4 room5 room6 slides1 slides2 slides3'
for file in $list1;
do
	for i in $(seq 1 5);
	do
		./"$path"/test/mono_inertial_tum_vi "$path"/Vocabulary/ORBvoc.txt "$path"/test/TUM-VI.yaml "$pathTUM_VI"/dataset-${file}_512_16/mav0/cam0/data "$path"/test/TUM_TimeStamps/dataset-${file}_512.txt "$path"/test/TUM_IMU/dataset-${file}_512.txt ${file}_$i
	done
done


list2 = "outdoors1 outdoors2 outdoors3 outdoors4 outdoors5 outdoors6 outdoors7"
for file in $list2;
do
	for i in $(seq 1 5);
	do
		./"$path"/test/mono_inertial_tum_vi "$path"/Vocabulary/ORBvoc.txt "$path"/test/TUM-VI_far.yaml "$pathTUM_VI"/dataset-${file}_512_16/mav0/cam0/data "$path"/test/TUM_TimeStamps/dataset-${file}_512.txt "$path"/test/TUM_IMU/dataset-${file}_512.txt ${file}_$i
	done
done

