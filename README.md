# TDCS-SLAM

### V1.0, August 18, 2023

TDCS-SLAM, based on [ORB-SLAM3](https://github.com/UZ-SLAMLab/ORB_SLAM3), is  an efficient monocular visual-inertial SLAM method with two-stage descriptors computation strategy.

# 1. License

TDCS-SLAM  is released under [GPLv3 license](https://github.com/HaojiLan/TDCS-SLAM/LICENSE).

# 2. Prerequisites
We have tested TDCS-SLAM in laptop with AMD Ryzen 7 6800H CPU, at 3.2 GHz, **Ubuntu 18.04**. 

Dowload and install [Pangolin](https://github.com/stevenlovegrove/Pangolin), [OpenCV](http://opencv.org)(tested wiht OpenCV 3.2.0), Eigen3 (tested with 3.3.4), .


# 3. Building ORB-SLAM3 library and examples

Clone the repository:
```
git clone https://github.com/HaojiLan/TDCS_SLAM.git
```

```
cd TDCS-SLAM
chmod +x build.sh
./build.sh
```

# 4. Test
Download [EuRoC dataset](http://projects.asl.ethz.ch/datasets/doku.php?id=kmavvisualinertialdatasets) and [TUM-VI dataset](https://vision.in.tum.de/data/datasets/visual-inertial-dataset), then revise corresponding path in `test.sh`. Execute:
```
sh test.sh
```

# 5. Evaluation

We repeate five times for every sequence, and then calculate average value. [evo](https://github.com/MichaelGrupp/evo) is used for acuuracy evolution.
