FROM aerath/docker-android
MAINTAINER Aerath44 <dmcraft@laposte.net>

RUN cd android-sdk-linux/tools/;./android -s update sdk --no-ui --filter 1,2,3,10,19,20,22,40,42,60,61,65,79,80,102,103,112,113,118,119,120,121,122,123,124
RUN mkdir android-x86;mkdir android-x86/android-4.4.4_r2;cd android-x86/android-4.4.4_r2
RUN ~/bin/repo init -u http://git.android-x86.org/manifest -b android-4.4.4_r2
RUN ~/bin/repo sync
RUN make -j4 iso_img
RUN make kernel
