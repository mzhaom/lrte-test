RELEASE=v2.0_0
for name in runtime headers; do
    package=lrtev2-${name}_1.0-0_amd64.deb
    wget https://github.com/mzhaom/lrte/releases/download/${RELEASE}/${package}
    sudo dpkg -i ${package}
done

GCC=lrtev2-crosstoolv2-gcc-4.9_1.0-8.228158svn_amd64.deb
CLANG=lrtev2-crosstoolv2-clang-3.7_1.0-8.248635svn_amd64.deb
for package in $GCC $CLANG; do
    wget https://github.com/mzhaom/lrte/releases/download/${RELEASE}/${package}
    sudo dpkg -i ${package}
done
