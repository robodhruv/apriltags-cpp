## AprilTags C++ library

Detect April tags (2D bar codes) in images; reports unique ID of each
detection, and optionally its position and orientation relative to a
calibrated camera.

See `examples/apriltags_demo.cpp` for a simple example that detects
April tags (see tags/pdf/tag36h11.pdf) in laptop or webcam images and
marks any tags in the live image.

Ubuntu dependencies:

`sudo apt-get install subversion cmake libopencv-dev libeigen3-dev libv4l-dev`

Mac dependencies:

`sudo port install pkgconfig opencv eigen3`

Uses the pods build system in connection with cmake, see:
http://sourceforge.net/p/pods/

_Michael Kaess_
October 2012

----------------------------

AprilTags were developed by Professor Edwin Olson of the University of
Michigan.  His Java implementation is available on this web site:
  http://april.eecs.umich.edu.

Olson's Java code was ported to C++ and integrated into the Tekkotsu
framework by Jeffrey Boyland and David Touretzky.

See this Tekkotsu wiki article for additional links and references:
  http://wiki.tekkotsu.org/index.php/AprilTags

----------------------------

This C++ code was further modified by
Michael Kaess (kaess@mit.edu) and Hordur Johannson (hordurj@mit.edu)
and the code has been released under the LGPL 2.1 license.

----------------------------

This C++ code was further modified by [Dhruv Ilesh Shah](https://home.iitb.ac.in/~dhruv.shah/) (dhruv.shah@iitb.ac.in) to be made compatible with the latest version of OpenCV (as of June 2018). This is a fix to the error shown below (when tags are detected):

```
0 tags detected:
0 tags detected:
  21.1612 fps
0 tags detected:
0 tags detected:
0 tags detected:
1 tags detected:
OpenCV Error: Assertion failed (mtype == type0 || (((((mtype) & ((512 - 1) << 3)) >> 3) + 1) == 1 && ((1 << type0) & fixedDepthMask) != 0)) in create, file /tmp/binarydeb/ros-kinetic-opencv3-3.3.1/modules/core/src/matrix.cpp, line 2542
terminate called after throwing an instance of 'cv::Exception'
  what():  /tmp/binarydeb/ros-kinetic-opencv3-3.3.1/modules/core/src/matrix.cpp:2542: error: (-215) mtype == type0 || (((((mtype) & ((512 - 1) << 3)) >> 3) + 1) == 1 && ((1 << type0) & fixedDepthMask) != 0) in function create

  Id: 0 (Hamming: 0)Aborted (core dumped)


```
